node {
  name: "input_image"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 299
        }
        dim {
          size: 299
        }
        dim {
          size: 3
        }
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_1a_3x3/weights"
  input: "InceptionV3/Conv2d_1a_3x3/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/weights/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_1a_3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_1a_3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_1a_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Conv2d_1a_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_1a_3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Conv2d_1a_3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Conv2d_1a_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_1a_3x3/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_1a_3x3/Conv2D"
  op: "Conv2D"
  input: "input_image"
  input: "InceptionV3/Conv2d_1a_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_1a_3x3/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/beta"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_1a_3x3/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Conv2d_1a_3x3/Conv2D"
  input: "InceptionV3/InceptionV3/Conv2d_1a_3x3/BatchNorm/Const"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/beta/read"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_mean/read"
  input: "InceptionV3/Conv2d_1a_3x3/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_1a_3x3/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_1a_3x3/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Conv2d_1a_3x3/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000 \000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 32
        }
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_2a_3x3/weights"
  input: "InceptionV3/Conv2d_2a_3x3/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/weights/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_2a_3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2a_3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2a_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Conv2d_2a_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2a_3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Conv2d_2a_3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Conv2d_2a_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2a_3x3/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2a_3x3/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Conv2d_1a_3x3/Relu"
  input: "InceptionV3/Conv2d_2a_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2a_3x3/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/beta"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2a_3x3/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Conv2d_2a_3x3/Conv2D"
  input: "InceptionV3/InceptionV3/Conv2d_2a_3x3/BatchNorm/Const"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/beta/read"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_mean/read"
  input: "InceptionV3/Conv2d_2a_3x3/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2a_3x3/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2a_3x3/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Conv2d_2a_3x3/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000 \000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 32
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_2b_3x3/weights"
  input: "InceptionV3/Conv2d_2b_3x3/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/weights/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_2b_3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2b_3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2b_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Conv2d_2b_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2b_3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Conv2d_2b_3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Conv2d_2b_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2b_3x3/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2b_3x3/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Conv2d_2a_3x3/Relu"
  input: "InceptionV3/Conv2d_2b_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2b_3x3/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/beta"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2b_3x3/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Conv2d_2b_3x3/Conv2D"
  input: "InceptionV3/InceptionV3/Conv2d_2b_3x3/BatchNorm/Const"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/beta/read"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_mean/read"
  input: "InceptionV3/Conv2d_2b_3x3/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2b_3x3/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_2b_3x3/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Conv2d_2b_3x3/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/MaxPool_3a_3x3/MaxPool"
  op: "MaxPool"
  input: "InceptionV3/InceptionV3/Conv2d_2b_3x3/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 3
        i: 3
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000@\000\000\000P\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 64
        }
        dim {
          size: 80
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_3b_1x1/weights"
  input: "InceptionV3/Conv2d_3b_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_3b_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_3b_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_3b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Conv2d_3b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_3b_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Conv2d_3b_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Conv2d_3b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_3b_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_3b_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/MaxPool_3a_3x3/MaxPool"
  input: "InceptionV3/Conv2d_3b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_3b_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 80
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 80
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 80
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/beta"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 80
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 80
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 80
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 80
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_3b_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Conv2d_3b_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Conv2d_3b_1x1/BatchNorm/Const"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Conv2d_3b_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_3b_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_3b_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Conv2d_3b_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000P\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 80
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_4a_3x3/weights"
  input: "InceptionV3/Conv2d_4a_3x3/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/weights/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_4a_3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_4a_3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_4a_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Conv2d_4a_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_4a_3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Conv2d_4a_3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Conv2d_4a_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_4a_3x3/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_4a_3x3/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Conv2d_3b_1x1/Relu"
  input: "InceptionV3/Conv2d_4a_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_4a_3x3/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/beta"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_4a_3x3/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Conv2d_4a_3x3/Conv2D"
  input: "InceptionV3/InceptionV3/Conv2d_4a_3x3/BatchNorm/Const"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/beta/read"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_mean/read"
  input: "InceptionV3/Conv2d_4a_3x3/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_4a_3x3/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Conv2d_4a_3x3/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Conv2d_4a_3x3/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/MaxPool_5a_3x3/MaxPool"
  op: "MaxPool"
  input: "InceptionV3/InceptionV3/Conv2d_4a_3x3/Relu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 3
        i: 3
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\300\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 192
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/MaxPool_5a_3x3/MaxPool"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\300\000\000\0000\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 192
        }
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/MaxPool_5a_3x3/MaxPool"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\005\000\000\000\005\000\000\0000\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 5
        }
        dim {
          size: 5
        }
        dim {
          size: 48
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/Const"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\300\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 192
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/MaxPool_5a_3x3/MaxPool"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
        }
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/Const"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000`\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 96
        }
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0b_3x3/Relu"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/Const"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/AvgPool_0a_3x3/AvgPool"
  op: "AvgPool"
  input: "InceptionV3/InceptionV3/MaxPool_5a_3x3/MaxPool"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 3
        i: 3
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\300\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 192
        }
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/AvgPool_0a_3x3/AvgPool"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 32
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 32
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5b/concat"
  op: "ConcatV2"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_0/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_1/Conv2d_0b_5x5/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_2/Conv2d_0c_3x3/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5b/Branch_3/Conv2d_0b_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5b/concat/axis"
  attr {
    key: "N"
    value {
      i: 4
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\001\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 256
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/concat"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\001\000\0000\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 256
        }
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/concat"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\005\000\000\000\005\000\000\0000\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 5
        }
        dim {
          size: 5
        }
        dim {
          size: 48
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv2d_0b_1x1/Relu"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/Const"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\001\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 256
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5b/concat"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
        }
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/Const"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000`\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 96
        }
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0b_3x3/Relu"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/Const"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/AvgPool_0a_3x3/AvgPool"
  op: "AvgPool"
  input: "InceptionV3/InceptionV3/Mixed_5b/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 3
        i: 3
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\001\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 256
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/AvgPool_0a_3x3/AvgPool"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5c/concat"
  op: "ConcatV2"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_0/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_1/Conv_1_0c_5x5/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_2/Conv2d_0c_3x3/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5c/Branch_3/Conv2d_0b_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5c/concat/axis"
  attr {
    key: "N"
    value {
      i: 4
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000 \001\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 288
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/concat"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000 \001\000\0000\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 288
        }
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/concat"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 48
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 48
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\005\000\000\000\005\000\000\0000\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 5
        }
        dim {
          size: 5
        }
        dim {
          size: 48
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/Const"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000 \001\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 288
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5c/concat"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
        }
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/Const"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000`\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 96
        }
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0b_3x3/Relu"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/Const"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/AvgPool_0a_3x3/AvgPool"
  op: "AvgPool"
  input: "InceptionV3/InceptionV3/Mixed_5c/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 3
        i: 3
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000 \001\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 288
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/AvgPool_0a_3x3/AvgPool"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_5d/concat"
  op: "ConcatV2"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_0/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_1/Conv2d_0b_5x5/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_2/Conv2d_0c_3x3/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5d/Branch_3/Conv2d_0b_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_5d/concat/axis"
  attr {
    key: "N"
    value {
      i: 4
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000 \001\000\000\200\001\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 288
        }
        dim {
          size: 384
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/concat"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 384
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 384
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 384
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 384
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 384
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 384
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 384
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000 \001\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 288
        }
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_5d/concat"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 64
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 64
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 64
        }
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/Const"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000`\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 3
        }
        dim {
          size: 3
        }
        dim {
          size: 96
        }
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_0b_3x3/Relu"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 96
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 96
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/Branch_2/MaxPool_1a_3x3/MaxPool"
  op: "MaxPool"
  input: "InceptionV3/InceptionV3/Mixed_5d/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 3
        i: 3
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "VALID"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6a/concat"
  op: "ConcatV2"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_0/Conv2d_1a_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_1/Conv2d_1a_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6a/Branch_2/MaxPool_1a_3x3/MaxPool"
  input: "InceptionV3/InceptionV3/Mixed_6a/concat/axis"
  attr {
    key: "N"
    value {
      i: 3
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6a/concat"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6a/concat"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\007\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 7
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/Const"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\007\000\000\000\001\000\000\000\200\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 7
        }
        dim {
          size: 1
        }
        dim {
          size: 128
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0b_1x7/Relu"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6a/concat"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\007\000\000\000\001\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 7
        }
        dim {
          size: 1
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\007\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 7
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0b_7x1/Relu"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/Const"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\007\000\000\000\001\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 7
        }
        dim {
          size: 1
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0c_1x7/Relu"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 128
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 128
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\007\000\000\000\200\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 7
        }
        dim {
          size: 128
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0d_7x1/Relu"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/Const"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/AvgPool_0a_3x3/AvgPool"
  op: "AvgPool"
  input: "InceptionV3/InceptionV3/Mixed_6a/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 3
        i: 3
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/AvgPool_0a_3x3/AvgPool"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6b/concat"
  op: "ConcatV2"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_0/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_1/Conv2d_0c_7x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_2/Conv2d_0e_1x7/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/Branch_3/Conv2d_0b_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6b/concat/axis"
  attr {
    key: "N"
    value {
      i: 4
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/concat"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/concat"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\007\000\000\000\240\000\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 7
        }
        dim {
          size: 160
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/Const"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\007\000\000\000\001\000\000\000\240\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 7
        }
        dim {
          size: 1
        }
        dim {
          size: 160
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0b_1x7/Relu"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6b/concat"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\007\000\000\000\001\000\000\000\240\000\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 7
        }
        dim {
          size: 1
        }
        dim {
          size: 160
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\007\000\000\000\240\000\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 7
        }
        dim {
          size: 160
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0b_7x1/Relu"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/Const"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\007\000\000\000\001\000\000\000\240\000\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 7
        }
        dim {
          size: 1
        }
        dim {
          size: 160
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0c_1x7/Relu"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\007\000\000\000\240\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 7
        }
        dim {
          size: 160
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0d_7x1/Relu"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/Const"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/AvgPool_0a_3x3/AvgPool"
  op: "AvgPool"
  input: "InceptionV3/InceptionV3/Mixed_6b/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 3
        i: 3
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/AvgPool_0a_3x3/AvgPool"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6c/concat"
  op: "ConcatV2"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_0/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_1/Conv2d_0c_7x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_2/Conv2d_0e_1x7/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/Branch_3/Conv2d_0b_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6c/concat/axis"
  attr {
    key: "N"
    value {
      i: 4
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/concat"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/concat"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\007\000\000\000\240\000\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 7
        }
        dim {
          size: 160
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/Const"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\007\000\000\000\001\000\000\000\240\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 7
        }
        dim {
          size: 1
        }
        dim {
          size: 160
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0b_1x7/Relu"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6c/concat"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\007\000\000\000\001\000\000\000\240\000\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 7
        }
        dim {
          size: 1
        }
        dim {
          size: 160
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\007\000\000\000\240\000\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 7
        }
        dim {
          size: 160
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0b_7x1/Relu"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/Const"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\007\000\000\000\001\000\000\000\240\000\000\000\240\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 7
        }
        dim {
          size: 1
        }
        dim {
          size: 160
        }
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0c_1x7/Relu"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 160
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 160
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\007\000\000\000\240\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 7
        }
        dim {
          size: 160
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0d_7x1/Relu"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/Const"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/AvgPool_0a_3x3/AvgPool"
  op: "AvgPool"
  input: "InceptionV3/InceptionV3/Mixed_6c/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 3
        i: 3
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/AvgPool_0a_3x3/AvgPool"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/concat/axis"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6d/concat"
  op: "ConcatV2"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_0/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_1/Conv2d_0c_7x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_2/Conv2d_0e_1x7/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/Branch_3/Conv2d_0b_1x1/Relu"
  input: "InceptionV3/InceptionV3/Mixed_6d/concat/axis"
  attr {
    key: "N"
    value {
      i: 4
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/concat"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_0/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\000\003\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 1
        }
        dim {
          size: 768
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6d/concat"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/Const"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\007\000\000\000\300\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.10000000149011612
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 0
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mul"
  op: "Mul"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/TruncatedNormal"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal"
  op: "Add"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mul"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 7
        }
        dim {
          size: 192
        }
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/Initializer/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/scale"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 3.9999998989515007e-05
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  op: "L2Loss"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer"
  op: "Mul"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/scale"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/kernel/Regularizer/l2_regularizer/L2Loss"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/dilation_rate"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/Conv2D"
  op: "Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0a_1x1/Relu"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "dilations"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "padding"
    value {
      s: "SAME"
    }
  }
  attr {
    key: "strides"
    value {
      list {
        i: 1
        i: 1
        i: 1
        i: 1
      }
    }
  }
  attr {
    key: "use_cudnn_on_gpu"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Initializer/ones"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 192
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  op: "VariableV2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 192
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Assign"
  op: "Assign"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/Initializer/ones"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/read"
  op: "Identity"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance"
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/FusedBatchNorm"
  op: "FusedBatchNorm"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/Conv2D"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/Const"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/beta/read"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_mean/read"
  input: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/moving_variance/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
  attr {
    key: "epsilon"
    value {
      f: 0.0010000000474974513
    }
  }
  attr {
    key: "is_training"
    value {
      b: false
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9997000098228455
      }
    }
  }
}
node {
  name: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/Relu"
  op: "Relu"
  input: "InceptionV3/InceptionV3/Mixed_6e/Branch_1/Conv2d_0b_1x7/BatchNorm/FusedBatchNorm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 4
          }
        }
        tensor_content: "\007\000\000\000\001\000\000\000\300\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/mean"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@InceptionV3/Mixed_6e/Branch_1/Conv2d_0c_7x1/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "InceptionV3/Mixed_6e/Branch_1/Conv2d_0c_7x1/weights/Initializer/truncated_normal/stddev"
  op: "Const"
  attr {
    key: "_class"
    value {
    }