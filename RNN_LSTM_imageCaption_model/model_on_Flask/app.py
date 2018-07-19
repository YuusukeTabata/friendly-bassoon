import os
import inference
from flask import Flask, render_template, request, redirect, url_for, send_from_directory
from werkzeug import secure_filename
app = Flask(__name__)

UPLOAD_FOLDER = './upload/'
ALLOWED_EXTENSIONS = set(['png', 'jpg', 'gif'])
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['SECRET_KEY'] = os.urandom(24)


def allowed_file(filename):
    return '.' in filename and \
        filename.rsplit('.', 1)[1] in ALLOWED_EXTENSIONS


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/send', methods=['GET', 'POST'])
def send():
    if request.method == 'POST':
        img_file = request.files['img_file']
        if img_file and allowed_file(img_file.filename):
            filename = secure_filename(img_file.filename)
            img_file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
            img_url = UPLOAD_FOLDER + filename

            # inferenceを呼び出し、Captionを生成する
            img_caption = inference.predict(img_url)
            return render_template('index.html', img_url=img_url, img_caption=img_caption)
        else:
            return ''' <p>許可されていない拡張子です</p> '''
    else:
        return redirect(url_for('index'))


@app.route('/multiple', methods=['GET', 'POST'])
def multiple():
    img_urls = []
    img_captions = []
    if request.method == 'POST':
        if request.files.getlist('upload_files')[0].filename:
            img_files = request.files.getlist('upload_files')
            i = 0
            for img_file in img_files:
                # 受信したファイルを保存
                if img_file and allowed_file(img_file.filename):
                    filename = secure_filename(img_file.filename)
                    img_file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
                    img_urls[0] = './upload/' + filename
                    img_captions[0] = inference.predict(img_urls[0])
                    i = i + 1

            return render_template('index.html', img_url=img_urls, img_caption=img_captions, count=i)
    else:
        return redirect(url_for('index'))


@app.route('/upload/<filename>')
def uploaded_file(filename):
    return send_from_directory(app.config['UPLOAD_FOLDER'], filename)


if __name__ == '__main__':
    app.debug = True
    app.run()
