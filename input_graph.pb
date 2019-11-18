node {
  name: "alpha/initial_value"
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
        float_val: 1.0
      }
    }
  }
}
node {
  name: "alpha"
  op: "VariableV2"
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
  name: "alpha/Assign"
  op: "Assign"
  input: "alpha"
  input: "alpha/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@alpha"
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
  name: "alpha/read"
  op: "Identity"
  input: "alpha"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@alpha"
      }
    }
  }
}
node {
  name: "gModel_0/input"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 4
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_1/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_1/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/input"
  input: "gModel_0/gLEnc_128to64/lambda_1/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_1/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 4
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_1/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_1/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_128to64/lambda_1/Placeholder"
  input: "gModel_0/gLEnc_128to64/lambda_1/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_2/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\202\000\000\000\202\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_2/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_128to64/lambda_1/MirrorPad"
  input: "gModel_0/gLEnc_128to64/lambda_2/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_2/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 130
        }
        dim {
          size: 130
        }
        dim {
          size: 4
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_2/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\202\000\000\000\202\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_2/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_128to64/lambda_2/Placeholder"
  input: "gModel_0/gLEnc_128to64/lambda_2/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\004\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal/stddev"
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
        float_val: 0.2679574489593506
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 2747207
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal"
  op: "Add"
  input: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal/mul"
  input: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_1/kernel"
  op: "VariableV2"
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
          size: 4
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
  name: "gModel_0/gLEnc_128to64/conv2d_1/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_128to64/conv2d_1/kernel"
  input: "gModel_0/gLEnc_128to64/conv2d_1/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_128to64/conv2d_1/kernel"
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
  name: "gModel_0/gLEnc_128to64/conv2d_1/kernel/read"
  op: "Identity"
  input: "gModel_0/gLEnc_128to64/conv2d_1/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_128to64/conv2d_1/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_1/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_1/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_128to64/conv2d_1/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_128to64/conv2d_1/bias"
  input: "gModel_0/gLEnc_128to64/conv2d_1/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_128to64/conv2d_1/bias"
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
  name: "gModel_0/gLEnc_128to64/conv2d_1/bias/read"
  op: "Identity"
  input: "gModel_0/gLEnc_128to64/conv2d_1/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_128to64/conv2d_1/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_1/convolution/dilation_rate"
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
  name: "gModel_0/gLEnc_128to64/conv2d_1/convolution"
  op: "Conv2D"
  input: "gModel_0/gLEnc_128to64/lambda_2/Reshape"
  input: "gModel_0/gLEnc_128to64/conv2d_1/kernel/read"
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
  name: "gModel_0/gLEnc_128to64/conv2d_1/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLEnc_128to64/conv2d_1/convolution"
  input: "gModel_0/gLEnc_128to64/conv2d_1/bias/read"
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
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_3/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_3/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_128to64/conv2d_1/BiasAdd"
  input: "gModel_0/gLEnc_128to64/lambda_3/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_3/Placeholder"
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
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 32
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_3/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_3/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_128to64/lambda_3/Placeholder"
  input: "gModel_0/gLEnc_128to64/lambda_3/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/elu_1/Elu"
  op: "Elu"
  input: "gModel_0/gLEnc_128to64/lambda_3/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_4/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_4/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_128to64/elu_1/Elu"
  input: "gModel_0/gLEnc_128to64/lambda_4/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_4/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 32
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_4/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_4/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_128to64/lambda_4/Placeholder"
  input: "gModel_0/gLEnc_128to64/lambda_4/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_5/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\202\000\000\000\202\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_5/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_128to64/lambda_4/MirrorPad"
  input: "gModel_0/gLEnc_128to64/lambda_5/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_5/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 130
        }
        dim {
          size: 130
        }
        dim {
          size: 32
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_5/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\202\000\000\000\202\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_5/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_128to64/lambda_5/Placeholder"
  input: "gModel_0/gLEnc_128to64/lambda_5/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000 \000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal/stddev"
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
        float_val: 0.09473726898431778
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 604721
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal"
  op: "Add"
  input: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal/mul"
  input: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_2/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_128to64/conv2d_2/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_128to64/conv2d_2/kernel"
  input: "gModel_0/gLEnc_128to64/conv2d_2/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_128to64/conv2d_2/kernel"
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
  name: "gModel_0/gLEnc_128to64/conv2d_2/kernel/read"
  op: "Identity"
  input: "gModel_0/gLEnc_128to64/conv2d_2/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_128to64/conv2d_2/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_2/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_2/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_128to64/conv2d_2/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_128to64/conv2d_2/bias"
  input: "gModel_0/gLEnc_128to64/conv2d_2/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_128to64/conv2d_2/bias"
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
  name: "gModel_0/gLEnc_128to64/conv2d_2/bias/read"
  op: "Identity"
  input: "gModel_0/gLEnc_128to64/conv2d_2/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_128to64/conv2d_2/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/conv2d_2/convolution/dilation_rate"
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
  name: "gModel_0/gLEnc_128to64/conv2d_2/convolution"
  op: "Conv2D"
  input: "gModel_0/gLEnc_128to64/lambda_5/Reshape"
  input: "gModel_0/gLEnc_128to64/conv2d_2/kernel/read"
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
  name: "gModel_0/gLEnc_128to64/conv2d_2/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLEnc_128to64/conv2d_2/convolution"
  input: "gModel_0/gLEnc_128to64/conv2d_2/bias/read"
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
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_6/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000@\000\000\000@\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_6/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_128to64/conv2d_2/BiasAdd"
  input: "gModel_0/gLEnc_128to64/lambda_6/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_6/Placeholder"
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
          size: 32
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 32
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_6/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000@\000\000\000@\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/lambda_6/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_128to64/lambda_6/Placeholder"
  input: "gModel_0/gLEnc_128to64/lambda_6/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_128to64/elu_2/Elu"
  op: "Elu"
  input: "gModel_0/gLEnc_128to64/lambda_6/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_7/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_7/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_128to64/elu_2/Elu"
  input: "gModel_0/gLEnc_64to32/lambda_7/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_7/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 32
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_7/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_7/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_64to32/lambda_7/Placeholder"
  input: "gModel_0/gLEnc_64to32/lambda_7/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_8/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377B\000\000\000B\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_8/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_64to32/lambda_7/MirrorPad"
  input: "gModel_0/gLEnc_64to32/lambda_8/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_8/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 66
        }
        dim {
          size: 66
        }
        dim {
          size: 32
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_8/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377B\000\000\000B\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_8/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_64to32/lambda_8/Placeholder"
  input: "gModel_0/gLEnc_64to32/lambda_8/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000 \000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal/stddev"
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
        float_val: 0.09473726898431778
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 5284278
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal"
  op: "Add"
  input: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal/mul"
  input: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_3/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_64to32/conv2d_3/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_64to32/conv2d_3/kernel"
  input: "gModel_0/gLEnc_64to32/conv2d_3/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_64to32/conv2d_3/kernel"
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
  name: "gModel_0/gLEnc_64to32/conv2d_3/kernel/read"
  op: "Identity"
  input: "gModel_0/gLEnc_64to32/conv2d_3/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_64to32/conv2d_3/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_3/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_3/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_64to32/conv2d_3/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_64to32/conv2d_3/bias"
  input: "gModel_0/gLEnc_64to32/conv2d_3/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_64to32/conv2d_3/bias"
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
  name: "gModel_0/gLEnc_64to32/conv2d_3/bias/read"
  op: "Identity"
  input: "gModel_0/gLEnc_64to32/conv2d_3/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_64to32/conv2d_3/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_3/convolution/dilation_rate"
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
  name: "gModel_0/gLEnc_64to32/conv2d_3/convolution"
  op: "Conv2D"
  input: "gModel_0/gLEnc_64to32/lambda_8/Reshape"
  input: "gModel_0/gLEnc_64to32/conv2d_3/kernel/read"
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
  name: "gModel_0/gLEnc_64to32/conv2d_3/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLEnc_64to32/conv2d_3/convolution"
  input: "gModel_0/gLEnc_64to32/conv2d_3/bias/read"
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
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_9/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_9/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_64to32/conv2d_3/BiasAdd"
  input: "gModel_0/gLEnc_64to32/lambda_9/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_9/Placeholder"
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
          size: 32
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_9/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_9/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_64to32/lambda_9/Placeholder"
  input: "gModel_0/gLEnc_64to32/lambda_9/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/elu_3/Elu"
  op: "Elu"
  input: "gModel_0/gLEnc_64to32/lambda_9/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_10/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_10/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_64to32/elu_3/Elu"
  input: "gModel_0/gLEnc_64to32/lambda_10/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_10/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_10/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_10/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_64to32/lambda_10/Placeholder"
  input: "gModel_0/gLEnc_64to32/lambda_10/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_11/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377B\000\000\000B\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_11/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_64to32/lambda_10/MirrorPad"
  input: "gModel_0/gLEnc_64to32/lambda_11/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_11/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 66
        }
        dim {
          size: 66
        }
        dim {
          size: 64
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_11/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377B\000\000\000B\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_11/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_64to32/lambda_11/Placeholder"
  input: "gModel_0/gLEnc_64to32/lambda_11/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal/stddev"
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
        float_val: 0.06698936223983765
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 7220004
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal"
  op: "Add"
  input: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal/mul"
  input: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_4/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_64to32/conv2d_4/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_64to32/conv2d_4/kernel"
  input: "gModel_0/gLEnc_64to32/conv2d_4/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_64to32/conv2d_4/kernel"
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
  name: "gModel_0/gLEnc_64to32/conv2d_4/kernel/read"
  op: "Identity"
  input: "gModel_0/gLEnc_64to32/conv2d_4/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_64to32/conv2d_4/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_4/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_4/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_64to32/conv2d_4/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_64to32/conv2d_4/bias"
  input: "gModel_0/gLEnc_64to32/conv2d_4/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_64to32/conv2d_4/bias"
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
  name: "gModel_0/gLEnc_64to32/conv2d_4/bias/read"
  op: "Identity"
  input: "gModel_0/gLEnc_64to32/conv2d_4/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_64to32/conv2d_4/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/conv2d_4/convolution/dilation_rate"
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
  name: "gModel_0/gLEnc_64to32/conv2d_4/convolution"
  op: "Conv2D"
  input: "gModel_0/gLEnc_64to32/lambda_11/Reshape"
  input: "gModel_0/gLEnc_64to32/conv2d_4/kernel/read"
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
  name: "gModel_0/gLEnc_64to32/conv2d_4/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLEnc_64to32/conv2d_4/convolution"
  input: "gModel_0/gLEnc_64to32/conv2d_4/bias/read"
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
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_12/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000 \000\000\000 \000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_12/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_64to32/conv2d_4/BiasAdd"
  input: "gModel_0/gLEnc_64to32/lambda_12/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_12/Placeholder"
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
          size: 32
        }
        dim {
          size: 32
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
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_12/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000 \000\000\000 \000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/lambda_12/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_64to32/lambda_12/Placeholder"
  input: "gModel_0/gLEnc_64to32/lambda_12/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_64to32/elu_4/Elu"
  op: "Elu"
  input: "gModel_0/gLEnc_64to32/lambda_12/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_13/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_13/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_64to32/elu_4/Elu"
  input: "gModel_0/gLEnc_32to16/lambda_13/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_13/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 32
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
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_13/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_13/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_32to16/lambda_13/Placeholder"
  input: "gModel_0/gLEnc_32to16/lambda_13/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_14/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\"\000\000\000\"\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_14/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_32to16/lambda_13/MirrorPad"
  input: "gModel_0/gLEnc_32to16/lambda_14/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_14/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 34
        }
        dim {
          size: 34
        }
        dim {
          size: 64
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_14/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\"\000\000\000\"\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_14/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_32to16/lambda_14/Placeholder"
  input: "gModel_0/gLEnc_32to16/lambda_14/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal/stddev"
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
        float_val: 0.06698936223983765
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 491873
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal"
  op: "Add"
  input: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal/mul"
  input: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_5/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_32to16/conv2d_5/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_32to16/conv2d_5/kernel"
  input: "gModel_0/gLEnc_32to16/conv2d_5/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_32to16/conv2d_5/kernel"
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
  name: "gModel_0/gLEnc_32to16/conv2d_5/kernel/read"
  op: "Identity"
  input: "gModel_0/gLEnc_32to16/conv2d_5/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_32to16/conv2d_5/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_5/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_5/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_32to16/conv2d_5/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_32to16/conv2d_5/bias"
  input: "gModel_0/gLEnc_32to16/conv2d_5/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_32to16/conv2d_5/bias"
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
  name: "gModel_0/gLEnc_32to16/conv2d_5/bias/read"
  op: "Identity"
  input: "gModel_0/gLEnc_32to16/conv2d_5/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_32to16/conv2d_5/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_5/convolution/dilation_rate"
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
  name: "gModel_0/gLEnc_32to16/conv2d_5/convolution"
  op: "Conv2D"
  input: "gModel_0/gLEnc_32to16/lambda_14/Reshape"
  input: "gModel_0/gLEnc_32to16/conv2d_5/kernel/read"
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
  name: "gModel_0/gLEnc_32to16/conv2d_5/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLEnc_32to16/conv2d_5/convolution"
  input: "gModel_0/gLEnc_32to16/conv2d_5/bias/read"
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
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_15/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000 \000\000\000 \000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_15/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_32to16/conv2d_5/BiasAdd"
  input: "gModel_0/gLEnc_32to16/lambda_15/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_15/Placeholder"
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
          size: 32
        }
        dim {
          size: 32
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_15/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000 \000\000\000 \000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_15/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_32to16/lambda_15/Placeholder"
  input: "gModel_0/gLEnc_32to16/lambda_15/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/elu_5/Elu"
  op: "Elu"
  input: "gModel_0/gLEnc_32to16/lambda_15/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_16/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_16/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_32to16/elu_5/Elu"
  input: "gModel_0/gLEnc_32to16/lambda_16/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_16/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 32
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_16/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_16/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_32to16/lambda_16/Placeholder"
  input: "gModel_0/gLEnc_32to16/lambda_16/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_17/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\"\000\000\000\"\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_17/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_32to16/lambda_16/MirrorPad"
  input: "gModel_0/gLEnc_32to16/lambda_17/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_17/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 34
        }
        dim {
          size: 34
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_17/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\"\000\000\000\"\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_17/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_32to16/lambda_17/Placeholder"
  input: "gModel_0/gLEnc_32to16/lambda_17/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal/stddev"
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
        float_val: 0.04736863449215889
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 2831164
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal"
  op: "Add"
  input: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal/mul"
  input: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_6/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_32to16/conv2d_6/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_32to16/conv2d_6/kernel"
  input: "gModel_0/gLEnc_32to16/conv2d_6/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_32to16/conv2d_6/kernel"
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
  name: "gModel_0/gLEnc_32to16/conv2d_6/kernel/read"
  op: "Identity"
  input: "gModel_0/gLEnc_32to16/conv2d_6/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_32to16/conv2d_6/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_6/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_6/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_32to16/conv2d_6/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_32to16/conv2d_6/bias"
  input: "gModel_0/gLEnc_32to16/conv2d_6/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_32to16/conv2d_6/bias"
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
  name: "gModel_0/gLEnc_32to16/conv2d_6/bias/read"
  op: "Identity"
  input: "gModel_0/gLEnc_32to16/conv2d_6/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_32to16/conv2d_6/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/conv2d_6/convolution/dilation_rate"
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
  name: "gModel_0/gLEnc_32to16/conv2d_6/convolution"
  op: "Conv2D"
  input: "gModel_0/gLEnc_32to16/lambda_17/Reshape"
  input: "gModel_0/gLEnc_32to16/conv2d_6/kernel/read"
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
  name: "gModel_0/gLEnc_32to16/conv2d_6/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLEnc_32to16/conv2d_6/convolution"
  input: "gModel_0/gLEnc_32to16/conv2d_6/bias/read"
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
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_18/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_18/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_32to16/conv2d_6/BiasAdd"
  input: "gModel_0/gLEnc_32to16/lambda_18/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_18/Placeholder"
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
          size: 32
        }
        dim {
          size: 16
        }
        dim {
          size: 16
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_18/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/lambda_18/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_32to16/lambda_18/Placeholder"
  input: "gModel_0/gLEnc_32to16/lambda_18/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_32to16/elu_6/Elu"
  op: "Elu"
  input: "gModel_0/gLEnc_32to16/lambda_18/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_19/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_19/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_32to16/elu_6/Elu"
  input: "gModel_0/gLEnc_16to8/lambda_19/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_19/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 16
        }
        dim {
          size: 16
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_19/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_19/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_16to8/lambda_19/Placeholder"
  input: "gModel_0/gLEnc_16to8/lambda_19/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_20/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\022\000\000\000\022\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_20/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_16to8/lambda_19/MirrorPad"
  input: "gModel_0/gLEnc_16to8/lambda_20/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_20/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 18
        }
        dim {
          size: 18
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_20/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\022\000\000\000\022\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_20/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_16to8/lambda_20/Placeholder"
  input: "gModel_0/gLEnc_16to8/lambda_20/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal/stddev"
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
        float_val: 0.04736863449215889
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 9227467
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal"
  op: "Add"
  input: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal/mul"
  input: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_7/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_16to8/conv2d_7/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_16to8/conv2d_7/kernel"
  input: "gModel_0/gLEnc_16to8/conv2d_7/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_16to8/conv2d_7/kernel"
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
  name: "gModel_0/gLEnc_16to8/conv2d_7/kernel/read"
  op: "Identity"
  input: "gModel_0/gLEnc_16to8/conv2d_7/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_16to8/conv2d_7/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_7/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_7/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_16to8/conv2d_7/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_16to8/conv2d_7/bias"
  input: "gModel_0/gLEnc_16to8/conv2d_7/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_16to8/conv2d_7/bias"
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
  name: "gModel_0/gLEnc_16to8/conv2d_7/bias/read"
  op: "Identity"
  input: "gModel_0/gLEnc_16to8/conv2d_7/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_16to8/conv2d_7/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_7/convolution/dilation_rate"
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
  name: "gModel_0/gLEnc_16to8/conv2d_7/convolution"
  op: "Conv2D"
  input: "gModel_0/gLEnc_16to8/lambda_20/Reshape"
  input: "gModel_0/gLEnc_16to8/conv2d_7/kernel/read"
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
  name: "gModel_0/gLEnc_16to8/conv2d_7/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLEnc_16to8/conv2d_7/convolution"
  input: "gModel_0/gLEnc_16to8/conv2d_7/bias/read"
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
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_21/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_21/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_16to8/conv2d_7/BiasAdd"
  input: "gModel_0/gLEnc_16to8/lambda_21/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_21/Placeholder"
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
          size: 32
        }
        dim {
          size: 16
        }
        dim {
          size: 16
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_21/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_21/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_16to8/lambda_21/Placeholder"
  input: "gModel_0/gLEnc_16to8/lambda_21/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/elu_7/Elu"
  op: "Elu"
  input: "gModel_0/gLEnc_16to8/lambda_21/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_22/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_22/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_16to8/elu_7/Elu"
  input: "gModel_0/gLEnc_16to8/lambda_22/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_22/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 16
        }
        dim {
          size: 16
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_22/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_22/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_16to8/lambda_22/Placeholder"
  input: "gModel_0/gLEnc_16to8/lambda_22/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_23/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\022\000\000\000\022\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_23/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_16to8/lambda_22/MirrorPad"
  input: "gModel_0/gLEnc_16to8/lambda_23/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_23/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 18
        }
        dim {
          size: 18
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_23/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\022\000\000\000\022\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_23/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_16to8/lambda_23/Placeholder"
  input: "gModel_0/gLEnc_16to8/lambda_23/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal/stddev"
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
        float_val: 0.04736863449215889
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 6905909
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal"
  op: "Add"
  input: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal/mul"
  input: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_8/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_16to8/conv2d_8/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_16to8/conv2d_8/kernel"
  input: "gModel_0/gLEnc_16to8/conv2d_8/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_16to8/conv2d_8/kernel"
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
  name: "gModel_0/gLEnc_16to8/conv2d_8/kernel/read"
  op: "Identity"
  input: "gModel_0/gLEnc_16to8/conv2d_8/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_16to8/conv2d_8/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_8/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_8/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_16to8/conv2d_8/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_16to8/conv2d_8/bias"
  input: "gModel_0/gLEnc_16to8/conv2d_8/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_16to8/conv2d_8/bias"
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
  name: "gModel_0/gLEnc_16to8/conv2d_8/bias/read"
  op: "Identity"
  input: "gModel_0/gLEnc_16to8/conv2d_8/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_16to8/conv2d_8/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/conv2d_8/convolution/dilation_rate"
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
  name: "gModel_0/gLEnc_16to8/conv2d_8/convolution"
  op: "Conv2D"
  input: "gModel_0/gLEnc_16to8/lambda_23/Reshape"
  input: "gModel_0/gLEnc_16to8/conv2d_8/kernel/read"
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
  name: "gModel_0/gLEnc_16to8/conv2d_8/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLEnc_16to8/conv2d_8/convolution"
  input: "gModel_0/gLEnc_16to8/conv2d_8/bias/read"
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
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_24/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_24/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_16to8/conv2d_8/BiasAdd"
  input: "gModel_0/gLEnc_16to8/lambda_24/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_24/Placeholder"
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
          size: 32
        }
        dim {
          size: 8
        }
        dim {
          size: 8
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_24/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/lambda_24/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_16to8/lambda_24/Placeholder"
  input: "gModel_0/gLEnc_16to8/lambda_24/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_16to8/elu_8/Elu"
  op: "Elu"
  input: "gModel_0/gLEnc_16to8/lambda_24/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_25/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_25/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_16to8/elu_8/Elu"
  input: "gModel_0/gLEnc_8to4/lambda_25/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_25/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 8
        }
        dim {
          size: 8
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_25/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_25/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_8to4/lambda_25/Placeholder"
  input: "gModel_0/gLEnc_8to4/lambda_25/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_26/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\n\000\000\000\n\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_26/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_8to4/lambda_25/MirrorPad"
  input: "gModel_0/gLEnc_8to4/lambda_26/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_26/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 10
        }
        dim {
          size: 10
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_26/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\n\000\000\000\n\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_26/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_8to4/lambda_26/Placeholder"
  input: "gModel_0/gLEnc_8to4/lambda_26/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal/stddev"
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
        float_val: 0.04736863449215889
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 6181144
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal"
  op: "Add"
  input: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal/mul"
  input: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_9/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_8to4/conv2d_9/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_8to4/conv2d_9/kernel"
  input: "gModel_0/gLEnc_8to4/conv2d_9/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_8to4/conv2d_9/kernel"
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
  name: "gModel_0/gLEnc_8to4/conv2d_9/kernel/read"
  op: "Identity"
  input: "gModel_0/gLEnc_8to4/conv2d_9/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_8to4/conv2d_9/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_9/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_9/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_8to4/conv2d_9/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_8to4/conv2d_9/bias"
  input: "gModel_0/gLEnc_8to4/conv2d_9/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_8to4/conv2d_9/bias"
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
  name: "gModel_0/gLEnc_8to4/conv2d_9/bias/read"
  op: "Identity"
  input: "gModel_0/gLEnc_8to4/conv2d_9/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_8to4/conv2d_9/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_9/convolution/dilation_rate"
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
  name: "gModel_0/gLEnc_8to4/conv2d_9/convolution"
  op: "Conv2D"
  input: "gModel_0/gLEnc_8to4/lambda_26/Reshape"
  input: "gModel_0/gLEnc_8to4/conv2d_9/kernel/read"
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
  name: "gModel_0/gLEnc_8to4/conv2d_9/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLEnc_8to4/conv2d_9/convolution"
  input: "gModel_0/gLEnc_8to4/conv2d_9/bias/read"
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
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_27/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_27/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_8to4/conv2d_9/BiasAdd"
  input: "gModel_0/gLEnc_8to4/lambda_27/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_27/Placeholder"
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
          size: 32
        }
        dim {
          size: 8
        }
        dim {
          size: 8
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_27/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_27/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_8to4/lambda_27/Placeholder"
  input: "gModel_0/gLEnc_8to4/lambda_27/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/elu_9/Elu"
  op: "Elu"
  input: "gModel_0/gLEnc_8to4/lambda_27/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_28/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_28/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_8to4/elu_9/Elu"
  input: "gModel_0/gLEnc_8to4/lambda_28/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_28/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 8
        }
        dim {
          size: 8
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_28/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_28/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_8to4/lambda_28/Placeholder"
  input: "gModel_0/gLEnc_8to4/lambda_28/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_29/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\n\000\000\000\n\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_29/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_8to4/lambda_28/MirrorPad"
  input: "gModel_0/gLEnc_8to4/lambda_29/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_29/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 10
        }
        dim {
          size: 10
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_29/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\n\000\000\000\n\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_29/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_8to4/lambda_29/Placeholder"
  input: "gModel_0/gLEnc_8to4/lambda_29/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal/stddev"
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
        float_val: 0.04736863449215889
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 9814123
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal"
  op: "Add"
  input: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal/mul"
  input: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_10/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_8to4/conv2d_10/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_8to4/conv2d_10/kernel"
  input: "gModel_0/gLEnc_8to4/conv2d_10/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_8to4/conv2d_10/kernel"
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
  name: "gModel_0/gLEnc_8to4/conv2d_10/kernel/read"
  op: "Identity"
  input: "gModel_0/gLEnc_8to4/conv2d_10/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_8to4/conv2d_10/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_10/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_10/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLEnc_8to4/conv2d_10/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLEnc_8to4/conv2d_10/bias"
  input: "gModel_0/gLEnc_8to4/conv2d_10/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_8to4/conv2d_10/bias"
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
  name: "gModel_0/gLEnc_8to4/conv2d_10/bias/read"
  op: "Identity"
  input: "gModel_0/gLEnc_8to4/conv2d_10/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLEnc_8to4/conv2d_10/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/conv2d_10/convolution/dilation_rate"
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
  name: "gModel_0/gLEnc_8to4/conv2d_10/convolution"
  op: "Conv2D"
  input: "gModel_0/gLEnc_8to4/lambda_29/Reshape"
  input: "gModel_0/gLEnc_8to4/conv2d_10/kernel/read"
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
  name: "gModel_0/gLEnc_8to4/conv2d_10/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLEnc_8to4/conv2d_10/convolution"
  input: "gModel_0/gLEnc_8to4/conv2d_10/bias/read"
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
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_30/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\004\000\000\000\004\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_30/Reshape"
  op: "Reshape"
  input: "gModel_0/gLEnc_8to4/conv2d_10/BiasAdd"
  input: "gModel_0/gLEnc_8to4/lambda_30/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_30/Placeholder"
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
          size: 32
        }
        dim {
          size: 4
        }
        dim {
          size: 4
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_30/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\004\000\000\000\004\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/lambda_30/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLEnc_8to4/lambda_30/Placeholder"
  input: "gModel_0/gLEnc_8to4/lambda_30/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLEnc_8to4/elu_10/Elu"
  op: "Elu"
  input: "gModel_0/gLEnc_8to4/lambda_30/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_31/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_31/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLEnc_8to4/elu_10/Elu"
  input: "gModel_0/gLBott_4/lambda_31/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_31/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 4
        }
        dim {
          size: 4
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_31/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_31/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLBott_4/lambda_31/Placeholder"
  input: "gModel_0/gLBott_4/lambda_31/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_32/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\006\000\000\000\006\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_32/Reshape"
  op: "Reshape"
  input: "gModel_0/gLBott_4/lambda_31/MirrorPad"
  input: "gModel_0/gLBott_4/lambda_32/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_32/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 6
        }
        dim {
          size: 6
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_32/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\006\000\000\000\006\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_32/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLBott_4/lambda_32/Placeholder"
  input: "gModel_0/gLBott_4/lambda_32/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_11/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_11/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_11/truncated_normal/stddev"
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
        float_val: 0.04736863449215889
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_11/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLBott_4/conv2d_11/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 5251840
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_11/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLBott_4/conv2d_11/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLBott_4/conv2d_11/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_11/truncated_normal"
  op: "Add"
  input: "gModel_0/gLBott_4/conv2d_11/truncated_normal/mul"
  input: "gModel_0/gLBott_4/conv2d_11/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_11/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLBott_4/conv2d_11/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLBott_4/conv2d_11/kernel"
  input: "gModel_0/gLBott_4/conv2d_11/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLBott_4/conv2d_11/kernel"
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
  name: "gModel_0/gLBott_4/conv2d_11/kernel/read"
  op: "Identity"
  input: "gModel_0/gLBott_4/conv2d_11/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLBott_4/conv2d_11/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_11/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_11/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLBott_4/conv2d_11/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLBott_4/conv2d_11/bias"
  input: "gModel_0/gLBott_4/conv2d_11/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLBott_4/conv2d_11/bias"
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
  name: "gModel_0/gLBott_4/conv2d_11/bias/read"
  op: "Identity"
  input: "gModel_0/gLBott_4/conv2d_11/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLBott_4/conv2d_11/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_11/convolution/dilation_rate"
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
  name: "gModel_0/gLBott_4/conv2d_11/convolution"
  op: "Conv2D"
  input: "gModel_0/gLBott_4/lambda_32/Reshape"
  input: "gModel_0/gLBott_4/conv2d_11/kernel/read"
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
  name: "gModel_0/gLBott_4/conv2d_11/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLBott_4/conv2d_11/convolution"
  input: "gModel_0/gLBott_4/conv2d_11/bias/read"
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
}
node {
  name: "gModel_0/gLBott_4/lambda_33/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\004\000\000\000\004\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_33/Reshape"
  op: "Reshape"
  input: "gModel_0/gLBott_4/conv2d_11/BiasAdd"
  input: "gModel_0/gLBott_4/lambda_33/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_33/Placeholder"
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
          size: 32
        }
        dim {
          size: 4
        }
        dim {
          size: 4
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_33/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\004\000\000\000\004\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_33/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLBott_4/lambda_33/Placeholder"
  input: "gModel_0/gLBott_4/lambda_33/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLBott_4/elu_11/Elu"
  op: "Elu"
  input: "gModel_0/gLBott_4/lambda_33/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_34/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_34/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLBott_4/elu_11/Elu"
  input: "gModel_0/gLBott_4/lambda_34/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_34/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 4
        }
        dim {
          size: 4
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_34/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_34/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLBott_4/lambda_34/Placeholder"
  input: "gModel_0/gLBott_4/lambda_34/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_35/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\006\000\000\000\006\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_35/Reshape"
  op: "Reshape"
  input: "gModel_0/gLBott_4/lambda_34/MirrorPad"
  input: "gModel_0/gLBott_4/lambda_35/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_35/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 6
        }
        dim {
          size: 6
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_35/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\006\000\000\000\006\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_35/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLBott_4/lambda_35/Placeholder"
  input: "gModel_0/gLBott_4/lambda_35/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_12/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_12/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_12/truncated_normal/stddev"
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
        float_val: 0.04736863449215889
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_12/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLBott_4/conv2d_12/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 9521722
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_12/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLBott_4/conv2d_12/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLBott_4/conv2d_12/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_12/truncated_normal"
  op: "Add"
  input: "gModel_0/gLBott_4/conv2d_12/truncated_normal/mul"
  input: "gModel_0/gLBott_4/conv2d_12/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_12/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLBott_4/conv2d_12/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLBott_4/conv2d_12/kernel"
  input: "gModel_0/gLBott_4/conv2d_12/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLBott_4/conv2d_12/kernel"
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
  name: "gModel_0/gLBott_4/conv2d_12/kernel/read"
  op: "Identity"
  input: "gModel_0/gLBott_4/conv2d_12/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLBott_4/conv2d_12/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_12/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_12/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLBott_4/conv2d_12/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLBott_4/conv2d_12/bias"
  input: "gModel_0/gLBott_4/conv2d_12/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLBott_4/conv2d_12/bias"
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
  name: "gModel_0/gLBott_4/conv2d_12/bias/read"
  op: "Identity"
  input: "gModel_0/gLBott_4/conv2d_12/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLBott_4/conv2d_12/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/conv2d_12/convolution/dilation_rate"
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
  name: "gModel_0/gLBott_4/conv2d_12/convolution"
  op: "Conv2D"
  input: "gModel_0/gLBott_4/lambda_35/Reshape"
  input: "gModel_0/gLBott_4/conv2d_12/kernel/read"
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
  name: "gModel_0/gLBott_4/conv2d_12/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLBott_4/conv2d_12/convolution"
  input: "gModel_0/gLBott_4/conv2d_12/bias/read"
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
}
node {
  name: "gModel_0/gLBott_4/lambda_36/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\004\000\000\000\004\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_36/Reshape"
  op: "Reshape"
  input: "gModel_0/gLBott_4/conv2d_12/BiasAdd"
  input: "gModel_0/gLBott_4/lambda_36/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_36/Placeholder"
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
          size: 32
        }
        dim {
          size: 4
        }
        dim {
          size: 4
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_36/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\004\000\000\000\004\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLBott_4/lambda_36/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLBott_4/lambda_36/Placeholder"
  input: "gModel_0/gLBott_4/lambda_36/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLBott_4/elu_12/Elu"
  op: "Elu"
  input: "gModel_0/gLBott_4/lambda_36/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/Const"
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
        int_val: 32
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/split/split_dim"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/split"
  op: "Split"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split/split_dim"
  input: "gModel_0/gLBott_4/elu_12/Elu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/concat/axis"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:1"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:2"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:3"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:4"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:5"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:6"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:7"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:8"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:9"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:10"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:11"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:12"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:13"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:14"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:15"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:16"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:17"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:18"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:19"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:20"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:21"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:22"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:23"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:24"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:25"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:26"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:27"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:28"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:29"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:30"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split:31"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/concat/axis"
  attr {
    key: "N"
    value {
      i: 32
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
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/Const_1"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/split_1/split_dim"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/split_1"
  op: "Split"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_1/split_dim"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 4
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/concat_1/axis"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/concat_1"
  op: "ConcatV2"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_1"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_1"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_1:1"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_1:1"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_1:2"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_1:2"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_1:3"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_1:3"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 8
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
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/Const_2"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/split_2/split_dim"
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
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/split_2"
  op: "Split"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_2/split_dim"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/concat_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 4
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/concat_2/axis"
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
  name: "gModel_0/gLDec_4to8/up_sampling3d_1/concat_2"
  op: "ConcatV2"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_2"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_2"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_2:1"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_2:1"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_2:2"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_2:2"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_2:3"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/split_2:3"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/concat_2/axis"
  attr {
    key: "N"
    value {
      i: 8
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
  name: "gModel_0/gLDec_4to8/concatenate_1/concat/axis"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/concatenate_1/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_4to8/up_sampling3d_1/concat_2"
  input: "gModel_0/gLEnc_8to4/elu_9/Elu"
  input: "gModel_0/gLDec_4to8/concatenate_1/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_4to8/lambda_37/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_37/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_4to8/concatenate_1/concat"
  input: "gModel_0/gLDec_4to8/lambda_37/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_37/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 8
        }
        dim {
          size: 8
        }
        dim {
          size: 256
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_37/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_37/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLDec_4to8/lambda_37/Placeholder"
  input: "gModel_0/gLDec_4to8/lambda_37/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_38/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\n\000\000\000\n\000\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_38/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/lambda_37/MirrorPad"
  input: "gModel_0/gLDec_4to8/lambda_38/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_38/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 10
        }
        dim {
          size: 10
        }
        dim {
          size: 256
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_38/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\n\000\000\000\n\000\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_38/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/lambda_38/Placeholder"
  input: "gModel_0/gLDec_4to8/lambda_38/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal/stddev"
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
        float_val: 0.03349468111991882
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 1506574
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal"
  op: "Add"
  input: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal/mul"
  input: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/conv2d_13/kernel"
  op: "VariableV2"
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
          size: 256
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
  name: "gModel_0/gLDec_4to8/conv2d_13/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_4to8/conv2d_13/kernel"
  input: "gModel_0/gLDec_4to8/conv2d_13/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/conv2d_13/kernel"
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
  name: "gModel_0/gLDec_4to8/conv2d_13/kernel/read"
  op: "Identity"
  input: "gModel_0/gLDec_4to8/conv2d_13/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/conv2d_13/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/conv2d_13/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/conv2d_13/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_4to8/conv2d_13/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_4to8/conv2d_13/bias"
  input: "gModel_0/gLDec_4to8/conv2d_13/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/conv2d_13/bias"
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
  name: "gModel_0/gLDec_4to8/conv2d_13/bias/read"
  op: "Identity"
  input: "gModel_0/gLDec_4to8/conv2d_13/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/conv2d_13/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/conv2d_13/convolution/dilation_rate"
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
  name: "gModel_0/gLDec_4to8/conv2d_13/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_4to8/lambda_38/Reshape"
  input: "gModel_0/gLDec_4to8/conv2d_13/kernel/read"
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
  name: "gModel_0/gLDec_4to8/conv2d_13/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_4to8/conv2d_13/convolution"
  input: "gModel_0/gLDec_4to8/conv2d_13/bias/read"
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
}
node {
  name: "gModel_0/gLDec_4to8/lambda_39/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_39/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/conv2d_13/BiasAdd"
  input: "gModel_0/gLDec_4to8/lambda_39/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_39/Placeholder"
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
          size: 32
        }
        dim {
          size: 8
        }
        dim {
          size: 8
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_39/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/lambda_39/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/lambda_39/Placeholder"
  input: "gModel_0/gLDec_4to8/lambda_39/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/elu_13/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_4to8/lambda_39/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal/stddev"
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
        float_val: 0.03349468111991882
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 6101993
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal"
  op: "Add"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal/mul"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/kernel"
  op: "VariableV2"
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
          size: 256
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/kernel"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/kernel"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/kernel/read"
  op: "Identity"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/bias"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/bias"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/bias/read"
  op: "Identity"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/zeros/shape_as_tensor"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/zeros/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/zeros"
  op: "Fill"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/zeros/shape_as_tensor"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Variable"
  op: "VariableV2"
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
          size: 8
        }
        dim {
          size: 8
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Variable/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Variable"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Variable"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Variable/read"
  op: "Identity"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Variable"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/transpose/perm"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/transpose"
  op: "Transpose"
  input: "gModel_0/gLDec_4to8/elu_13/Elu"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Shape"
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
            size: 5
          }
        }
        tensor_content: " \000\000\000\001\000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Shape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice/stack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice/stack_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice_1/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice_1/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice_1/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/transpose"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice_1/stack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/concat/axis"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Variable/read"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/MirrorPad/paddings"
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
            size: 4
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/concat"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/convolution/dilation_rate"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/MirrorPad"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/kernel/read"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/convolution"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/bias/read"
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
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Const"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/gamma"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/gamma/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/gamma"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/gamma"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/gamma/read"
  op: "Identity"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/gamma"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/gamma"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Const_1"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/beta"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/beta/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/beta"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/beta"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/beta/read"
  op: "Identity"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/beta"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Shape"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Shape_1"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Shape_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice/stack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice/stack_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_1/stack"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_1/stack_1"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_1/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Shape_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_1/stack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_2/stack"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_2/stack_1"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_2/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_2"
  op: "StridedSlice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Shape_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_2/stack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_2/stack_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_2/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_3/stack"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_3/stack_1"
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
            size: 1
          }
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_3/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_3"
  op: "StridedSlice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Shape_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_3/stack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_3/stack_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_3/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/stack/1"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/stack/4"
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
        int_val: 128
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/stack"
  op: "Pack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/stack/1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/strided_slice_2"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/stack/4"
  attr {
    key: "N"
    value {
      i: 5
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/BiasAdd"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/mean/reduction_indices"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/mean"
  op: "Mean"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/mean/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/StopGradient"
  op: "StopGradient"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/SquaredDifference"
  op: "SquaredDifference"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/StopGradient"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/variance/reduction_indices"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/variance"
  op: "Mean"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/SquaredDifference"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/variance/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/sub"
  op: "Sub"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/add/y"
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/add"
  op: "Add"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/moments/variance"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Const_2"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Const_3"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/clip_by_value/Minimum"
  op: "Minimum"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/add"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/clip_by_value"
  op: "Maximum"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/clip_by_value/Minimum"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Sqrt"
  op: "Sqrt"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/truediv"
  op: "RealDiv"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/sub"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Sqrt"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/truediv"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_2/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_2"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/gamma/read"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/mul"
  op: "Mul"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_3/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_3"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/beta/read"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/add_1"
  op: "Add"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/mul"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_4"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/add_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/Reshape_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray"
  op: "TensorArrayV3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        unknown_rank: true
      }
    }
  }
  attr {
    key: "identical_element_shapes"
    value {
      b: true
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "output_ta"
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray_1"
  op: "TensorArrayV3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        unknown_rank: true
      }
    }
  }
  attr {
    key: "identical_element_shapes"
    value {
      b: true
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "input_ta"
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/Shape"
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
            size: 5
          }
        }
        tensor_content: " \000\000\000\001\000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/Shape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/strided_slice/stack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/strided_slice/stack_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/range"
  op: "Range"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/range/start"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/strided_slice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"
  op: "TensorArrayScatterV3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/range"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/transpose"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/transpose"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/time"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/maximum_iterations"
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
        int_val: 32
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/iteration_counter"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/iteration_counter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Enter_1"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/time"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Enter_2"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Enter_3"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/Variable/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge"
  op: "Merge"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge_1"
  op: "Merge"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Enter_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/NextIteration_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge_2"
  op: "Merge"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Enter_2"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/NextIteration_2"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge_3"
  op: "Merge"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Enter_3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/NextIteration_3"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Less"
  op: "Less"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Less/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Less/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/maximum_iterations"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Less_1"
  op: "Less"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Less_1/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Less_1/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/strided_slice"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/LogicalAnd"
  op: "LogicalAnd"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Less"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Less_1"
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/LoopCond"
  op: "LoopCond"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/LogicalAnd"
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch"
  op: "Switch"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/LoopCond"
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
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch_1"
  op: "Switch"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/LoopCond"
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
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge_1"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch_2"
  op: "Switch"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge_2"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge_2"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch_3"
  op: "Switch"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge_3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Merge_3"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
  op: "Identity"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity_1"
  op: "Identity"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch_1:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity_2"
  op: "Identity"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch_2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity_3"
  op: "Identity"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch_3:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/add/y"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/add"
  op: "Add"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/add/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/TensorArrayReadV3"
  op: "TensorArrayReadV3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/TensorArrayReadV3/Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/TensorArrayReadV3/Enter_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/TensorArrayReadV3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray_1"
  attr {
    key: "T"
    value {
      type: DT_RESOURCE
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/TensorArrayReadV3/Enter_1"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/concat/axis"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/TensorArrayReadV3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity_3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/MirrorPad/paddings"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/concat"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/convolution/dilation_rate"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/MirrorPad"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/convolution/Enter"
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/convolution/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/convolution"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/BiasAdd/Enter"
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
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/BiasAdd/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Shape"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
        tensor_content: "\001\000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Shape_1"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
        tensor_content: "\001\000\000\000\010\000\000\000\010\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice/stack"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Shape_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice/stack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice/stack_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_1/stack"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_1/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_1/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Shape_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_1/stack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_2/stack"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_2/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_2/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_2"
  op: "StridedSlice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Shape_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_2/stack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_2/stack_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_2/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_3/stack"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_3/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_3/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_3"
  op: "StridedSlice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Shape_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_3/stack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_3/stack_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_3/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/stack/1"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/stack/4"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
        int_val: 128
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/stack"
  op: "Pack"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/stack/1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/strided_slice_2"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/stack/4"
  attr {
    key: "N"
    value {
      i: 5
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/BiasAdd"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/mean/reduction_indices"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/mean"
  op: "Mean"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/mean/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/StopGradient"
  op: "StopGradient"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/SquaredDifference"
  op: "SquaredDifference"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/StopGradient"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/variance/reduction_indices"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/variance"
  op: "Mean"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/SquaredDifference"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/variance/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/sub"
  op: "Sub"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/add/y"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
  attr {
    key: "dtype"
    value {
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/add"
  op: "Add"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/moments/variance"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Const"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
  attr {
    key: "dtype"
    value {
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
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Const_1"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
  attr {
    key: "dtype"
    value {
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
        float_val: inf
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/clip_by_value/Minimum"
  op: "Minimum"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/add"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/clip_by_value"
  op: "Maximum"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/clip_by_value/Minimum"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Sqrt"
  op: "Sqrt"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/truediv"
  op: "RealDiv"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/sub"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Sqrt"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/truediv"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_2/shape"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_2"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_2/Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_2/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/gamma/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/mul"
  op: "Mul"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_3/shape"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_3"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_3/Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/group_normalization_1/beta/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/add_1"
  op: "Add"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/mul"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_4"
  op: "Reshape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/add_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/group_normalization_1/Reshape_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/TensorArrayWrite/TensorArrayWriteV3"
  op: "TensorArrayWriteV3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/TensorArrayWrite/TensorArrayWriteV3/Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Elu"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Elu"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/TensorArrayWrite/TensorArrayWriteV3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray"
  attr {
    key: "T"
    value {
      type: DT_RESOURCE
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Elu"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/add_1/y"
  op: "Const"
  input: "^gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/add_1"
  op: "Add"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Identity_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/add_1/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/NextIteration"
  op: "NextIteration"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/NextIteration_1"
  op: "NextIteration"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/add_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/NextIteration_2"
  op: "NextIteration"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/TensorArrayWrite/TensorArrayWriteV3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/NextIteration_3"
  op: "NextIteration"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Elu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Exit"
  op: "Exit"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Exit_1"
  op: "Exit"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Exit_2"
  op: "Exit"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Exit_3"
  op: "Exit"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Switch_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayStack/TensorArraySizeV3"
  op: "TensorArraySizeV3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Exit_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayStack/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray"
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
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayStack/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray"
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
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayStack/range"
  op: "Range"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayStack/range/start"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayStack/TensorArraySizeV3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayStack/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayStack/TensorArrayGatherV3"
  op: "TensorArrayGatherV3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayStack/range"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Exit_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 8
        }
        dim {
          size: 8
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/sub"
  op: "Sub"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Exit_1"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayReadV3"
  op: "TensorArrayReadV3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArray"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/sub"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/while/Exit_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/transpose_1/perm"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/transpose_1"
  op: "Transpose"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/TensorArrayStack/TensorArrayGatherV3"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/Shape"
  op: "Shape"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/ExpandDims/dim"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/ExpandDims"
  op: "ExpandDims"
  input: "gModel_0/gLDec_4to8/simple_conv_rn_n2d_1/transpose_1"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/ExpandDims/dim"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tdim"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/Tile/multiples"
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
            size: 6
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/Tile"
  op: "Tile"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/ExpandDims"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/Tile/multiples"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/Const"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/mul"
  op: "Mul"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/Shape"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/Tile"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/Const_1"
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
        int_val: 8
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/split/split_dim"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/split"
  op: "Split"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split/split_dim"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 8
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/concat/axis"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:1"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:1"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:2"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:2"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:3"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:3"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:4"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:4"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:5"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:5"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:6"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:6"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:7"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split:7"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/concat/axis"
  attr {
    key: "N"
    value {
      i: 16
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
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/Const_2"
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
        int_val: 8
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1/split_dim"
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
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1"
  op: "Split"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1/split_dim"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 8
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/concat_1/axis"
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
  name: "gModel_0/gLDec_8to16/up_sampling3d_2/concat_1"
  op: "ConcatV2"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:1"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:1"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:2"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:2"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:3"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:3"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:4"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:4"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:5"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:5"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:6"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:6"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:7"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/split_1:7"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 16
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
  name: "gModel_0/gLDec_8to16/concatenate_2/concat/axis"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/concatenate_2/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_8to16/up_sampling3d_2/concat_1"
  input: "gModel_0/gLEnc_16to8/elu_7/Elu"
  input: "gModel_0/gLDec_8to16/concatenate_2/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_8to16/lambda_40/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_40/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_8to16/concatenate_2/concat"
  input: "gModel_0/gLDec_8to16/lambda_40/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_40/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 16
        }
        dim {
          size: 16
        }
        dim {
          size: 256
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_40/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_40/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLDec_8to16/lambda_40/Placeholder"
  input: "gModel_0/gLDec_8to16/lambda_40/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_41/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\022\000\000\000\022\000\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_41/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/lambda_40/MirrorPad"
  input: "gModel_0/gLDec_8to16/lambda_41/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_41/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 18
        }
        dim {
          size: 18
        }
        dim {
          size: 256
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_41/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\022\000\000\000\022\000\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_41/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/lambda_41/Placeholder"
  input: "gModel_0/gLDec_8to16/lambda_41/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal/stddev"
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
        float_val: 0.03349468111991882
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 267072
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal"
  op: "Add"
  input: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal/mul"
  input: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/conv2d_14/kernel"
  op: "VariableV2"
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
          size: 256
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
  name: "gModel_0/gLDec_8to16/conv2d_14/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_8to16/conv2d_14/kernel"
  input: "gModel_0/gLDec_8to16/conv2d_14/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/conv2d_14/kernel"
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
  name: "gModel_0/gLDec_8to16/conv2d_14/kernel/read"
  op: "Identity"
  input: "gModel_0/gLDec_8to16/conv2d_14/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/conv2d_14/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/conv2d_14/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/conv2d_14/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_8to16/conv2d_14/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_8to16/conv2d_14/bias"
  input: "gModel_0/gLDec_8to16/conv2d_14/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/conv2d_14/bias"
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
  name: "gModel_0/gLDec_8to16/conv2d_14/bias/read"
  op: "Identity"
  input: "gModel_0/gLDec_8to16/conv2d_14/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/conv2d_14/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/conv2d_14/convolution/dilation_rate"
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
  name: "gModel_0/gLDec_8to16/conv2d_14/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_8to16/lambda_41/Reshape"
  input: "gModel_0/gLDec_8to16/conv2d_14/kernel/read"
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
  name: "gModel_0/gLDec_8to16/conv2d_14/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_8to16/conv2d_14/convolution"
  input: "gModel_0/gLDec_8to16/conv2d_14/bias/read"
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
}
node {
  name: "gModel_0/gLDec_8to16/lambda_42/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_42/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/conv2d_14/BiasAdd"
  input: "gModel_0/gLDec_8to16/lambda_42/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_42/Placeholder"
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
          size: 32
        }
        dim {
          size: 16
        }
        dim {
          size: 16
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_42/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/lambda_42/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/lambda_42/Placeholder"
  input: "gModel_0/gLDec_8to16/lambda_42/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/elu_14/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_8to16/lambda_42/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal/stddev"
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
        float_val: 0.03349468111991882
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 6366070
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal"
  op: "Add"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal/mul"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/kernel"
  op: "VariableV2"
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
          size: 256
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/kernel"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/kernel"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/kernel/read"
  op: "Identity"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/bias"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/bias"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/bias/read"
  op: "Identity"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/zeros/shape_as_tensor"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/zeros/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/zeros"
  op: "Fill"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/zeros/shape_as_tensor"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Variable"
  op: "VariableV2"
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
          size: 16
        }
        dim {
          size: 16
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Variable/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Variable"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Variable"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Variable/read"
  op: "Identity"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Variable"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/transpose/perm"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/transpose"
  op: "Transpose"
  input: "gModel_0/gLDec_8to16/elu_14/Elu"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Shape"
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
            size: 5
          }
        }
        tensor_content: " \000\000\000\001\000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Shape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice/stack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice/stack_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice_1/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice_1/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice_1/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/transpose"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice_1/stack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/concat/axis"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Variable/read"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/MirrorPad/paddings"
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
            size: 4
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/concat"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/convolution/dilation_rate"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/MirrorPad"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/kernel/read"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/convolution"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/bias/read"
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
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Const"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/gamma"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/gamma/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/gamma"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/gamma"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/gamma/read"
  op: "Identity"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/gamma"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/gamma"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Const_1"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/beta"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/beta/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/beta"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/beta"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/beta/read"
  op: "Identity"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/beta"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Shape"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Shape_1"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Shape_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice/stack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice/stack_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_1/stack"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_1/stack_1"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_1/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Shape_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_1/stack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_2/stack"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_2/stack_1"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_2/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_2"
  op: "StridedSlice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Shape_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_2/stack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_2/stack_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_2/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_3/stack"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_3/stack_1"
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
            size: 1
          }
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_3/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_3"
  op: "StridedSlice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Shape_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_3/stack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_3/stack_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_3/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/stack/1"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/stack/4"
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
        int_val: 128
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/stack"
  op: "Pack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/stack/1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/strided_slice_2"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/stack/4"
  attr {
    key: "N"
    value {
      i: 5
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/BiasAdd"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/mean/reduction_indices"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/mean"
  op: "Mean"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/mean/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/StopGradient"
  op: "StopGradient"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/SquaredDifference"
  op: "SquaredDifference"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/StopGradient"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/variance/reduction_indices"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/variance"
  op: "Mean"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/SquaredDifference"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/variance/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/sub"
  op: "Sub"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/add/y"
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/add"
  op: "Add"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/moments/variance"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Const_2"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Const_3"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/clip_by_value/Minimum"
  op: "Minimum"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/add"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/clip_by_value"
  op: "Maximum"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/clip_by_value/Minimum"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Sqrt"
  op: "Sqrt"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/truediv"
  op: "RealDiv"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/sub"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Sqrt"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/truediv"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_2/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_2"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/gamma/read"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/mul"
  op: "Mul"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_3/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_3"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/beta/read"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/add_1"
  op: "Add"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/mul"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_4"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/add_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/Reshape_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray"
  op: "TensorArrayV3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        unknown_rank: true
      }
    }
  }
  attr {
    key: "identical_element_shapes"
    value {
      b: true
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "output_ta"
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray_1"
  op: "TensorArrayV3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        unknown_rank: true
      }
    }
  }
  attr {
    key: "identical_element_shapes"
    value {
      b: true
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "input_ta"
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/Shape"
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
            size: 5
          }
        }
        tensor_content: " \000\000\000\001\000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/Shape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/strided_slice/stack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/strided_slice/stack_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/range"
  op: "Range"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/range/start"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/strided_slice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"
  op: "TensorArrayScatterV3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/range"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/transpose"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/transpose"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/time"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/maximum_iterations"
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
        int_val: 32
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/iteration_counter"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/iteration_counter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Enter_1"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/time"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Enter_2"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Enter_3"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/Variable/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge"
  op: "Merge"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge_1"
  op: "Merge"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Enter_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/NextIteration_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge_2"
  op: "Merge"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Enter_2"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/NextIteration_2"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge_3"
  op: "Merge"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Enter_3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/NextIteration_3"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Less"
  op: "Less"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Less/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Less/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/maximum_iterations"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Less_1"
  op: "Less"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Less_1/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Less_1/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/strided_slice"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/LogicalAnd"
  op: "LogicalAnd"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Less"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Less_1"
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/LoopCond"
  op: "LoopCond"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/LogicalAnd"
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch"
  op: "Switch"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/LoopCond"
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
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch_1"
  op: "Switch"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/LoopCond"
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
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge_1"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch_2"
  op: "Switch"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge_2"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge_2"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch_3"
  op: "Switch"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge_3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Merge_3"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
  op: "Identity"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity_1"
  op: "Identity"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch_1:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity_2"
  op: "Identity"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch_2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity_3"
  op: "Identity"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch_3:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/add/y"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/add"
  op: "Add"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/add/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/TensorArrayReadV3"
  op: "TensorArrayReadV3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/TensorArrayReadV3/Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/TensorArrayReadV3/Enter_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/TensorArrayReadV3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray_1"
  attr {
    key: "T"
    value {
      type: DT_RESOURCE
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/TensorArrayReadV3/Enter_1"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/concat/axis"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/TensorArrayReadV3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity_3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/MirrorPad/paddings"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/concat"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/convolution/dilation_rate"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/MirrorPad"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/convolution/Enter"
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/convolution/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/convolution"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/BiasAdd/Enter"
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
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/BiasAdd/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Shape"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
        tensor_content: "\001\000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Shape_1"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
        tensor_content: "\001\000\000\000\020\000\000\000\020\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice/stack"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Shape_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice/stack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice/stack_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_1/stack"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_1/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_1/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Shape_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_1/stack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_2/stack"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_2/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_2/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_2"
  op: "StridedSlice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Shape_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_2/stack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_2/stack_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_2/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_3/stack"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_3/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_3/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_3"
  op: "StridedSlice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Shape_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_3/stack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_3/stack_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_3/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/stack/1"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/stack/4"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
        int_val: 128
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/stack"
  op: "Pack"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/stack/1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/strided_slice_2"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/stack/4"
  attr {
    key: "N"
    value {
      i: 5
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/BiasAdd"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/mean/reduction_indices"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/mean"
  op: "Mean"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/mean/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/StopGradient"
  op: "StopGradient"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/SquaredDifference"
  op: "SquaredDifference"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/StopGradient"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/variance/reduction_indices"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/variance"
  op: "Mean"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/SquaredDifference"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/variance/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/sub"
  op: "Sub"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/add/y"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
  attr {
    key: "dtype"
    value {
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/add"
  op: "Add"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/moments/variance"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Const"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
  attr {
    key: "dtype"
    value {
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
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Const_1"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
  attr {
    key: "dtype"
    value {
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
        float_val: inf
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/clip_by_value/Minimum"
  op: "Minimum"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/add"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/clip_by_value"
  op: "Maximum"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/clip_by_value/Minimum"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Sqrt"
  op: "Sqrt"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/truediv"
  op: "RealDiv"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/sub"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Sqrt"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/truediv"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_2/shape"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_2"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_2/Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_2/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/gamma/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/mul"
  op: "Mul"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_3/shape"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_3"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_3/Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/group_normalization_2/beta/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/add_1"
  op: "Add"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/mul"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_4"
  op: "Reshape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/add_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/group_normalization_2/Reshape_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/TensorArrayWrite/TensorArrayWriteV3"
  op: "TensorArrayWriteV3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/TensorArrayWrite/TensorArrayWriteV3/Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Elu"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Elu"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/TensorArrayWrite/TensorArrayWriteV3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray"
  attr {
    key: "T"
    value {
      type: DT_RESOURCE
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Elu"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/add_1/y"
  op: "Const"
  input: "^gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/add_1"
  op: "Add"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Identity_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/add_1/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/NextIteration"
  op: "NextIteration"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/NextIteration_1"
  op: "NextIteration"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/add_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/NextIteration_2"
  op: "NextIteration"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/TensorArrayWrite/TensorArrayWriteV3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/NextIteration_3"
  op: "NextIteration"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Elu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Exit"
  op: "Exit"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Exit_1"
  op: "Exit"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Exit_2"
  op: "Exit"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Exit_3"
  op: "Exit"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Switch_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayStack/TensorArraySizeV3"
  op: "TensorArraySizeV3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Exit_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayStack/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray"
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
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayStack/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray"
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
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayStack/range"
  op: "Range"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayStack/range/start"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayStack/TensorArraySizeV3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayStack/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayStack/TensorArrayGatherV3"
  op: "TensorArrayGatherV3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayStack/range"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Exit_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 16
        }
        dim {
          size: 16
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/sub"
  op: "Sub"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Exit_1"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayReadV3"
  op: "TensorArrayReadV3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArray"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/sub"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/while/Exit_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/transpose_1/perm"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/transpose_1"
  op: "Transpose"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/TensorArrayStack/TensorArrayGatherV3"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/Shape"
  op: "Shape"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/ExpandDims/dim"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/ExpandDims"
  op: "ExpandDims"
  input: "gModel_0/gLDec_8to16/simple_conv_rn_n2d_2/transpose_1"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/ExpandDims/dim"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tdim"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/Tile/multiples"
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
            size: 6
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/Tile"
  op: "Tile"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/ExpandDims"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/Tile/multiples"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/Const"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/mul"
  op: "Mul"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/Shape"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/Tile"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/Const_1"
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
        int_val: 16
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/split/split_dim"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/split"
  op: "Split"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split/split_dim"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 16
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/concat/axis"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:1"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:1"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:2"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:2"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:3"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:3"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:4"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:4"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:5"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:5"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:6"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:6"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:7"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:7"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:8"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:8"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:9"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:9"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:10"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:10"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:11"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:11"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:12"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:12"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:13"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:13"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:14"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:14"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:15"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split:15"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/concat/axis"
  attr {
    key: "N"
    value {
      i: 32
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
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/Const_2"
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
        int_val: 16
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1/split_dim"
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
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1"
  op: "Split"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1/split_dim"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 16
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/concat_1/axis"
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
  name: "gModel_0/gLDec_16to32/up_sampling3d_3/concat_1"
  op: "ConcatV2"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:1"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:1"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:2"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:2"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:3"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:3"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:4"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:4"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:5"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:5"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:6"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:6"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:7"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:7"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:8"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:8"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:9"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:9"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:10"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:10"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:11"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:11"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:12"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:12"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:13"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:13"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:14"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:14"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:15"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/split_1:15"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 32
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
  name: "gModel_0/gLDec_16to32/concatenate_3/concat/axis"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/concatenate_3/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_16to32/up_sampling3d_3/concat_1"
  input: "gModel_0/gLEnc_32to16/elu_5/Elu"
  input: "gModel_0/gLDec_16to32/concatenate_3/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_16to32/lambda_43/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_43/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_16to32/concatenate_3/concat"
  input: "gModel_0/gLDec_16to32/lambda_43/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_43/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 32
        }
        dim {
          size: 32
        }
        dim {
          size: 256
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_43/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_43/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLDec_16to32/lambda_43/Placeholder"
  input: "gModel_0/gLDec_16to32/lambda_43/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_44/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\"\000\000\000\"\000\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_44/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/lambda_43/MirrorPad"
  input: "gModel_0/gLDec_16to32/lambda_44/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_44/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 34
        }
        dim {
          size: 34
        }
        dim {
          size: 256
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_44/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\"\000\000\000\"\000\000\000\000\001\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_44/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/lambda_44/Placeholder"
  input: "gModel_0/gLDec_16to32/lambda_44/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal/stddev"
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
        float_val: 0.03349468111991882
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 1940102
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal"
  op: "Add"
  input: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal/mul"
  input: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/conv2d_15/kernel"
  op: "VariableV2"
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
          size: 256
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
  name: "gModel_0/gLDec_16to32/conv2d_15/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_16to32/conv2d_15/kernel"
  input: "gModel_0/gLDec_16to32/conv2d_15/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/conv2d_15/kernel"
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
  name: "gModel_0/gLDec_16to32/conv2d_15/kernel/read"
  op: "Identity"
  input: "gModel_0/gLDec_16to32/conv2d_15/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/conv2d_15/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/conv2d_15/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/conv2d_15/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_16to32/conv2d_15/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_16to32/conv2d_15/bias"
  input: "gModel_0/gLDec_16to32/conv2d_15/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/conv2d_15/bias"
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
  name: "gModel_0/gLDec_16to32/conv2d_15/bias/read"
  op: "Identity"
  input: "gModel_0/gLDec_16to32/conv2d_15/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/conv2d_15/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/conv2d_15/convolution/dilation_rate"
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
  name: "gModel_0/gLDec_16to32/conv2d_15/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_16to32/lambda_44/Reshape"
  input: "gModel_0/gLDec_16to32/conv2d_15/kernel/read"
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
  name: "gModel_0/gLDec_16to32/conv2d_15/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_16to32/conv2d_15/convolution"
  input: "gModel_0/gLDec_16to32/conv2d_15/bias/read"
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
}
node {
  name: "gModel_0/gLDec_16to32/lambda_45/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000 \000\000\000 \000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_45/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/conv2d_15/BiasAdd"
  input: "gModel_0/gLDec_16to32/lambda_45/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_45/Placeholder"
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
          size: 32
        }
        dim {
          size: 32
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_45/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000 \000\000\000 \000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/lambda_45/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/lambda_45/Placeholder"
  input: "gModel_0/gLDec_16to32/lambda_45/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/elu_15/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_16to32/lambda_45/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\000\001\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal/stddev"
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
        float_val: 0.03349468111991882
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 4620221
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal"
  op: "Add"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal/mul"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/kernel"
  op: "VariableV2"
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
          size: 256
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/kernel"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/kernel"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/kernel/read"
  op: "Identity"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/bias"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/bias"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/bias/read"
  op: "Identity"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/zeros/shape_as_tensor"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000 \000\000\000 \000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/zeros/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/zeros"
  op: "Fill"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/zeros/shape_as_tensor"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Variable"
  op: "VariableV2"
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
          size: 32
        }
        dim {
          size: 32
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Variable/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Variable"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Variable"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Variable/read"
  op: "Identity"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Variable"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/transpose/perm"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/transpose"
  op: "Transpose"
  input: "gModel_0/gLDec_16to32/elu_15/Elu"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Shape"
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
            size: 5
          }
        }
        tensor_content: " \000\000\000\001\000\000\000 \000\000\000 \000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Shape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice/stack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice/stack_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice_1/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice_1/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice_1/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/transpose"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice_1/stack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/concat/axis"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Variable/read"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/MirrorPad/paddings"
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
            size: 4
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/concat"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/convolution/dilation_rate"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/MirrorPad"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/kernel/read"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/convolution"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/bias/read"
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
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Const"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/gamma"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/gamma/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/gamma"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/gamma"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/gamma/read"
  op: "Identity"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/gamma"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/gamma"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Const_1"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/beta"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/beta/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/beta"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/beta"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/beta/read"
  op: "Identity"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/beta"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Shape"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000 \000\000\000 \000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Shape_1"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000 \000\000\000 \000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Shape_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice/stack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice/stack_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_1/stack"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_1/stack_1"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_1/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Shape_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_1/stack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_2/stack"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_2/stack_1"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_2/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_2"
  op: "StridedSlice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Shape_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_2/stack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_2/stack_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_2/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_3/stack"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_3/stack_1"
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
            size: 1
          }
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_3/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_3"
  op: "StridedSlice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Shape_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_3/stack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_3/stack_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_3/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/stack/1"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/stack/4"
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
        int_val: 128
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/stack"
  op: "Pack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/stack/1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/strided_slice_2"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/stack/4"
  attr {
    key: "N"
    value {
      i: 5
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/BiasAdd"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/mean/reduction_indices"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/mean"
  op: "Mean"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/mean/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/StopGradient"
  op: "StopGradient"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/SquaredDifference"
  op: "SquaredDifference"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/StopGradient"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/variance/reduction_indices"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/variance"
  op: "Mean"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/SquaredDifference"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/variance/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/sub"
  op: "Sub"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/add/y"
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/add"
  op: "Add"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/moments/variance"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Const_2"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Const_3"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/clip_by_value/Minimum"
  op: "Minimum"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/add"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/clip_by_value"
  op: "Maximum"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/clip_by_value/Minimum"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Sqrt"
  op: "Sqrt"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/truediv"
  op: "RealDiv"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/sub"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Sqrt"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/truediv"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_2/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_2"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/gamma/read"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/mul"
  op: "Mul"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_3/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_3"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/beta/read"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/add_1"
  op: "Add"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/mul"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_4"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/add_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/Reshape_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray"
  op: "TensorArrayV3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        unknown_rank: true
      }
    }
  }
  attr {
    key: "identical_element_shapes"
    value {
      b: true
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "output_ta"
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray_1"
  op: "TensorArrayV3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        unknown_rank: true
      }
    }
  }
  attr {
    key: "identical_element_shapes"
    value {
      b: true
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "input_ta"
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/Shape"
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
            size: 5
          }
        }
        tensor_content: " \000\000\000\001\000\000\000 \000\000\000 \000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/Shape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/strided_slice/stack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/strided_slice/stack_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/range"
  op: "Range"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/range/start"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/strided_slice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"
  op: "TensorArrayScatterV3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/range"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/transpose"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/transpose"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/time"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/maximum_iterations"
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
        int_val: 32
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/iteration_counter"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/iteration_counter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Enter_1"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/time"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Enter_2"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Enter_3"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/Variable/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge"
  op: "Merge"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge_1"
  op: "Merge"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Enter_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/NextIteration_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge_2"
  op: "Merge"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Enter_2"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/NextIteration_2"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge_3"
  op: "Merge"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Enter_3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/NextIteration_3"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Less"
  op: "Less"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Less/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Less/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/maximum_iterations"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Less_1"
  op: "Less"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Less_1/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Less_1/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/strided_slice"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/LogicalAnd"
  op: "LogicalAnd"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Less"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Less_1"
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/LoopCond"
  op: "LoopCond"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/LogicalAnd"
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch"
  op: "Switch"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/LoopCond"
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
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch_1"
  op: "Switch"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/LoopCond"
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
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge_1"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch_2"
  op: "Switch"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge_2"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge_2"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch_3"
  op: "Switch"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge_3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Merge_3"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
  op: "Identity"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity_1"
  op: "Identity"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch_1:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity_2"
  op: "Identity"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch_2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity_3"
  op: "Identity"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch_3:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/add/y"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/add"
  op: "Add"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/add/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/TensorArrayReadV3"
  op: "TensorArrayReadV3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/TensorArrayReadV3/Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/TensorArrayReadV3/Enter_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/TensorArrayReadV3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray_1"
  attr {
    key: "T"
    value {
      type: DT_RESOURCE
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/TensorArrayReadV3/Enter_1"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/concat/axis"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/TensorArrayReadV3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity_3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/MirrorPad/paddings"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/concat"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/convolution/dilation_rate"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/MirrorPad"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/convolution/Enter"
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/convolution/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/convolution"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/BiasAdd/Enter"
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
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/BiasAdd/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Shape"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
        tensor_content: "\001\000\000\000 \000\000\000 \000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Shape_1"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
        tensor_content: "\001\000\000\000 \000\000\000 \000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice/stack"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Shape_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice/stack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice/stack_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_1/stack"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_1/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_1/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Shape_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_1/stack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_2/stack"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_2/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_2/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_2"
  op: "StridedSlice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Shape_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_2/stack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_2/stack_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_2/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_3/stack"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_3/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_3/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_3"
  op: "StridedSlice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Shape_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_3/stack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_3/stack_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_3/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/stack/1"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/stack/4"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
        int_val: 128
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/stack"
  op: "Pack"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/stack/1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/strided_slice_2"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/stack/4"
  attr {
    key: "N"
    value {
      i: 5
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/BiasAdd"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/mean/reduction_indices"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/mean"
  op: "Mean"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/mean/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/StopGradient"
  op: "StopGradient"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/SquaredDifference"
  op: "SquaredDifference"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/StopGradient"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/variance/reduction_indices"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/variance"
  op: "Mean"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/SquaredDifference"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/variance/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/sub"
  op: "Sub"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/add/y"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
  attr {
    key: "dtype"
    value {
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/add"
  op: "Add"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/moments/variance"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Const"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
  attr {
    key: "dtype"
    value {
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
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Const_1"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
  attr {
    key: "dtype"
    value {
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
        float_val: inf
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/clip_by_value/Minimum"
  op: "Minimum"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/add"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/clip_by_value"
  op: "Maximum"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/clip_by_value/Minimum"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Sqrt"
  op: "Sqrt"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/truediv"
  op: "RealDiv"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/sub"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Sqrt"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/truediv"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_2/shape"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_2"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_2/Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_2/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/gamma/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/mul"
  op: "Mul"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_3/shape"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\200\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_3"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_3/Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/group_normalization_3/beta/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/add_1"
  op: "Add"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/mul"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_4"
  op: "Reshape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/add_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/group_normalization_3/Reshape_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/TensorArrayWrite/TensorArrayWriteV3"
  op: "TensorArrayWriteV3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/TensorArrayWrite/TensorArrayWriteV3/Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Elu"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Elu"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/TensorArrayWrite/TensorArrayWriteV3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray"
  attr {
    key: "T"
    value {
      type: DT_RESOURCE
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Elu"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/add_1/y"
  op: "Const"
  input: "^gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/add_1"
  op: "Add"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Identity_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/add_1/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/NextIteration"
  op: "NextIteration"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/NextIteration_1"
  op: "NextIteration"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/add_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/NextIteration_2"
  op: "NextIteration"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/TensorArrayWrite/TensorArrayWriteV3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/NextIteration_3"
  op: "NextIteration"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Elu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Exit"
  op: "Exit"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Exit_1"
  op: "Exit"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Exit_2"
  op: "Exit"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Exit_3"
  op: "Exit"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Switch_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayStack/TensorArraySizeV3"
  op: "TensorArraySizeV3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Exit_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayStack/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray"
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
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayStack/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray"
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
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayStack/range"
  op: "Range"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayStack/range/start"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayStack/TensorArraySizeV3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayStack/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayStack/TensorArrayGatherV3"
  op: "TensorArrayGatherV3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayStack/range"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Exit_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/sub"
  op: "Sub"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Exit_1"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayReadV3"
  op: "TensorArrayReadV3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArray"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/sub"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/while/Exit_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/transpose_1/perm"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/transpose_1"
  op: "Transpose"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/TensorArrayStack/TensorArrayGatherV3"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/Shape"
  op: "Shape"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/ExpandDims/dim"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/ExpandDims"
  op: "ExpandDims"
  input: "gModel_0/gLDec_16to32/simple_conv_rn_n2d_3/transpose_1"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/ExpandDims/dim"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tdim"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/Tile/multiples"
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
            size: 6
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/Tile"
  op: "Tile"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/ExpandDims"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/Tile/multiples"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/Const"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/mul"
  op: "Mul"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/Shape"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/Tile"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/Const_1"
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
        int_val: 32
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/split/split_dim"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/split"
  op: "Split"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split/split_dim"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/concat/axis"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:1"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:1"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:2"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:2"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:3"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:3"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:4"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:4"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:5"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:5"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:6"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:6"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:7"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:7"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:8"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:8"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:9"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:9"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:10"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:10"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:11"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:11"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:12"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:12"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:13"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:13"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:14"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:14"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:15"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:15"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:16"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:16"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:17"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:17"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:18"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:18"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:19"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:19"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:20"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:20"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:21"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:21"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:22"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:22"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:23"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:23"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:24"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:24"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:25"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:25"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:26"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:26"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:27"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:27"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:28"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:28"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:29"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:29"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:30"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:30"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:31"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split:31"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/concat/axis"
  attr {
    key: "N"
    value {
      i: 64
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
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/Const_2"
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
        int_val: 32
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1/split_dim"
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
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1"
  op: "Split"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1/split_dim"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/concat_1/axis"
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
  name: "gModel_0/gLDec_32to64/up_sampling3d_4/concat_1"
  op: "ConcatV2"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:1"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:1"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:2"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:2"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:3"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:3"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:4"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:4"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:5"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:5"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:6"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:6"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:7"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:7"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:8"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:8"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:9"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:9"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:10"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:10"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:11"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:11"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:12"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:12"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:13"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:13"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:14"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:14"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:15"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:15"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:16"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:16"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:17"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:17"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:18"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:18"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:19"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:19"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:20"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:20"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:21"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:21"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:22"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:22"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:23"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:23"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:24"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:24"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:25"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:25"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:26"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:26"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:27"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:27"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:28"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:28"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:29"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:29"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:30"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:30"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:31"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/split_1:31"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 64
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
  name: "gModel_0/gLDec_32to64/concatenate_4/concat/axis"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/concatenate_4/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_32to64/up_sampling3d_4/concat_1"
  input: "gModel_0/gLEnc_64to32/elu_3/Elu"
  input: "gModel_0/gLDec_32to64/concatenate_4/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_32to64/lambda_46/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_46/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_32to64/concatenate_4/concat"
  input: "gModel_0/gLDec_32to64/lambda_46/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_46/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 192
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_46/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_46/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLDec_32to64/lambda_46/Placeholder"
  input: "gModel_0/gLDec_32to64/lambda_46/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_47/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377B\000\000\000B\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_47/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/lambda_46/MirrorPad"
  input: "gModel_0/gLDec_32to64/lambda_47/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_47/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 66
        }
        dim {
          size: 66
        }
        dim {
          size: 192
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_47/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377B\000\000\000B\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_47/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/lambda_47/Placeholder"
  input: "gModel_0/gLDec_32to64/lambda_47/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\300\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal/stddev"
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
        float_val: 0.03867632895708084
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 8548488
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal"
  op: "Add"
  input: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal/mul"
  input: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/conv2d_16/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_32to64/conv2d_16/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_32to64/conv2d_16/kernel"
  input: "gModel_0/gLDec_32to64/conv2d_16/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/conv2d_16/kernel"
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
  name: "gModel_0/gLDec_32to64/conv2d_16/kernel/read"
  op: "Identity"
  input: "gModel_0/gLDec_32to64/conv2d_16/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/conv2d_16/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/conv2d_16/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/conv2d_16/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_32to64/conv2d_16/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_32to64/conv2d_16/bias"
  input: "gModel_0/gLDec_32to64/conv2d_16/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/conv2d_16/bias"
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
  name: "gModel_0/gLDec_32to64/conv2d_16/bias/read"
  op: "Identity"
  input: "gModel_0/gLDec_32to64/conv2d_16/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/conv2d_16/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/conv2d_16/convolution/dilation_rate"
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
  name: "gModel_0/gLDec_32to64/conv2d_16/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_32to64/lambda_47/Reshape"
  input: "gModel_0/gLDec_32to64/conv2d_16/kernel/read"
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
  name: "gModel_0/gLDec_32to64/conv2d_16/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_32to64/conv2d_16/convolution"
  input: "gModel_0/gLDec_32to64/conv2d_16/bias/read"
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
}
node {
  name: "gModel_0/gLDec_32to64/lambda_48/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_48/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/conv2d_16/BiasAdd"
  input: "gModel_0/gLDec_32to64/lambda_48/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_48/Placeholder"
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
          size: 32
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_48/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/lambda_48/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/lambda_48/Placeholder"
  input: "gModel_0/gLDec_32to64/lambda_48/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/elu_16/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_32to64/lambda_48/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\200\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal/stddev"
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
        float_val: 0.04736863449215889
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 8744741
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal"
  op: "Add"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal/mul"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/kernel"
  op: "VariableV2"
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
          size: 128
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/kernel"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/kernel"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/kernel/read"
  op: "Identity"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/bias"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/bias"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/bias/read"
  op: "Identity"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/zeros/shape_as_tensor"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/zeros/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/zeros"
  op: "Fill"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/zeros/shape_as_tensor"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Variable"
  op: "VariableV2"
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
          size: 64
        }
        dim {
          size: 64
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Variable/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Variable"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Variable"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Variable/read"
  op: "Identity"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Variable"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose/perm"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose"
  op: "Transpose"
  input: "gModel_0/gLDec_32to64/elu_16/Elu"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Shape"
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
            size: 5
          }
        }
        tensor_content: " \000\000\000\001\000\000\000@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Shape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice/stack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice/stack_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice_1/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice_1/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice_1/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice_1/stack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/concat/axis"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Variable/read"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/MirrorPad/paddings"
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
            size: 4
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/concat"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/convolution/dilation_rate"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/MirrorPad"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/kernel/read"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/convolution"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/bias/read"
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
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Const"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/gamma"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/gamma/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/gamma"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/gamma"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/gamma/read"
  op: "Identity"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/gamma"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/gamma"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Const_1"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/beta"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/beta/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/beta"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/beta"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/beta/read"
  op: "Identity"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/beta"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Shape"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Shape_1"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Shape_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice/stack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice/stack_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_1/stack"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_1/stack_1"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_1/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Shape_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_1/stack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_2/stack"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_2/stack_1"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_2/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_2"
  op: "StridedSlice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Shape_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_2/stack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_2/stack_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_2/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_3/stack"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_3/stack_1"
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
            size: 1
          }
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_3/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_3"
  op: "StridedSlice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Shape_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_3/stack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_3/stack_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_3/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/stack/1"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/stack/4"
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
        int_val: 64
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/stack"
  op: "Pack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/stack/1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/strided_slice_2"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/stack/4"
  attr {
    key: "N"
    value {
      i: 5
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/BiasAdd"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/mean/reduction_indices"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/mean"
  op: "Mean"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/mean/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/StopGradient"
  op: "StopGradient"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/SquaredDifference"
  op: "SquaredDifference"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/StopGradient"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/variance/reduction_indices"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/variance"
  op: "Mean"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/SquaredDifference"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/variance/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/sub"
  op: "Sub"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/add/y"
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/add"
  op: "Add"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/moments/variance"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Const_2"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Const_3"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/clip_by_value/Minimum"
  op: "Minimum"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/add"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/clip_by_value"
  op: "Maximum"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/clip_by_value/Minimum"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Sqrt"
  op: "Sqrt"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/truediv"
  op: "RealDiv"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/sub"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Sqrt"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/truediv"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_2/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_2"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/gamma/read"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/mul"
  op: "Mul"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_3/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_3"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/beta/read"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/add_1"
  op: "Add"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/mul"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_4"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/add_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/Reshape_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray"
  op: "TensorArrayV3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        unknown_rank: true
      }
    }
  }
  attr {
    key: "identical_element_shapes"
    value {
      b: true
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "output_ta"
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray_1"
  op: "TensorArrayV3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        unknown_rank: true
      }
    }
  }
  attr {
    key: "identical_element_shapes"
    value {
      b: true
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "input_ta"
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/Shape"
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
            size: 5
          }
        }
        tensor_content: " \000\000\000\001\000\000\000@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/Shape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/strided_slice/stack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/strided_slice/stack_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/range"
  op: "Range"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/range/start"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/strided_slice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"
  op: "TensorArrayScatterV3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/range"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/time"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/maximum_iterations"
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
        int_val: 32
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/iteration_counter"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/iteration_counter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Enter_1"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/time"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Enter_2"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Enter_3"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/Variable/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge"
  op: "Merge"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge_1"
  op: "Merge"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Enter_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/NextIteration_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge_2"
  op: "Merge"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Enter_2"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/NextIteration_2"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge_3"
  op: "Merge"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Enter_3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/NextIteration_3"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Less"
  op: "Less"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Less/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Less/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/maximum_iterations"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Less_1"
  op: "Less"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Less_1/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Less_1/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/strided_slice"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/LogicalAnd"
  op: "LogicalAnd"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Less"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Less_1"
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/LoopCond"
  op: "LoopCond"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/LogicalAnd"
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch"
  op: "Switch"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/LoopCond"
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
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch_1"
  op: "Switch"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/LoopCond"
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
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge_1"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch_2"
  op: "Switch"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge_2"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge_2"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch_3"
  op: "Switch"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge_3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Merge_3"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
  op: "Identity"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity_1"
  op: "Identity"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch_1:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity_2"
  op: "Identity"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch_2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity_3"
  op: "Identity"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch_3:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/add/y"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/add"
  op: "Add"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/add/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/TensorArrayReadV3"
  op: "TensorArrayReadV3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/TensorArrayReadV3/Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/TensorArrayReadV3/Enter_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/TensorArrayReadV3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray_1"
  attr {
    key: "T"
    value {
      type: DT_RESOURCE
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/TensorArrayReadV3/Enter_1"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/concat/axis"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/TensorArrayReadV3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity_3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/MirrorPad/paddings"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/concat"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/convolution/dilation_rate"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/MirrorPad"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/convolution/Enter"
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/convolution/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/convolution"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/BiasAdd/Enter"
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
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/BiasAdd/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Shape"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
        tensor_content: "\001\000\000\000@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Shape_1"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
        tensor_content: "\001\000\000\000@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice/stack"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Shape_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice/stack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice/stack_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_1/stack"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_1/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_1/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Shape_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_1/stack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_2/stack"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_2/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_2/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_2"
  op: "StridedSlice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Shape_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_2/stack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_2/stack_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_2/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_3/stack"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_3/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_3/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_3"
  op: "StridedSlice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Shape_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_3/stack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_3/stack_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_3/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/stack/1"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/stack/4"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
        int_val: 64
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/stack"
  op: "Pack"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/stack/1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/strided_slice_2"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/stack/4"
  attr {
    key: "N"
    value {
      i: 5
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/BiasAdd"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/mean/reduction_indices"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/mean"
  op: "Mean"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/mean/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/StopGradient"
  op: "StopGradient"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/SquaredDifference"
  op: "SquaredDifference"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/StopGradient"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/variance/reduction_indices"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/variance"
  op: "Mean"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/SquaredDifference"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/variance/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/sub"
  op: "Sub"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/add/y"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
  attr {
    key: "dtype"
    value {
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/add"
  op: "Add"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/moments/variance"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Const"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
  attr {
    key: "dtype"
    value {
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
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Const_1"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
  attr {
    key: "dtype"
    value {
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
        float_val: inf
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/clip_by_value/Minimum"
  op: "Minimum"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/add"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/clip_by_value"
  op: "Maximum"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/clip_by_value/Minimum"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Sqrt"
  op: "Sqrt"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/truediv"
  op: "RealDiv"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/sub"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Sqrt"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/truediv"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_2/shape"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_2"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_2/Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_2/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/gamma/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/mul"
  op: "Mul"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_3/shape"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_3"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_3/Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/group_normalization_4/beta/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/add_1"
  op: "Add"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/mul"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_4"
  op: "Reshape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/add_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/group_normalization_4/Reshape_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/TensorArrayWrite/TensorArrayWriteV3"
  op: "TensorArrayWriteV3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/TensorArrayWrite/TensorArrayWriteV3/Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Elu"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Elu"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/TensorArrayWrite/TensorArrayWriteV3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray"
  attr {
    key: "T"
    value {
      type: DT_RESOURCE
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Elu"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/add_1/y"
  op: "Const"
  input: "^gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/add_1"
  op: "Add"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Identity_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/add_1/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/NextIteration"
  op: "NextIteration"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/NextIteration_1"
  op: "NextIteration"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/add_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/NextIteration_2"
  op: "NextIteration"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/TensorArrayWrite/TensorArrayWriteV3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/NextIteration_3"
  op: "NextIteration"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Elu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Exit"
  op: "Exit"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Exit_1"
  op: "Exit"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Exit_2"
  op: "Exit"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Exit_3"
  op: "Exit"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Switch_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayStack/TensorArraySizeV3"
  op: "TensorArraySizeV3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Exit_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayStack/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray"
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
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayStack/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray"
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
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayStack/range"
  op: "Range"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayStack/range/start"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayStack/TensorArraySizeV3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayStack/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayStack/TensorArrayGatherV3"
  op: "TensorArrayGatherV3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayStack/range"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Exit_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/sub"
  op: "Sub"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Exit_1"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayReadV3"
  op: "TensorArrayReadV3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArray"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/sub"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/while/Exit_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose_1/perm"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose_1"
  op: "Transpose"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/TensorArrayStack/TensorArrayGatherV3"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_49/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_49/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose_1"
  input: "gModel_0/toRGB_L_64/lambda_49/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_49/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_49/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_49/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/toRGB_L_64/lambda_49/Placeholder"
  input: "gModel_0/toRGB_L_64/lambda_49/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_50/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_50/Reshape"
  op: "Reshape"
  input: "gModel_0/toRGB_L_64/lambda_49/MirrorPad"
  input: "gModel_0/toRGB_L_64/lambda_50/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_50/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_50/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377@\000\000\000@\000\000\000@\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_50/Reshape_1"
  op: "Reshape"
  input: "gModel_0/toRGB_L_64/lambda_50/Placeholder"
  input: "gModel_0/toRGB_L_64/lambda_50/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000@\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal/stddev"
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
        float_val: 0.20096810162067413
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 4095141
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal/TruncatedNormal"
  input: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal"
  op: "Add"
  input: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal/mul"
  input: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/conv2d_17/kernel"
  op: "VariableV2"
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
          size: 3
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
  name: "gModel_0/toRGB_L_64/conv2d_17/kernel/Assign"
  op: "Assign"
  input: "gModel_0/toRGB_L_64/conv2d_17/kernel"
  input: "gModel_0/toRGB_L_64/conv2d_17/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/toRGB_L_64/conv2d_17/kernel"
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
  name: "gModel_0/toRGB_L_64/conv2d_17/kernel/read"
  op: "Identity"
  input: "gModel_0/toRGB_L_64/conv2d_17/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/toRGB_L_64/conv2d_17/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/conv2d_17/Const"
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
            size: 3
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/conv2d_17/bias"
  op: "VariableV2"
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
  name: "gModel_0/toRGB_L_64/conv2d_17/bias/Assign"
  op: "Assign"
  input: "gModel_0/toRGB_L_64/conv2d_17/bias"
  input: "gModel_0/toRGB_L_64/conv2d_17/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/toRGB_L_64/conv2d_17/bias"
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
  name: "gModel_0/toRGB_L_64/conv2d_17/bias/read"
  op: "Identity"
  input: "gModel_0/toRGB_L_64/conv2d_17/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/toRGB_L_64/conv2d_17/bias"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/conv2d_17/convolution/dilation_rate"
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
  name: "gModel_0/toRGB_L_64/conv2d_17/convolution"
  op: "Conv2D"
  input: "gModel_0/toRGB_L_64/lambda_50/Reshape"
  input: "gModel_0/toRGB_L_64/conv2d_17/kernel/read"
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
  name: "gModel_0/toRGB_L_64/conv2d_17/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/toRGB_L_64/conv2d_17/convolution"
  input: "gModel_0/toRGB_L_64/conv2d_17/bias/read"
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
}
node {
  name: "gModel_0/toRGB_L_64/lambda_51/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000@\000\000\000@\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_51/Reshape"
  op: "Reshape"
  input: "gModel_0/toRGB_L_64/conv2d_17/BiasAdd"
  input: "gModel_0/toRGB_L_64/lambda_51/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_51/Placeholder"
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
          size: 32
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 3
        }
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_51/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000@\000\000\000@\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_64/lambda_51/Reshape_1"
  op: "Reshape"
  input: "gModel_0/toRGB_L_64/lambda_51/Placeholder"
  input: "gModel_0/toRGB_L_64/lambda_51/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/NNUp64to128/Const"
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
        int_val: 32
      }
    }
  }
}
node {
  name: "gModel_0/NNUp64to128/split/split_dim"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/NNUp64to128/split"
  op: "Split"
  input: "gModel_0/NNUp64to128/split/split_dim"
  input: "gModel_0/toRGB_L_64/lambda_51/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/NNUp64to128/concat/axis"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/NNUp64to128/concat"
  op: "ConcatV2"
  input: "gModel_0/NNUp64to128/split"
  input: "gModel_0/NNUp64to128/split:1"
  input: "gModel_0/NNUp64to128/split:2"
  input: "gModel_0/NNUp64to128/split:3"
  input: "gModel_0/NNUp64to128/split:4"
  input: "gModel_0/NNUp64to128/split:5"
  input: "gModel_0/NNUp64to128/split:6"
  input: "gModel_0/NNUp64to128/split:7"
  input: "gModel_0/NNUp64to128/split:8"
  input: "gModel_0/NNUp64to128/split:9"
  input: "gModel_0/NNUp64to128/split:10"
  input: "gModel_0/NNUp64to128/split:11"
  input: "gModel_0/NNUp64to128/split:12"
  input: "gModel_0/NNUp64to128/split:13"
  input: "gModel_0/NNUp64to128/split:14"
  input: "gModel_0/NNUp64to128/split:15"
  input: "gModel_0/NNUp64to128/split:16"
  input: "gModel_0/NNUp64to128/split:17"
  input: "gModel_0/NNUp64to128/split:18"
  input: "gModel_0/NNUp64to128/split:19"
  input: "gModel_0/NNUp64to128/split:20"
  input: "gModel_0/NNUp64to128/split:21"
  input: "gModel_0/NNUp64to128/split:22"
  input: "gModel_0/NNUp64to128/split:23"
  input: "gModel_0/NNUp64to128/split:24"
  input: "gModel_0/NNUp64to128/split:25"
  input: "gModel_0/NNUp64to128/split:26"
  input: "gModel_0/NNUp64to128/split:27"
  input: "gModel_0/NNUp64to128/split:28"
  input: "gModel_0/NNUp64to128/split:29"
  input: "gModel_0/NNUp64to128/split:30"
  input: "gModel_0/NNUp64to128/split:31"
  input: "gModel_0/NNUp64to128/concat/axis"
  attr {
    key: "N"
    value {
      i: 32
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
  name: "gModel_0/NNUp64to128/Const_1"
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
        int_val: 64
      }
    }
  }
}
node {
  name: "gModel_0/NNUp64to128/split_1/split_dim"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/NNUp64to128/split_1"
  op: "Split"
  input: "gModel_0/NNUp64to128/split_1/split_dim"
  input: "gModel_0/NNUp64to128/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 64
    }
  }
}
node {
  name: "gModel_0/NNUp64to128/concat_1/axis"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/NNUp64to128/concat_1"
  op: "ConcatV2"
  input: "gModel_0/NNUp64to128/split_1"
  input: "gModel_0/NNUp64to128/split_1"
  input: "gModel_0/NNUp64to128/split_1:1"
  input: "gModel_0/NNUp64to128/split_1:1"
  input: "gModel_0/NNUp64to128/split_1:2"
  input: "gModel_0/NNUp64to128/split_1:2"
  input: "gModel_0/NNUp64to128/split_1:3"
  input: "gModel_0/NNUp64to128/split_1:3"
  input: "gModel_0/NNUp64to128/split_1:4"
  input: "gModel_0/NNUp64to128/split_1:4"
  input: "gModel_0/NNUp64to128/split_1:5"
  input: "gModel_0/NNUp64to128/split_1:5"
  input: "gModel_0/NNUp64to128/split_1:6"
  input: "gModel_0/NNUp64to128/split_1:6"
  input: "gModel_0/NNUp64to128/split_1:7"
  input: "gModel_0/NNUp64to128/split_1:7"
  input: "gModel_0/NNUp64to128/split_1:8"
  input: "gModel_0/NNUp64to128/split_1:8"
  input: "gModel_0/NNUp64to128/split_1:9"
  input: "gModel_0/NNUp64to128/split_1:9"
  input: "gModel_0/NNUp64to128/split_1:10"
  input: "gModel_0/NNUp64to128/split_1:10"
  input: "gModel_0/NNUp64to128/split_1:11"
  input: "gModel_0/NNUp64to128/split_1:11"
  input: "gModel_0/NNUp64to128/split_1:12"
  input: "gModel_0/NNUp64to128/split_1:12"
  input: "gModel_0/NNUp64to128/split_1:13"
  input: "gModel_0/NNUp64to128/split_1:13"
  input: "gModel_0/NNUp64to128/split_1:14"
  input: "gModel_0/NNUp64to128/split_1:14"
  input: "gModel_0/NNUp64to128/split_1:15"
  input: "gModel_0/NNUp64to128/split_1:15"
  input: "gModel_0/NNUp64to128/split_1:16"
  input: "gModel_0/NNUp64to128/split_1:16"
  input: "gModel_0/NNUp64to128/split_1:17"
  input: "gModel_0/NNUp64to128/split_1:17"
  input: "gModel_0/NNUp64to128/split_1:18"
  input: "gModel_0/NNUp64to128/split_1:18"
  input: "gModel_0/NNUp64to128/split_1:19"
  input: "gModel_0/NNUp64to128/split_1:19"
  input: "gModel_0/NNUp64to128/split_1:20"
  input: "gModel_0/NNUp64to128/split_1:20"
  input: "gModel_0/NNUp64to128/split_1:21"
  input: "gModel_0/NNUp64to128/split_1:21"
  input: "gModel_0/NNUp64to128/split_1:22"
  input: "gModel_0/NNUp64to128/split_1:22"
  input: "gModel_0/NNUp64to128/split_1:23"
  input: "gModel_0/NNUp64to128/split_1:23"
  input: "gModel_0/NNUp64to128/split_1:24"
  input: "gModel_0/NNUp64to128/split_1:24"
  input: "gModel_0/NNUp64to128/split_1:25"
  input: "gModel_0/NNUp64to128/split_1:25"
  input: "gModel_0/NNUp64to128/split_1:26"
  input: "gModel_0/NNUp64to128/split_1:26"
  input: "gModel_0/NNUp64to128/split_1:27"
  input: "gModel_0/NNUp64to128/split_1:27"
  input: "gModel_0/NNUp64to128/split_1:28"
  input: "gModel_0/NNUp64to128/split_1:28"
  input: "gModel_0/NNUp64to128/split_1:29"
  input: "gModel_0/NNUp64to128/split_1:29"
  input: "gModel_0/NNUp64to128/split_1:30"
  input: "gModel_0/NNUp64to128/split_1:30"
  input: "gModel_0/NNUp64to128/split_1:31"
  input: "gModel_0/NNUp64to128/split_1:31"
  input: "gModel_0/NNUp64to128/split_1:32"
  input: "gModel_0/NNUp64to128/split_1:32"
  input: "gModel_0/NNUp64to128/split_1:33"
  input: "gModel_0/NNUp64to128/split_1:33"
  input: "gModel_0/NNUp64to128/split_1:34"
  input: "gModel_0/NNUp64to128/split_1:34"
  input: "gModel_0/NNUp64to128/split_1:35"
  input: "gModel_0/NNUp64to128/split_1:35"
  input: "gModel_0/NNUp64to128/split_1:36"
  input: "gModel_0/NNUp64to128/split_1:36"
  input: "gModel_0/NNUp64to128/split_1:37"
  input: "gModel_0/NNUp64to128/split_1:37"
  input: "gModel_0/NNUp64to128/split_1:38"
  input: "gModel_0/NNUp64to128/split_1:38"
  input: "gModel_0/NNUp64to128/split_1:39"
  input: "gModel_0/NNUp64to128/split_1:39"
  input: "gModel_0/NNUp64to128/split_1:40"
  input: "gModel_0/NNUp64to128/split_1:40"
  input: "gModel_0/NNUp64to128/split_1:41"
  input: "gModel_0/NNUp64to128/split_1:41"
  input: "gModel_0/NNUp64to128/split_1:42"
  input: "gModel_0/NNUp64to128/split_1:42"
  input: "gModel_0/NNUp64to128/split_1:43"
  input: "gModel_0/NNUp64to128/split_1:43"
  input: "gModel_0/NNUp64to128/split_1:44"
  input: "gModel_0/NNUp64to128/split_1:44"
  input: "gModel_0/NNUp64to128/split_1:45"
  input: "gModel_0/NNUp64to128/split_1:45"
  input: "gModel_0/NNUp64to128/split_1:46"
  input: "gModel_0/NNUp64to128/split_1:46"
  input: "gModel_0/NNUp64to128/split_1:47"
  input: "gModel_0/NNUp64to128/split_1:47"
  input: "gModel_0/NNUp64to128/split_1:48"
  input: "gModel_0/NNUp64to128/split_1:48"
  input: "gModel_0/NNUp64to128/split_1:49"
  input: "gModel_0/NNUp64to128/split_1:49"
  input: "gModel_0/NNUp64to128/split_1:50"
  input: "gModel_0/NNUp64to128/split_1:50"
  input: "gModel_0/NNUp64to128/split_1:51"
  input: "gModel_0/NNUp64to128/split_1:51"
  input: "gModel_0/NNUp64to128/split_1:52"
  input: "gModel_0/NNUp64to128/split_1:52"
  input: "gModel_0/NNUp64to128/split_1:53"
  input: "gModel_0/NNUp64to128/split_1:53"
  input: "gModel_0/NNUp64to128/split_1:54"
  input: "gModel_0/NNUp64to128/split_1:54"
  input: "gModel_0/NNUp64to128/split_1:55"
  input: "gModel_0/NNUp64to128/split_1:55"
  input: "gModel_0/NNUp64to128/split_1:56"
  input: "gModel_0/NNUp64to128/split_1:56"
  input: "gModel_0/NNUp64to128/split_1:57"
  input: "gModel_0/NNUp64to128/split_1:57"
  input: "gModel_0/NNUp64to128/split_1:58"
  input: "gModel_0/NNUp64to128/split_1:58"
  input: "gModel_0/NNUp64to128/split_1:59"
  input: "gModel_0/NNUp64to128/split_1:59"
  input: "gModel_0/NNUp64to128/split_1:60"
  input: "gModel_0/NNUp64to128/split_1:60"
  input: "gModel_0/NNUp64to128/split_1:61"
  input: "gModel_0/NNUp64to128/split_1:61"
  input: "gModel_0/NNUp64to128/split_1:62"
  input: "gModel_0/NNUp64to128/split_1:62"
  input: "gModel_0/NNUp64to128/split_1:63"
  input: "gModel_0/NNUp64to128/split_1:63"
  input: "gModel_0/NNUp64to128/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 128
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
  name: "gModel_0/NNUp64to128/Const_2"
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
        int_val: 64
      }
    }
  }
}
node {
  name: "gModel_0/NNUp64to128/split_2/split_dim"
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
  name: "gModel_0/NNUp64to128/split_2"
  op: "Split"
  input: "gModel_0/NNUp64to128/split_2/split_dim"
  input: "gModel_0/NNUp64to128/concat_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 64
    }
  }
}
node {
  name: "gModel_0/NNUp64to128/concat_2/axis"
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
  name: "gModel_0/NNUp64to128/concat_2"
  op: "ConcatV2"
  input: "gModel_0/NNUp64to128/split_2"
  input: "gModel_0/NNUp64to128/split_2"
  input: "gModel_0/NNUp64to128/split_2:1"
  input: "gModel_0/NNUp64to128/split_2:1"
  input: "gModel_0/NNUp64to128/split_2:2"
  input: "gModel_0/NNUp64to128/split_2:2"
  input: "gModel_0/NNUp64to128/split_2:3"
  input: "gModel_0/NNUp64to128/split_2:3"
  input: "gModel_0/NNUp64to128/split_2:4"
  input: "gModel_0/NNUp64to128/split_2:4"
  input: "gModel_0/NNUp64to128/split_2:5"
  input: "gModel_0/NNUp64to128/split_2:5"
  input: "gModel_0/NNUp64to128/split_2:6"
  input: "gModel_0/NNUp64to128/split_2:6"
  input: "gModel_0/NNUp64to128/split_2:7"
  input: "gModel_0/NNUp64to128/split_2:7"
  input: "gModel_0/NNUp64to128/split_2:8"
  input: "gModel_0/NNUp64to128/split_2:8"
  input: "gModel_0/NNUp64to128/split_2:9"
  input: "gModel_0/NNUp64to128/split_2:9"
  input: "gModel_0/NNUp64to128/split_2:10"
  input: "gModel_0/NNUp64to128/split_2:10"
  input: "gModel_0/NNUp64to128/split_2:11"
  input: "gModel_0/NNUp64to128/split_2:11"
  input: "gModel_0/NNUp64to128/split_2:12"
  input: "gModel_0/NNUp64to128/split_2:12"
  input: "gModel_0/NNUp64to128/split_2:13"
  input: "gModel_0/NNUp64to128/split_2:13"
  input: "gModel_0/NNUp64to128/split_2:14"
  input: "gModel_0/NNUp64to128/split_2:14"
  input: "gModel_0/NNUp64to128/split_2:15"
  input: "gModel_0/NNUp64to128/split_2:15"
  input: "gModel_0/NNUp64to128/split_2:16"
  input: "gModel_0/NNUp64to128/split_2:16"
  input: "gModel_0/NNUp64to128/split_2:17"
  input: "gModel_0/NNUp64to128/split_2:17"
  input: "gModel_0/NNUp64to128/split_2:18"
  input: "gModel_0/NNUp64to128/split_2:18"
  input: "gModel_0/NNUp64to128/split_2:19"
  input: "gModel_0/NNUp64to128/split_2:19"
  input: "gModel_0/NNUp64to128/split_2:20"
  input: "gModel_0/NNUp64to128/split_2:20"
  input: "gModel_0/NNUp64to128/split_2:21"
  input: "gModel_0/NNUp64to128/split_2:21"
  input: "gModel_0/NNUp64to128/split_2:22"
  input: "gModel_0/NNUp64to128/split_2:22"
  input: "gModel_0/NNUp64to128/split_2:23"
  input: "gModel_0/NNUp64to128/split_2:23"
  input: "gModel_0/NNUp64to128/split_2:24"
  input: "gModel_0/NNUp64to128/split_2:24"
  input: "gModel_0/NNUp64to128/split_2:25"
  input: "gModel_0/NNUp64to128/split_2:25"
  input: "gModel_0/NNUp64to128/split_2:26"
  input: "gModel_0/NNUp64to128/split_2:26"
  input: "gModel_0/NNUp64to128/split_2:27"
  input: "gModel_0/NNUp64to128/split_2:27"
  input: "gModel_0/NNUp64to128/split_2:28"
  input: "gModel_0/NNUp64to128/split_2:28"
  input: "gModel_0/NNUp64to128/split_2:29"
  input: "gModel_0/NNUp64to128/split_2:29"
  input: "gModel_0/NNUp64to128/split_2:30"
  input: "gModel_0/NNUp64to128/split_2:30"
  input: "gModel_0/NNUp64to128/split_2:31"
  input: "gModel_0/NNUp64to128/split_2:31"
  input: "gModel_0/NNUp64to128/split_2:32"
  input: "gModel_0/NNUp64to128/split_2:32"
  input: "gModel_0/NNUp64to128/split_2:33"
  input: "gModel_0/NNUp64to128/split_2:33"
  input: "gModel_0/NNUp64to128/split_2:34"
  input: "gModel_0/NNUp64to128/split_2:34"
  input: "gModel_0/NNUp64to128/split_2:35"
  input: "gModel_0/NNUp64to128/split_2:35"
  input: "gModel_0/NNUp64to128/split_2:36"
  input: "gModel_0/NNUp64to128/split_2:36"
  input: "gModel_0/NNUp64to128/split_2:37"
  input: "gModel_0/NNUp64to128/split_2:37"
  input: "gModel_0/NNUp64to128/split_2:38"
  input: "gModel_0/NNUp64to128/split_2:38"
  input: "gModel_0/NNUp64to128/split_2:39"
  input: "gModel_0/NNUp64to128/split_2:39"
  input: "gModel_0/NNUp64to128/split_2:40"
  input: "gModel_0/NNUp64to128/split_2:40"
  input: "gModel_0/NNUp64to128/split_2:41"
  input: "gModel_0/NNUp64to128/split_2:41"
  input: "gModel_0/NNUp64to128/split_2:42"
  input: "gModel_0/NNUp64to128/split_2:42"
  input: "gModel_0/NNUp64to128/split_2:43"
  input: "gModel_0/NNUp64to128/split_2:43"
  input: "gModel_0/NNUp64to128/split_2:44"
  input: "gModel_0/NNUp64to128/split_2:44"
  input: "gModel_0/NNUp64to128/split_2:45"
  input: "gModel_0/NNUp64to128/split_2:45"
  input: "gModel_0/NNUp64to128/split_2:46"
  input: "gModel_0/NNUp64to128/split_2:46"
  input: "gModel_0/NNUp64to128/split_2:47"
  input: "gModel_0/NNUp64to128/split_2:47"
  input: "gModel_0/NNUp64to128/split_2:48"
  input: "gModel_0/NNUp64to128/split_2:48"
  input: "gModel_0/NNUp64to128/split_2:49"
  input: "gModel_0/NNUp64to128/split_2:49"
  input: "gModel_0/NNUp64to128/split_2:50"
  input: "gModel_0/NNUp64to128/split_2:50"
  input: "gModel_0/NNUp64to128/split_2:51"
  input: "gModel_0/NNUp64to128/split_2:51"
  input: "gModel_0/NNUp64to128/split_2:52"
  input: "gModel_0/NNUp64to128/split_2:52"
  input: "gModel_0/NNUp64to128/split_2:53"
  input: "gModel_0/NNUp64to128/split_2:53"
  input: "gModel_0/NNUp64to128/split_2:54"
  input: "gModel_0/NNUp64to128/split_2:54"
  input: "gModel_0/NNUp64to128/split_2:55"
  input: "gModel_0/NNUp64to128/split_2:55"
  input: "gModel_0/NNUp64to128/split_2:56"
  input: "gModel_0/NNUp64to128/split_2:56"
  input: "gModel_0/NNUp64to128/split_2:57"
  input: "gModel_0/NNUp64to128/split_2:57"
  input: "gModel_0/NNUp64to128/split_2:58"
  input: "gModel_0/NNUp64to128/split_2:58"
  input: "gModel_0/NNUp64to128/split_2:59"
  input: "gModel_0/NNUp64to128/split_2:59"
  input: "gModel_0/NNUp64to128/split_2:60"
  input: "gModel_0/NNUp64to128/split_2:60"
  input: "gModel_0/NNUp64to128/split_2:61"
  input: "gModel_0/NNUp64to128/split_2:61"
  input: "gModel_0/NNUp64to128/split_2:62"
  input: "gModel_0/NNUp64to128/split_2:62"
  input: "gModel_0/NNUp64to128/split_2:63"
  input: "gModel_0/NNUp64to128/split_2:63"
  input: "gModel_0/NNUp64to128/concat_2/axis"
  attr {
    key: "N"
    value {
      i: 128
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
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/Shape"
  op: "Shape"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/ExpandDims/dim"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/ExpandDims"
  op: "ExpandDims"
  input: "gModel_0/gLDec_32to64/simple_conv_rn_n2d_4/transpose_1"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/ExpandDims/dim"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tdim"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/Tile/multiples"
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
            size: 6
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/Tile"
  op: "Tile"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/ExpandDims"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/Tile/multiples"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/Const"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/mul"
  op: "Mul"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/Shape"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/Tile"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/Const_1"
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
        int_val: 64
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/split/split_dim"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/split"
  op: "Split"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split/split_dim"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 64
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/concat/axis"
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
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:1"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:1"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:2"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:2"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:3"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:3"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:4"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:4"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:5"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:5"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:6"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:6"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:7"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:7"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:8"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:8"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:9"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:9"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:10"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:10"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:11"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:11"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:12"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:12"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:13"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:13"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:14"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:14"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:15"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:15"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:16"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:16"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:17"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:17"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:18"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:18"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:19"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:19"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:20"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:20"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:21"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:21"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:22"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:22"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:23"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:23"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:24"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:24"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:25"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:25"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:26"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:26"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:27"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:27"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:28"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:28"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:29"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:29"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:30"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:30"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:31"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:31"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:32"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:32"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:33"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:33"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:34"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:34"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:35"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:35"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:36"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:36"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:37"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:37"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:38"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:38"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:39"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:39"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:40"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:40"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:41"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:41"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:42"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:42"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:43"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:43"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:44"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:44"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:45"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:45"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:46"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:46"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:47"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:47"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:48"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:48"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:49"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:49"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:50"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:50"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:51"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:51"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:52"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:52"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:53"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:53"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:54"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:54"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:55"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:55"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:56"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:56"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:57"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:57"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:58"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:58"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:59"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:59"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:60"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:60"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:61"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:61"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:62"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:62"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:63"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split:63"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/concat/axis"
  attr {
    key: "N"
    value {
      i: 128
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
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/Const_2"
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
        int_val: 64
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1/split_dim"
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
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1"
  op: "Split"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1/split_dim"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 64
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/concat_1/axis"
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
  name: "gModel_0/gLDec_64to128/up_sampling3d_5/concat_1"
  op: "ConcatV2"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:1"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:1"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:2"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:2"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:3"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:3"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:4"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:4"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:5"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:5"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:6"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:6"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:7"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:7"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:8"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:8"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:9"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:9"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:10"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:10"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:11"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:11"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:12"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:12"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:13"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:13"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:14"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:14"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:15"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:15"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:16"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:16"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:17"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:17"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:18"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:18"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:19"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:19"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:20"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:20"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:21"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:21"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:22"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:22"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:23"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:23"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:24"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:24"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:25"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:25"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:26"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:26"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:27"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:27"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:28"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:28"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:29"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:29"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:30"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:30"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:31"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:31"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:32"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:32"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:33"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:33"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:34"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:34"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:35"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:35"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:36"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:36"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:37"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:37"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:38"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:38"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:39"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:39"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:40"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:40"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:41"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:41"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:42"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:42"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:43"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:43"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:44"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:44"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:45"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:45"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:46"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:46"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:47"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:47"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:48"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:48"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:49"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:49"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:50"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:50"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:51"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:51"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:52"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:52"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:53"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:53"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:54"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:54"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:55"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:55"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:56"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:56"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:57"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:57"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:58"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:58"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:59"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:59"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:60"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:60"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:61"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:61"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:62"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:62"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:63"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/split_1:63"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 128
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
  name: "gModel_0/gLDec_64to128/concatenate_5/concat/axis"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/concatenate_5/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_64to128/up_sampling3d_5/concat_1"
  input: "gModel_0/gLEnc_128to64/elu_1/Elu"
  input: "gModel_0/gLDec_64to128/concatenate_5/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_64to128/lambda_52/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_52/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_64to128/concatenate_5/concat"
  input: "gModel_0/gLDec_64to128/lambda_52/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_52/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 96
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_52/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_52/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/gLDec_64to128/lambda_52/Placeholder"
  input: "gModel_0/gLDec_64to128/lambda_52/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_53/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\202\000\000\000\202\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_53/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/lambda_52/MirrorPad"
  input: "gModel_0/gLDec_64to128/lambda_53/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_53/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 130
        }
        dim {
          size: 130
        }
        dim {
          size: 96
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_53/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\202\000\000\000\202\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_53/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/lambda_53/Placeholder"
  input: "gModel_0/gLDec_64to128/lambda_53/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000`\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal/stddev"
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
        float_val: 0.05469658970832825
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 6047981
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal"
  op: "Add"
  input: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal/mul"
  input: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/conv2d_18/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_64to128/conv2d_18/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_64to128/conv2d_18/kernel"
  input: "gModel_0/gLDec_64to128/conv2d_18/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/conv2d_18/kernel"
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
  name: "gModel_0/gLDec_64to128/conv2d_18/kernel/read"
  op: "Identity"
  input: "gModel_0/gLDec_64to128/conv2d_18/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/conv2d_18/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/conv2d_18/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/conv2d_18/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_64to128/conv2d_18/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_64to128/conv2d_18/bias"
  input: "gModel_0/gLDec_64to128/conv2d_18/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/conv2d_18/bias"
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
  name: "gModel_0/gLDec_64to128/conv2d_18/bias/read"
  op: "Identity"
  input: "gModel_0/gLDec_64to128/conv2d_18/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/conv2d_18/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/conv2d_18/convolution/dilation_rate"
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
  name: "gModel_0/gLDec_64to128/conv2d_18/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_64to128/lambda_53/Reshape"
  input: "gModel_0/gLDec_64to128/conv2d_18/kernel/read"
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
  name: "gModel_0/gLDec_64to128/conv2d_18/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_64to128/conv2d_18/convolution"
  input: "gModel_0/gLDec_64to128/conv2d_18/bias/read"
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
}
node {
  name: "gModel_0/gLDec_64to128/lambda_54/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_54/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/conv2d_18/BiasAdd"
  input: "gModel_0/gLDec_64to128/lambda_54/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_54/Placeholder"
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
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 32
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_54/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/lambda_54/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/lambda_54/Placeholder"
  input: "gModel_0/gLDec_64to128/lambda_54/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/elu_17/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_64to128/lambda_54/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000@\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal/stddev"
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
        float_val: 0.06698936223983765
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 4763859
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal/TruncatedNormal"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal"
  op: "Add"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal/mul"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/kernel"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/kernel/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/kernel"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/kernel"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/kernel/read"
  op: "Identity"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/bias"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/bias/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/bias"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/bias"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/bias/read"
  op: "Identity"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/bias"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/zeros/shape_as_tensor"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/zeros/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/zeros"
  op: "Fill"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/zeros/shape_as_tensor"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Variable"
  op: "VariableV2"
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
          size: 128
        }
        dim {
          size: 128
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Variable/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Variable"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Variable"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Variable/read"
  op: "Identity"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Variable"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/transpose/perm"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/transpose"
  op: "Transpose"
  input: "gModel_0/gLDec_64to128/elu_17/Elu"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Shape"
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
            size: 5
          }
        }
        tensor_content: " \000\000\000\001\000\000\000\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Shape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice/stack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice/stack_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice_1/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice_1/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice_1/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/transpose"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice_1/stack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/concat/axis"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Variable/read"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/MirrorPad/paddings"
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
            size: 4
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/concat"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/convolution/dilation_rate"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/MirrorPad"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/kernel/read"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/convolution"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/bias/read"
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
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Const"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/gamma"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/gamma/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/gamma"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/gamma"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/gamma/read"
  op: "Identity"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/gamma"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/gamma"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Const_1"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/beta"
  op: "VariableV2"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/beta/Assign"
  op: "Assign"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/beta"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/beta"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/beta/read"
  op: "Identity"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/beta"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/beta"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Shape"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Shape_1"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Shape_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice/stack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice/stack_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_1/stack"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_1/stack_1"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_1/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Shape_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_1/stack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_2/stack"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_2/stack_1"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_2/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_2"
  op: "StridedSlice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Shape_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_2/stack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_2/stack_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_2/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_3/stack"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_3/stack_1"
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
            size: 1
          }
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_3/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_3"
  op: "StridedSlice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Shape_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_3/stack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_3/stack_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_3/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/stack/1"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/stack/4"
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
        int_val: 32
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/stack"
  op: "Pack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/stack/1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/strided_slice_2"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/stack/4"
  attr {
    key: "N"
    value {
      i: 5
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/BiasAdd"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/mean/reduction_indices"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/mean"
  op: "Mean"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/mean/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/StopGradient"
  op: "StopGradient"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/SquaredDifference"
  op: "SquaredDifference"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/StopGradient"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/variance/reduction_indices"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/variance"
  op: "Mean"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/SquaredDifference"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/variance/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/sub"
  op: "Sub"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/add/y"
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/add"
  op: "Add"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/moments/variance"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Const_2"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Const_3"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/clip_by_value/Minimum"
  op: "Minimum"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/add"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/clip_by_value"
  op: "Maximum"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/clip_by_value/Minimum"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Sqrt"
  op: "Sqrt"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/truediv"
  op: "RealDiv"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/sub"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Sqrt"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/truediv"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_2/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_2"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/gamma/read"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/mul"
  op: "Mul"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_3/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_3"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/beta/read"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/add_1"
  op: "Add"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/mul"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_4"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/add_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/Reshape_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray"
  op: "TensorArrayV3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        unknown_rank: true
      }
    }
  }
  attr {
    key: "identical_element_shapes"
    value {
      b: true
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "output_ta"
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray_1"
  op: "TensorArrayV3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        unknown_rank: true
      }
    }
  }
  attr {
    key: "identical_element_shapes"
    value {
      b: true
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "input_ta"
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/Shape"
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
            size: 5
          }
        }
        tensor_content: " \000\000\000\001\000\000\000\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/Shape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/strided_slice/stack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/strided_slice/stack_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/range"
  op: "Range"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/range/start"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/strided_slice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"
  op: "TensorArrayScatterV3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/range"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/transpose"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/transpose"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/time"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/maximum_iterations"
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
        int_val: 32
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/iteration_counter"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/iteration_counter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Enter_1"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/time"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Enter_2"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Enter_3"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/Variable/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge"
  op: "Merge"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge_1"
  op: "Merge"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Enter_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/NextIteration_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge_2"
  op: "Merge"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Enter_2"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/NextIteration_2"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge_3"
  op: "Merge"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Enter_3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/NextIteration_3"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Less"
  op: "Less"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Less/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Less/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/maximum_iterations"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Less_1"
  op: "Less"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Less_1/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Less_1/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/strided_slice"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/LogicalAnd"
  op: "LogicalAnd"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Less"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Less_1"
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/LoopCond"
  op: "LoopCond"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/LogicalAnd"
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch"
  op: "Switch"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/LoopCond"
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
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch_1"
  op: "Switch"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/LoopCond"
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
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge_1"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch_2"
  op: "Switch"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge_2"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge_2"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch_3"
  op: "Switch"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge_3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Merge_3"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
  op: "Identity"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity_1"
  op: "Identity"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch_1:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity_2"
  op: "Identity"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch_2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity_3"
  op: "Identity"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch_3:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/add/y"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/add"
  op: "Add"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/add/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/TensorArrayReadV3"
  op: "TensorArrayReadV3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/TensorArrayReadV3/Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/TensorArrayReadV3/Enter_1"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/TensorArrayReadV3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray_1"
  attr {
    key: "T"
    value {
      type: DT_RESOURCE
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/TensorArrayReadV3/Enter_1"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/concat/axis"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/concat"
  op: "ConcatV2"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/TensorArrayReadV3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity_3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/MirrorPad/paddings"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/concat"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/convolution/dilation_rate"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/convolution"
  op: "Conv2D"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/MirrorPad"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/convolution/Enter"
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/convolution/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/kernel/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/convolution"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/BiasAdd/Enter"
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
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/BiasAdd/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Shape"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
        tensor_content: "\001\000\000\000\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Shape_1"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
        tensor_content: "\001\000\000\000\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice/stack"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Shape_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice/stack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice/stack_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_1/stack"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_1/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_1/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Shape_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_1/stack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_1/stack_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_2/stack"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_2/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_2/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_2"
  op: "StridedSlice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Shape_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_2/stack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_2/stack_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_2/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_3/stack"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 3
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_3/stack_1"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 4
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_3/stack_2"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_3"
  op: "StridedSlice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Shape_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_3/stack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_3/stack_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_3/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/stack/1"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/stack/4"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
        int_val: 32
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/stack"
  op: "Pack"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/stack/1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/strided_slice_2"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/stack/4"
  attr {
    key: "N"
    value {
      i: 5
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/BiasAdd"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/mean/reduction_indices"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/mean"
  op: "Mean"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/mean/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/StopGradient"
  op: "StopGradient"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/SquaredDifference"
  op: "SquaredDifference"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/StopGradient"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/variance/reduction_indices"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 3
          }
        }
        tensor_content: "\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/variance"
  op: "Mean"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/SquaredDifference"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/variance/reduction_indices"
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
  attr {
    key: "keep_dims"
    value {
      b: true
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/sub"
  op: "Sub"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/add/y"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
  attr {
    key: "dtype"
    value {
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/add"
  op: "Add"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/moments/variance"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Const"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
  attr {
    key: "dtype"
    value {
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
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Const_1"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
  attr {
    key: "dtype"
    value {
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
        float_val: inf
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/clip_by_value/Minimum"
  op: "Minimum"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/add"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/clip_by_value"
  op: "Maximum"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/clip_by_value/Minimum"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Sqrt"
  op: "Sqrt"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/truediv"
  op: "RealDiv"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/sub"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Sqrt"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_1"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/truediv"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_2/shape"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_2"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_2/Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_2/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/gamma/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/mul"
  op: "Mul"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_3/shape"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_3"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_3/Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/group_normalization_5/beta/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/add_1"
  op: "Add"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/mul"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_4"
  op: "Reshape"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/add_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Elu"
  op: "Elu"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/group_normalization_5/Reshape_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/TensorArrayWrite/TensorArrayWriteV3"
  op: "TensorArrayWriteV3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/TensorArrayWrite/TensorArrayWriteV3/Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Elu"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Elu"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/TensorArrayWrite/TensorArrayWriteV3/Enter"
  op: "Enter"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray"
  attr {
    key: "T"
    value {
      type: DT_RESOURCE
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Elu"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/while_context"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/add_1/y"
  op: "Const"
  input: "^gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/add_1"
  op: "Add"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Identity_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/add_1/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/NextIteration"
  op: "NextIteration"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/NextIteration_1"
  op: "NextIteration"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/add_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/NextIteration_2"
  op: "NextIteration"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/TensorArrayWrite/TensorArrayWriteV3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/NextIteration_3"
  op: "NextIteration"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Elu"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Exit"
  op: "Exit"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Exit_1"
  op: "Exit"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Exit_2"
  op: "Exit"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Exit_3"
  op: "Exit"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Switch_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayStack/TensorArraySizeV3"
  op: "TensorArraySizeV3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Exit_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayStack/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray"
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
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayStack/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray"
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
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayStack/range"
  op: "Range"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayStack/range/start"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayStack/TensorArraySizeV3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayStack/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayStack/TensorArrayGatherV3"
  op: "TensorArrayGatherV3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayStack/range"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Exit_2"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        dim {
          size: 1
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 32
        }
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/sub"
  op: "Sub"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Exit_1"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayReadV3"
  op: "TensorArrayReadV3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArray"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/sub"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/while/Exit_2"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/transpose_1/perm"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/transpose_1"
  op: "Transpose"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/TensorArrayStack/TensorArrayGatherV3"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_55/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_55/MirrorPad"
  op: "MirrorPad"
  input: "gModel_0/gLDec_64to128/simple_conv_rn_n2d_5/transpose_1"
  input: "gModel_0/toRGB_L_128/lambda_55/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_55/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 32
        }
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_55/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_55/MirrorPad_1"
  op: "MirrorPad"
  input: "gModel_0/toRGB_L_128/lambda_55/Placeholder"
  input: "gModel_0/toRGB_L_128/lambda_55/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_56/Reshape/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_56/Reshape"
  op: "Reshape"
  input: "gModel_0/toRGB_L_128/lambda_55/MirrorPad"
  input: "gModel_0/toRGB_L_128/lambda_56/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_56/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 32
        }
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_56/Reshape_1/shape"
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
            size: 4
          }
        }
        tensor_content: "\377\377\377\377\200\000\000\000\200\000\000\000 \000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_56/Reshape_1"
  op: "Reshape"
  input: "gModel_0/toRGB_L_128/lambda_56/Placeholder"
  input: "gModel_0/toRGB_L_128/lambda_56/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal/shape"
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
            size: 4
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000 \000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal/stddev"
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
        float_val: 0.28421181440353394
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 252026
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal/mul"
  op: "Mul"
  input: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal/TruncatedNormal"
  input: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal"
  op: "Add"
  input: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal/mul"
  input: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/conv2d_19/kernel"
  op: "VariableV2"
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
          size: 32
        }
        dim {
          size: 3
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
  name: "gModel_0/toRGB_L_128/conv2d_19/kernel/Assign"
  op: "Assign"
  input: "gModel_0/toRGB_L_128/conv2d_19/kernel"
  input: "gModel_0/toRGB_L_128/conv2d_19/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/toRGB_L_128/conv2d_19/kernel"
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
  name: "gModel_0/toRGB_L_128/conv2d_19/kernel/read"
  op: "Identity"
  input: "gModel_0/toRGB_L_128/conv2d_19/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/toRGB_L_128/conv2d_19/kernel"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/conv2d_19/Const"
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
            size: 3
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/conv2d_19/bias"
  op: "VariableV2"
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
  name: "gModel_0/toRGB_L_128/conv2d_19/bias/Assign"
  op: "Assign"
  input: "gModel_0/toRGB_L_128/conv2d_19/bias"
  input: "gModel_0/toRGB_L_128/conv2d_19/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/toRGB_L_128/conv2d_19/bias"
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
  name: "gModel_0/toRGB_L_128/conv2d_19/bias/read"
  op: "Identity"
  input: "gModel_0/toRGB_L_128/conv2d_19/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gModel_0/toRGB_L_128/conv2d_19/bias"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/conv2d_19/convolution/dilation_rate"
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
  name: "gModel_0/toRGB_L_128/conv2d_19/convolution"
  op: "Conv2D"
  input: "gModel_0/toRGB_L_128/lambda_56/Reshape"
  input: "gModel_0/toRGB_L_128/conv2d_19/kernel/read"
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
  name: "gModel_0/toRGB_L_128/conv2d_19/BiasAdd"
  op: "BiasAdd"
  input: "gModel_0/toRGB_L_128/conv2d_19/convolution"
  input: "gModel_0/toRGB_L_128/conv2d_19/bias/read"
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
}
node {
  name: "gModel_0/toRGB_L_128/lambda_57/Reshape/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\200\000\000\000\200\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_57/Reshape"
  op: "Reshape"
  input: "gModel_0/toRGB_L_128/conv2d_19/BiasAdd"
  input: "gModel_0/toRGB_L_128/lambda_57/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_57/Placeholder"
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
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 3
        }
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_57/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\377\377\377\377 \000\000\000\200\000\000\000\200\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/toRGB_L_128/lambda_57/Reshape_1"
  op: "Reshape"
  input: "gModel_0/toRGB_L_128/lambda_57/Placeholder"
  input: "gModel_0/toRGB_L_128/lambda_57/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/strided_slice/stack"
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
        tensor_content: "\000\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/strided_slice/stack_1"
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
        tensor_content: "\000\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/strided_slice/stack_2"
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
  name: "gModel_0/maskedBypass0/lambda_58/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/input"
  input: "gModel_0/maskedBypass0/lambda_58/strided_slice/stack"
  input: "gModel_0/maskedBypass0/lambda_58/strided_slice/stack_1"
  input: "gModel_0/maskedBypass0/lambda_58/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/mul/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/mul"
  op: "Mul"
  input: "gModel_0/maskedBypass0/lambda_58/strided_slice"
  input: "gModel_0/maskedBypass0/lambda_58/mul/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/add/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/add"
  op: "Add"
  input: "gModel_0/maskedBypass0/lambda_58/mul"
  input: "gModel_0/maskedBypass0/lambda_58/add/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/Tile/multiples"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/Tile"
  op: "Tile"
  input: "gModel_0/maskedBypass0/lambda_58/add"
  input: "gModel_0/maskedBypass0/lambda_58/Tile/multiples"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 4
        }
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/strided_slice_1/stack"
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
        tensor_content: "\000\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/strided_slice_1/stack_1"
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
        tensor_content: "\000\000\000\000\004\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/strided_slice_1/stack_2"
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
  name: "gModel_0/maskedBypass0/lambda_58/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/maskedBypass0/lambda_58/Placeholder"
  input: "gModel_0/maskedBypass0/lambda_58/strided_slice_1/stack"
  input: "gModel_0/maskedBypass0/lambda_58/strided_slice_1/stack_1"
  input: "gModel_0/maskedBypass0/lambda_58/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/mul_1/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/mul_1"
  op: "Mul"
  input: "gModel_0/maskedBypass0/lambda_58/strided_slice_1"
  input: "gModel_0/maskedBypass0/lambda_58/mul_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/add_1/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/add_1"
  op: "Add"
  input: "gModel_0/maskedBypass0/lambda_58/mul_1"
  input: "gModel_0/maskedBypass0/lambda_58/add_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/Tile_1/multiples"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_58/Tile_1"
  op: "Tile"
  input: "gModel_0/maskedBypass0/lambda_58/add_1"
  input: "gModel_0/maskedBypass0/lambda_58/Tile_1/multiples"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tmultiples"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/mul"
  op: "Mul"
  input: "gModel_0/toRGB_L_128/lambda_57/Reshape"
  input: "gModel_0/maskedBypass0/lambda_58/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/sub"
  op: "Sub"
  input: "gModel_0/toRGB_L_128/lambda_57/Reshape"
  input: "gModel_0/maskedBypass0/lambda_59/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/strided_slice/stack"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/strided_slice/stack_1"
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
        tensor_content: "\000\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/strided_slice/stack_2"
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
  name: "gModel_0/maskedBypass0/lambda_59/strided_slice"
  op: "StridedSlice"
  input: "gModel_0/input"
  input: "gModel_0/maskedBypass0/lambda_59/strided_slice/stack"
  input: "gModel_0/maskedBypass0/lambda_59/strided_slice/stack_1"
  input: "gModel_0/maskedBypass0/lambda_59/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 2
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/mul_1"
  op: "Mul"
  input: "gModel_0/maskedBypass0/lambda_59/strided_slice"
  input: "gModel_0/maskedBypass0/lambda_58/Tile"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/add"
  op: "Add"
  input: "gModel_0/maskedBypass0/lambda_59/sub"
  input: "gModel_0/maskedBypass0/lambda_59/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/Placeholder"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 4
        }
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/Placeholder_1"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 3
        }
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/Placeholder_2"
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
          size: 1
        }
        dim {
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 3
        }
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/mul_2"
  op: "Mul"
  input: "gModel_0/maskedBypass0/lambda_59/Placeholder_1"
  input: "gModel_0/maskedBypass0/lambda_59/Placeholder_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/sub_1"
  op: "Sub"
  input: "gModel_0/maskedBypass0/lambda_59/Placeholder_1"
  input: "gModel_0/maskedBypass0/lambda_59/mul_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/strided_slice_1/stack"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/strided_slice_1/stack_1"
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
        tensor_content: "\000\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/strided_slice_1/stack_2"
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
  name: "gModel_0/maskedBypass0/lambda_59/strided_slice_1"
  op: "StridedSlice"
  input: "gModel_0/maskedBypass0/lambda_59/Placeholder"
  input: "gModel_0/maskedBypass0/lambda_59/strided_slice_1/stack"
  input: "gModel_0/maskedBypass0/lambda_59/strided_slice_1/stack_1"
  input: "gModel_0/maskedBypass0/lambda_59/strided_slice_1/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 2
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/mul_3"
  op: "Mul"
  input: "gModel_0/maskedBypass0/lambda_59/strided_slice_1"
  input: "gModel_0/maskedBypass0/lambda_59/Placeholder_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gModel_0/maskedBypass0/lambda_59/add_1"
  op: "Add"
  input: "gModel_0/maskedBypass0/lambda_59/sub_1"
  input: "gModel_0/maskedBypass0/lambda_59/mul_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "input_1"
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
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 3
        }
      }
    }
  }
}
node {
  name: "Conv3DSN/lambda_60/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/lambda_60/MirrorPad"
  op: "MirrorPad"
  input: "input_1"
  input: "Conv3DSN/lambda_60/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "Conv3DSN/lambda_60/Placeholder"
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
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 3
        }
      }
    }
  }
}
node {
  name: "Conv3DSN/lambda_60/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/lambda_60/MirrorPad_1"
  op: "MirrorPad"
  input: "Conv3DSN/lambda_60/Placeholder"
  input: "Conv3DSN/lambda_60/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal/shape"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000\003\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal/stddev"
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
        float_val: 0.1786383092403412
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "Conv3DSN/conv3dsn_1/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 3729358
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal/mul"
  op: "Mul"
  input: "Conv3DSN/conv3dsn_1/truncated_normal/TruncatedNormal"
  input: "Conv3DSN/conv3dsn_1/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal"
  op: "Add"
  input: "Conv3DSN/conv3dsn_1/truncated_normal/mul"
  input: "Conv3DSN/conv3dsn_1/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/kernel"
  op: "VariableV2"
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
          size: 3
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
  name: "Conv3DSN/conv3dsn_1/kernel/Assign"
  op: "Assign"
  input: "Conv3DSN/conv3dsn_1/kernel"
  input: "Conv3DSN/conv3dsn_1/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN/conv3dsn_1/kernel"
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
  name: "Conv3DSN/conv3dsn_1/kernel/read"
  op: "Identity"
  input: "Conv3DSN/conv3dsn_1/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN/conv3dsn_1/kernel"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/bias"
  op: "VariableV2"
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
  name: "Conv3DSN/conv3dsn_1/bias/Assign"
  op: "Assign"
  input: "Conv3DSN/conv3dsn_1/bias"
  input: "Conv3DSN/conv3dsn_1/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN/conv3dsn_1/bias"
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
  name: "Conv3DSN/conv3dsn_1/bias/read"
  op: "Identity"
  input: "Conv3DSN/conv3dsn_1/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN/conv3dsn_1/bias"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal_1/shape"
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
        tensor_content: "\001\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal_1/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal_1/stddev"
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
        float_val: 0.05000000074505806
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal_1/TruncatedNormal"
  op: "TruncatedNormal"
  input: "Conv3DSN/conv3dsn_1/truncated_normal_1/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 4542442
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal_1/mul"
  op: "Mul"
  input: "Conv3DSN/conv3dsn_1/truncated_normal_1/TruncatedNormal"
  input: "Conv3DSN/conv3dsn_1/truncated_normal_1/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truncated_normal_1"
  op: "Add"
  input: "Conv3DSN/conv3dsn_1/truncated_normal_1/mul"
  input: "Conv3DSN/conv3dsn_1/truncated_normal_1/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/u_sn"
  op: "VariableV2"
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
  name: "Conv3DSN/conv3dsn_1/u_sn/Assign"
  op: "Assign"
  input: "Conv3DSN/conv3dsn_1/u_sn"
  input: "Conv3DSN/conv3dsn_1/truncated_normal_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN/conv3dsn_1/u_sn"
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
  name: "Conv3DSN/conv3dsn_1/u_sn/read"
  op: "Identity"
  input: "Conv3DSN/conv3dsn_1/u_sn"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN/conv3dsn_1/u_sn"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Reshape/shape"
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
        tensor_content: "\377\377\377\377`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Reshape"
  op: "Reshape"
  input: "Conv3DSN/conv3dsn_1/kernel/read"
  input: "Conv3DSN/conv3dsn_1/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/zeros"
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
            size: 1
          }
          dim {
            size: 81
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Variable"
  op: "VariableV2"
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
          size: 81
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
  name: "Conv3DSN/conv3dsn_1/Variable/Assign"
  op: "Assign"
  input: "Conv3DSN/conv3dsn_1/Variable"
  input: "Conv3DSN/conv3dsn_1/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN/conv3dsn_1/Variable"
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
  name: "Conv3DSN/conv3dsn_1/Variable/read"
  op: "Identity"
  input: "Conv3DSN/conv3dsn_1/Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN/conv3dsn_1/Variable"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose/Rank"
  op: "Rank"
  input: "Conv3DSN/conv3dsn_1/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose/sub"
  op: "Sub"
  input: "Conv3DSN/conv3dsn_1/transpose/Rank"
  input: "Conv3DSN/conv3dsn_1/transpose/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose/Range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose/Range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose/Range"
  op: "Range"
  input: "Conv3DSN/conv3dsn_1/transpose/Range/start"
  input: "Conv3DSN/conv3dsn_1/transpose/Rank"
  input: "Conv3DSN/conv3dsn_1/transpose/Range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose/sub_1"
  op: "Sub"
  input: "Conv3DSN/conv3dsn_1/transpose/sub"
  input: "Conv3DSN/conv3dsn_1/transpose/Range"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose"
  op: "Transpose"
  input: "Conv3DSN/conv3dsn_1/Reshape"
  input: "Conv3DSN/conv3dsn_1/transpose/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/MatMul"
  op: "MatMul"
  input: "Conv3DSN/conv3dsn_1/u_sn/read"
  input: "Conv3DSN/conv3dsn_1/transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/pow/y"
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
        float_val: 2.0
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/pow"
  op: "Pow"
  input: "Conv3DSN/conv3dsn_1/MatMul"
  input: "Conv3DSN/conv3dsn_1/pow/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Const_1"
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
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Sum"
  op: "Sum"
  input: "Conv3DSN/conv3dsn_1/pow"
  input: "Conv3DSN/conv3dsn_1/Const_1"
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
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/pow_1/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/pow_1"
  op: "Pow"
  input: "Conv3DSN/conv3dsn_1/Sum"
  input: "Conv3DSN/conv3dsn_1/pow_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Const_2"
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
        float_val: 9.999999960041972e-13
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Const_3"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/clip_by_value/Minimum"
  op: "Minimum"
  input: "Conv3DSN/conv3dsn_1/pow_1"
  input: "Conv3DSN/conv3dsn_1/Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/clip_by_value"
  op: "Maximum"
  input: "Conv3DSN/conv3dsn_1/clip_by_value/Minimum"
  input: "Conv3DSN/conv3dsn_1/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truediv"
  op: "RealDiv"
  input: "Conv3DSN/conv3dsn_1/MatMul"
  input: "Conv3DSN/conv3dsn_1/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/MatMul_1"
  op: "MatMul"
  input: "Conv3DSN/conv3dsn_1/truediv"
  input: "Conv3DSN/conv3dsn_1/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/pow_2/y"
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
        float_val: 2.0
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/pow_2"
  op: "Pow"
  input: "Conv3DSN/conv3dsn_1/MatMul_1"
  input: "Conv3DSN/conv3dsn_1/pow_2/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Const_4"
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
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Sum_1"
  op: "Sum"
  input: "Conv3DSN/conv3dsn_1/pow_2"
  input: "Conv3DSN/conv3dsn_1/Const_4"
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
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/pow_3/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/pow_3"
  op: "Pow"
  input: "Conv3DSN/conv3dsn_1/Sum_1"
  input: "Conv3DSN/conv3dsn_1/pow_3/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Const_5"
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
        float_val: 9.999999960041972e-13
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Const_6"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/clip_by_value_1/Minimum"
  op: "Minimum"
  input: "Conv3DSN/conv3dsn_1/pow_3"
  input: "Conv3DSN/conv3dsn_1/Const_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/clip_by_value_1"
  op: "Maximum"
  input: "Conv3DSN/conv3dsn_1/clip_by_value_1/Minimum"
  input: "Conv3DSN/conv3dsn_1/Const_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truediv_1"
  op: "RealDiv"
  input: "Conv3DSN/conv3dsn_1/MatMul_1"
  input: "Conv3DSN/conv3dsn_1/clip_by_value_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/MatMul_2"
  op: "MatMul"
  input: "Conv3DSN/conv3dsn_1/truediv"
  input: "Conv3DSN/conv3dsn_1/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose_1/Rank"
  op: "Rank"
  input: "Conv3DSN/conv3dsn_1/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose_1/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose_1/sub"
  op: "Sub"
  input: "Conv3DSN/conv3dsn_1/transpose_1/Rank"
  input: "Conv3DSN/conv3dsn_1/transpose_1/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose_1/Range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose_1/Range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose_1/Range"
  op: "Range"
  input: "Conv3DSN/conv3dsn_1/transpose_1/Range/start"
  input: "Conv3DSN/conv3dsn_1/transpose_1/Rank"
  input: "Conv3DSN/conv3dsn_1/transpose_1/Range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose_1/sub_1"
  op: "Sub"
  input: "Conv3DSN/conv3dsn_1/transpose_1/sub"
  input: "Conv3DSN/conv3dsn_1/transpose_1/Range"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/transpose_1"
  op: "Transpose"
  input: "Conv3DSN/conv3dsn_1/truediv_1"
  input: "Conv3DSN/conv3dsn_1/transpose_1/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/MatMul_3"
  op: "MatMul"
  input: "Conv3DSN/conv3dsn_1/MatMul_2"
  input: "Conv3DSN/conv3dsn_1/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/strided_slice/stack"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/strided_slice/stack_1"
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
  name: "Conv3DSN/conv3dsn_1/strided_slice/stack_2"
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
  name: "Conv3DSN/conv3dsn_1/strided_slice"
  op: "StridedSlice"
  input: "Conv3DSN/conv3dsn_1/MatMul_3"
  input: "Conv3DSN/conv3dsn_1/strided_slice/stack"
  input: "Conv3DSN/conv3dsn_1/strided_slice/stack_1"
  input: "Conv3DSN/conv3dsn_1/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 3
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/truediv_2"
  op: "RealDiv"
  input: "Conv3DSN/conv3dsn_1/Reshape"
  input: "Conv3DSN/conv3dsn_1/strided_slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000\003\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Reshape_1"
  op: "Reshape"
  input: "Conv3DSN/conv3dsn_1/truediv_2"
  input: "Conv3DSN/conv3dsn_1/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Assign"
  op: "Assign"
  input: "Conv3DSN/conv3dsn_1/u_sn"
  input: "Conv3DSN/conv3dsn_1/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN/conv3dsn_1/u_sn"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
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
  name: "Conv3DSN/conv3dsn_1/Assign_1"
  op: "Assign"
  input: "Conv3DSN/conv3dsn_1/u_sn"
  input: "Conv3DSN/conv3dsn_1/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN/conv3dsn_1/u_sn"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
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
  name: "Conv3DSN/conv3dsn_1/Reshape_2/shape"
  op: "Const"
  input: "^Conv3DSN/conv3dsn_1/Assign_1"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000\003\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Reshape_2"
  op: "Reshape"
  input: "Conv3DSN/conv3dsn_1/Reshape_1"
  input: "Conv3DSN/conv3dsn_1/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/convolution/dilation_rate"
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
            size: 3
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/convolution"
  op: "Conv3D"
  input: "Conv3DSN/lambda_60/MirrorPad"
  input: "Conv3DSN/conv3dsn_1/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NDHWC"
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
        i: 1
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Reshape_3/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/Reshape_3"
  op: "Reshape"
  input: "Conv3DSN/conv3dsn_1/bias/read"
  input: "Conv3DSN/conv3dsn_1/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN/conv3dsn_1/add"
  op: "Add"
  input: "Conv3DSN/conv3dsn_1/convolution"
  input: "Conv3DSN/conv3dsn_1/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN/elu_18/Elu"
  op: "Elu"
  input: "Conv3DSN/conv3dsn_1/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/lambda_61/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/lambda_61/MirrorPad"
  op: "MirrorPad"
  input: "Conv3DSN/elu_18/Elu"
  input: "Conv3DSN_1/lambda_61/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "Conv3DSN_1/lambda_61/Placeholder"
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
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 96
        }
      }
    }
  }
}
node {
  name: "Conv3DSN_1/lambda_61/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/lambda_61/MirrorPad_1"
  op: "MirrorPad"
  input: "Conv3DSN_1/lambda_61/Placeholder"
  input: "Conv3DSN_1/lambda_61/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal/shape"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000`\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal/stddev"
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
        float_val: 0.03157908841967583
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 9382994
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal/mul"
  op: "Mul"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal/TruncatedNormal"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal"
  op: "Add"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal/mul"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/kernel"
  op: "VariableV2"
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
  name: "Conv3DSN_1/conv3dsn_2/kernel/Assign"
  op: "Assign"
  input: "Conv3DSN_1/conv3dsn_2/kernel"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_1/conv3dsn_2/kernel"
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
  name: "Conv3DSN_1/conv3dsn_2/kernel/read"
  op: "Identity"
  input: "Conv3DSN_1/conv3dsn_2/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_1/conv3dsn_2/kernel"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/bias"
  op: "VariableV2"
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
  name: "Conv3DSN_1/conv3dsn_2/bias/Assign"
  op: "Assign"
  input: "Conv3DSN_1/conv3dsn_2/bias"
  input: "Conv3DSN_1/conv3dsn_2/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_1/conv3dsn_2/bias"
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
  name: "Conv3DSN_1/conv3dsn_2/bias/read"
  op: "Identity"
  input: "Conv3DSN_1/conv3dsn_2/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_1/conv3dsn_2/bias"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal_1/shape"
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
        tensor_content: "\001\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal_1/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal_1/stddev"
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
        float_val: 0.05000000074505806
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal_1/TruncatedNormal"
  op: "TruncatedNormal"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal_1/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 343473
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal_1/mul"
  op: "Mul"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal_1/TruncatedNormal"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal_1/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truncated_normal_1"
  op: "Add"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal_1/mul"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal_1/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/u_sn"
  op: "VariableV2"
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
  name: "Conv3DSN_1/conv3dsn_2/u_sn/Assign"
  op: "Assign"
  input: "Conv3DSN_1/conv3dsn_2/u_sn"
  input: "Conv3DSN_1/conv3dsn_2/truncated_normal_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_1/conv3dsn_2/u_sn"
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
  name: "Conv3DSN_1/conv3dsn_2/u_sn/read"
  op: "Identity"
  input: "Conv3DSN_1/conv3dsn_2/u_sn"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_1/conv3dsn_2/u_sn"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Reshape/shape"
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
        tensor_content: "\377\377\377\377`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Reshape"
  op: "Reshape"
  input: "Conv3DSN_1/conv3dsn_2/kernel/read"
  input: "Conv3DSN_1/conv3dsn_2/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/zeros/shape_as_tensor"
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
        tensor_content: "\001\000\000\000 \n\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/zeros/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/zeros"
  op: "Fill"
  input: "Conv3DSN_1/conv3dsn_2/zeros/shape_as_tensor"
  input: "Conv3DSN_1/conv3dsn_2/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Variable"
  op: "VariableV2"
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
          size: 2592
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
  name: "Conv3DSN_1/conv3dsn_2/Variable/Assign"
  op: "Assign"
  input: "Conv3DSN_1/conv3dsn_2/Variable"
  input: "Conv3DSN_1/conv3dsn_2/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_1/conv3dsn_2/Variable"
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
  name: "Conv3DSN_1/conv3dsn_2/Variable/read"
  op: "Identity"
  input: "Conv3DSN_1/conv3dsn_2/Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_1/conv3dsn_2/Variable"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose/Rank"
  op: "Rank"
  input: "Conv3DSN_1/conv3dsn_2/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose/sub"
  op: "Sub"
  input: "Conv3DSN_1/conv3dsn_2/transpose/Rank"
  input: "Conv3DSN_1/conv3dsn_2/transpose/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose/Range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose/Range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose/Range"
  op: "Range"
  input: "Conv3DSN_1/conv3dsn_2/transpose/Range/start"
  input: "Conv3DSN_1/conv3dsn_2/transpose/Rank"
  input: "Conv3DSN_1/conv3dsn_2/transpose/Range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose/sub_1"
  op: "Sub"
  input: "Conv3DSN_1/conv3dsn_2/transpose/sub"
  input: "Conv3DSN_1/conv3dsn_2/transpose/Range"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose"
  op: "Transpose"
  input: "Conv3DSN_1/conv3dsn_2/Reshape"
  input: "Conv3DSN_1/conv3dsn_2/transpose/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/MatMul"
  op: "MatMul"
  input: "Conv3DSN_1/conv3dsn_2/u_sn/read"
  input: "Conv3DSN_1/conv3dsn_2/transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/pow/y"
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
        float_val: 2.0
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/pow"
  op: "Pow"
  input: "Conv3DSN_1/conv3dsn_2/MatMul"
  input: "Conv3DSN_1/conv3dsn_2/pow/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Const_1"
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
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Sum"
  op: "Sum"
  input: "Conv3DSN_1/conv3dsn_2/pow"
  input: "Conv3DSN_1/conv3dsn_2/Const_1"
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
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/pow_1/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/pow_1"
  op: "Pow"
  input: "Conv3DSN_1/conv3dsn_2/Sum"
  input: "Conv3DSN_1/conv3dsn_2/pow_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Const_2"
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
        float_val: 9.999999960041972e-13
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Const_3"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/clip_by_value/Minimum"
  op: "Minimum"
  input: "Conv3DSN_1/conv3dsn_2/pow_1"
  input: "Conv3DSN_1/conv3dsn_2/Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/clip_by_value"
  op: "Maximum"
  input: "Conv3DSN_1/conv3dsn_2/clip_by_value/Minimum"
  input: "Conv3DSN_1/conv3dsn_2/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truediv"
  op: "RealDiv"
  input: "Conv3DSN_1/conv3dsn_2/MatMul"
  input: "Conv3DSN_1/conv3dsn_2/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/MatMul_1"
  op: "MatMul"
  input: "Conv3DSN_1/conv3dsn_2/truediv"
  input: "Conv3DSN_1/conv3dsn_2/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/pow_2/y"
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
        float_val: 2.0
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/pow_2"
  op: "Pow"
  input: "Conv3DSN_1/conv3dsn_2/MatMul_1"
  input: "Conv3DSN_1/conv3dsn_2/pow_2/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Const_4"
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
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Sum_1"
  op: "Sum"
  input: "Conv3DSN_1/conv3dsn_2/pow_2"
  input: "Conv3DSN_1/conv3dsn_2/Const_4"
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
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/pow_3/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/pow_3"
  op: "Pow"
  input: "Conv3DSN_1/conv3dsn_2/Sum_1"
  input: "Conv3DSN_1/conv3dsn_2/pow_3/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Const_5"
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
        float_val: 9.999999960041972e-13
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Const_6"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/clip_by_value_1/Minimum"
  op: "Minimum"
  input: "Conv3DSN_1/conv3dsn_2/pow_3"
  input: "Conv3DSN_1/conv3dsn_2/Const_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/clip_by_value_1"
  op: "Maximum"
  input: "Conv3DSN_1/conv3dsn_2/clip_by_value_1/Minimum"
  input: "Conv3DSN_1/conv3dsn_2/Const_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truediv_1"
  op: "RealDiv"
  input: "Conv3DSN_1/conv3dsn_2/MatMul_1"
  input: "Conv3DSN_1/conv3dsn_2/clip_by_value_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/MatMul_2"
  op: "MatMul"
  input: "Conv3DSN_1/conv3dsn_2/truediv"
  input: "Conv3DSN_1/conv3dsn_2/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose_1/Rank"
  op: "Rank"
  input: "Conv3DSN_1/conv3dsn_2/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose_1/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose_1/sub"
  op: "Sub"
  input: "Conv3DSN_1/conv3dsn_2/transpose_1/Rank"
  input: "Conv3DSN_1/conv3dsn_2/transpose_1/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose_1/Range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose_1/Range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose_1/Range"
  op: "Range"
  input: "Conv3DSN_1/conv3dsn_2/transpose_1/Range/start"
  input: "Conv3DSN_1/conv3dsn_2/transpose_1/Rank"
  input: "Conv3DSN_1/conv3dsn_2/transpose_1/Range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose_1/sub_1"
  op: "Sub"
  input: "Conv3DSN_1/conv3dsn_2/transpose_1/sub"
  input: "Conv3DSN_1/conv3dsn_2/transpose_1/Range"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/transpose_1"
  op: "Transpose"
  input: "Conv3DSN_1/conv3dsn_2/truediv_1"
  input: "Conv3DSN_1/conv3dsn_2/transpose_1/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/MatMul_3"
  op: "MatMul"
  input: "Conv3DSN_1/conv3dsn_2/MatMul_2"
  input: "Conv3DSN_1/conv3dsn_2/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/strided_slice/stack"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/strided_slice/stack_1"
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
  name: "Conv3DSN_1/conv3dsn_2/strided_slice/stack_2"
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
  name: "Conv3DSN_1/conv3dsn_2/strided_slice"
  op: "StridedSlice"
  input: "Conv3DSN_1/conv3dsn_2/MatMul_3"
  input: "Conv3DSN_1/conv3dsn_2/strided_slice/stack"
  input: "Conv3DSN_1/conv3dsn_2/strided_slice/stack_1"
  input: "Conv3DSN_1/conv3dsn_2/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 3
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/truediv_2"
  op: "RealDiv"
  input: "Conv3DSN_1/conv3dsn_2/Reshape"
  input: "Conv3DSN_1/conv3dsn_2/strided_slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000`\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Reshape_1"
  op: "Reshape"
  input: "Conv3DSN_1/conv3dsn_2/truediv_2"
  input: "Conv3DSN_1/conv3dsn_2/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Assign"
  op: "Assign"
  input: "Conv3DSN_1/conv3dsn_2/u_sn"
  input: "Conv3DSN_1/conv3dsn_2/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_1/conv3dsn_2/u_sn"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
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
  name: "Conv3DSN_1/conv3dsn_2/Assign_1"
  op: "Assign"
  input: "Conv3DSN_1/conv3dsn_2/u_sn"
  input: "Conv3DSN_1/conv3dsn_2/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_1/conv3dsn_2/u_sn"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
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
  name: "Conv3DSN_1/conv3dsn_2/Reshape_2/shape"
  op: "Const"
  input: "^Conv3DSN_1/conv3dsn_2/Assign_1"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000`\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Reshape_2"
  op: "Reshape"
  input: "Conv3DSN_1/conv3dsn_2/Reshape_1"
  input: "Conv3DSN_1/conv3dsn_2/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/convolution/dilation_rate"
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
            size: 3
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/convolution"
  op: "Conv3D"
  input: "Conv3DSN_1/lambda_61/MirrorPad"
  input: "Conv3DSN_1/conv3dsn_2/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NDHWC"
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
        i: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Reshape_3/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000`\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/Reshape_3"
  op: "Reshape"
  input: "Conv3DSN_1/conv3dsn_2/bias/read"
  input: "Conv3DSN_1/conv3dsn_2/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_1/conv3dsn_2/add"
  op: "Add"
  input: "Conv3DSN_1/conv3dsn_2/convolution"
  input: "Conv3DSN_1/conv3dsn_2/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_1/elu_19/Elu"
  op: "Elu"
  input: "Conv3DSN_1/conv3dsn_2/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "lambda_62/strided_slice/stack"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice/stack_1"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice/stack_2/values_0"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice/stack_2/values_1"
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
  name: "lambda_62/strided_slice/stack_2"
  op: "Pack"
  input: "lambda_62/strided_slice/stack_2/values_0"
  input: "lambda_62/strided_slice/stack_2/values_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_62/strided_slice/stack_3"
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
  name: "lambda_62/strided_slice"
  op: "StridedSlice"
  input: "Conv3DSN_1/elu_19/Elu"
  input: "lambda_62/strided_slice/stack"
  input: "lambda_62/strided_slice/stack_2"
  input: "lambda_62/strided_slice/stack_3"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 2
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_62/add"
  op: "Add"
  input: "lambda_62/strided_slice"
  input: "input_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "lambda_62/strided_slice_1/stack"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice_1/stack_1/values_0"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice_1/stack_1/values_1"
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
  name: "lambda_62/strided_slice_1/stack_1"
  op: "Pack"
  input: "lambda_62/strided_slice_1/stack_1/values_0"
  input: "lambda_62/strided_slice_1/stack_1/values_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_62/strided_slice_1/stack_2"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice_1/stack_3"
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
  name: "lambda_62/strided_slice_1"
  op: "StridedSlice"
  input: "Conv3DSN_1/elu_19/Elu"
  input: "lambda_62/strided_slice_1/stack_1"
  input: "lambda_62/strided_slice_1/stack_2"
  input: "lambda_62/strided_slice_1/stack_3"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 2
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_62/concat/axis"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "lambda_62/concat"
  op: "ConcatV2"
  input: "lambda_62/add"
  input: "lambda_62/strided_slice_1"
  input: "lambda_62/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "lambda_62/Placeholder"
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
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 96
        }
      }
    }
  }
}
node {
  name: "lambda_62/Placeholder_1"
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
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 3
        }
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice_2/stack"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice_2/stack_1"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice_2/stack_2/values_0"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice_2/stack_2/values_1"
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
  name: "lambda_62/strided_slice_2/stack_2"
  op: "Pack"
  input: "lambda_62/strided_slice_2/stack_2/values_0"
  input: "lambda_62/strided_slice_2/stack_2/values_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_62/strided_slice_2/stack_3"
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
  name: "lambda_62/strided_slice_2"
  op: "StridedSlice"
  input: "lambda_62/Placeholder"
  input: "lambda_62/strided_slice_2/stack"
  input: "lambda_62/strided_slice_2/stack_2"
  input: "lambda_62/strided_slice_2/stack_3"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 2
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_62/add_1"
  op: "Add"
  input: "lambda_62/strided_slice_2"
  input: "lambda_62/Placeholder_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "lambda_62/strided_slice_3/stack"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice_3/stack_1/values_0"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice_3/stack_1/values_1"
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
  name: "lambda_62/strided_slice_3/stack_1"
  op: "Pack"
  input: "lambda_62/strided_slice_3/stack_1/values_0"
  input: "lambda_62/strided_slice_3/stack_1/values_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_62/strided_slice_3/stack_2"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "lambda_62/strided_slice_3/stack_3"
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
  name: "lambda_62/strided_slice_3"
  op: "StridedSlice"
  input: "lambda_62/Placeholder"
  input: "lambda_62/strided_slice_3/stack_1"
  input: "lambda_62/strided_slice_3/stack_2"
  input: "lambda_62/strided_slice_3/stack_3"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 2
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_62/concat_1/axis"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "lambda_62/concat_1"
  op: "ConcatV2"
  input: "lambda_62/add_1"
  input: "lambda_62/strided_slice_3"
  input: "lambda_62/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "average_pooling3d_1/AvgPool3D"
  op: "AvgPool3D"
  input: "lambda_62/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NDHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 1
        i: 2
        i: 2
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
        i: 2
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_2/lambda_63/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/lambda_63/MirrorPad"
  op: "MirrorPad"
  input: "average_pooling3d_1/AvgPool3D"
  input: "Conv3DSN_2/lambda_63/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "Conv3DSN_2/lambda_63/Placeholder"
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
          size: 32
        }
        dim {
          size: 64
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
}
node {
  name: "Conv3DSN_2/lambda_63/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/lambda_63/MirrorPad_1"
  op: "MirrorPad"
  input: "Conv3DSN_2/lambda_63/Placeholder"
  input: "Conv3DSN_2/lambda_63/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal/shape"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000`\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal/stddev"
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
        float_val: 0.03157908841967583
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 7005627
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal/mul"
  op: "Mul"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal/TruncatedNormal"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal"
  op: "Add"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal/mul"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/kernel"
  op: "VariableV2"
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
          size: 96
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
  name: "Conv3DSN_2/conv3dsn_3/kernel/Assign"
  op: "Assign"
  input: "Conv3DSN_2/conv3dsn_3/kernel"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_2/conv3dsn_3/kernel"
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
  name: "Conv3DSN_2/conv3dsn_3/kernel/read"
  op: "Identity"
  input: "Conv3DSN_2/conv3dsn_3/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_2/conv3dsn_3/kernel"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/bias"
  op: "VariableV2"
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
  name: "Conv3DSN_2/conv3dsn_3/bias/Assign"
  op: "Assign"
  input: "Conv3DSN_2/conv3dsn_3/bias"
  input: "Conv3DSN_2/conv3dsn_3/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_2/conv3dsn_3/bias"
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
  name: "Conv3DSN_2/conv3dsn_3/bias/read"
  op: "Identity"
  input: "Conv3DSN_2/conv3dsn_3/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_2/conv3dsn_3/bias"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal_1/shape"
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
        tensor_content: "\001\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal_1/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal_1/stddev"
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
        float_val: 0.05000000074505806
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal_1/TruncatedNormal"
  op: "TruncatedNormal"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal_1/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 782551
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal_1/mul"
  op: "Mul"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal_1/TruncatedNormal"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal_1/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truncated_normal_1"
  op: "Add"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal_1/mul"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal_1/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/u_sn"
  op: "VariableV2"
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
  name: "Conv3DSN_2/conv3dsn_3/u_sn/Assign"
  op: "Assign"
  input: "Conv3DSN_2/conv3dsn_3/u_sn"
  input: "Conv3DSN_2/conv3dsn_3/truncated_normal_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_2/conv3dsn_3/u_sn"
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
  name: "Conv3DSN_2/conv3dsn_3/u_sn/read"
  op: "Identity"
  input: "Conv3DSN_2/conv3dsn_3/u_sn"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_2/conv3dsn_3/u_sn"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Reshape/shape"
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
        tensor_content: "\377\377\377\377\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Reshape"
  op: "Reshape"
  input: "Conv3DSN_2/conv3dsn_3/kernel/read"
  input: "Conv3DSN_2/conv3dsn_3/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/zeros/shape_as_tensor"
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
        tensor_content: "\001\000\000\000 \n\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/zeros/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/zeros"
  op: "Fill"
  input: "Conv3DSN_2/conv3dsn_3/zeros/shape_as_tensor"
  input: "Conv3DSN_2/conv3dsn_3/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Variable"
  op: "VariableV2"
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
          size: 2592
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
  name: "Conv3DSN_2/conv3dsn_3/Variable/Assign"
  op: "Assign"
  input: "Conv3DSN_2/conv3dsn_3/Variable"
  input: "Conv3DSN_2/conv3dsn_3/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_2/conv3dsn_3/Variable"
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
  name: "Conv3DSN_2/conv3dsn_3/Variable/read"
  op: "Identity"
  input: "Conv3DSN_2/conv3dsn_3/Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_2/conv3dsn_3/Variable"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose/Rank"
  op: "Rank"
  input: "Conv3DSN_2/conv3dsn_3/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose/sub"
  op: "Sub"
  input: "Conv3DSN_2/conv3dsn_3/transpose/Rank"
  input: "Conv3DSN_2/conv3dsn_3/transpose/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose/Range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose/Range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose/Range"
  op: "Range"
  input: "Conv3DSN_2/conv3dsn_3/transpose/Range/start"
  input: "Conv3DSN_2/conv3dsn_3/transpose/Rank"
  input: "Conv3DSN_2/conv3dsn_3/transpose/Range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose/sub_1"
  op: "Sub"
  input: "Conv3DSN_2/conv3dsn_3/transpose/sub"
  input: "Conv3DSN_2/conv3dsn_3/transpose/Range"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose"
  op: "Transpose"
  input: "Conv3DSN_2/conv3dsn_3/Reshape"
  input: "Conv3DSN_2/conv3dsn_3/transpose/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/MatMul"
  op: "MatMul"
  input: "Conv3DSN_2/conv3dsn_3/u_sn/read"
  input: "Conv3DSN_2/conv3dsn_3/transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/pow/y"
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
        float_val: 2.0
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/pow"
  op: "Pow"
  input: "Conv3DSN_2/conv3dsn_3/MatMul"
  input: "Conv3DSN_2/conv3dsn_3/pow/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Const_1"
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
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Sum"
  op: "Sum"
  input: "Conv3DSN_2/conv3dsn_3/pow"
  input: "Conv3DSN_2/conv3dsn_3/Const_1"
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
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/pow_1/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/pow_1"
  op: "Pow"
  input: "Conv3DSN_2/conv3dsn_3/Sum"
  input: "Conv3DSN_2/conv3dsn_3/pow_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Const_2"
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
        float_val: 9.999999960041972e-13
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Const_3"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/clip_by_value/Minimum"
  op: "Minimum"
  input: "Conv3DSN_2/conv3dsn_3/pow_1"
  input: "Conv3DSN_2/conv3dsn_3/Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/clip_by_value"
  op: "Maximum"
  input: "Conv3DSN_2/conv3dsn_3/clip_by_value/Minimum"
  input: "Conv3DSN_2/conv3dsn_3/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truediv"
  op: "RealDiv"
  input: "Conv3DSN_2/conv3dsn_3/MatMul"
  input: "Conv3DSN_2/conv3dsn_3/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/MatMul_1"
  op: "MatMul"
  input: "Conv3DSN_2/conv3dsn_3/truediv"
  input: "Conv3DSN_2/conv3dsn_3/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/pow_2/y"
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
        float_val: 2.0
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/pow_2"
  op: "Pow"
  input: "Conv3DSN_2/conv3dsn_3/MatMul_1"
  input: "Conv3DSN_2/conv3dsn_3/pow_2/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Const_4"
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
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Sum_1"
  op: "Sum"
  input: "Conv3DSN_2/conv3dsn_3/pow_2"
  input: "Conv3DSN_2/conv3dsn_3/Const_4"
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
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/pow_3/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/pow_3"
  op: "Pow"
  input: "Conv3DSN_2/conv3dsn_3/Sum_1"
  input: "Conv3DSN_2/conv3dsn_3/pow_3/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Const_5"
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
        float_val: 9.999999960041972e-13
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Const_6"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/clip_by_value_1/Minimum"
  op: "Minimum"
  input: "Conv3DSN_2/conv3dsn_3/pow_3"
  input: "Conv3DSN_2/conv3dsn_3/Const_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/clip_by_value_1"
  op: "Maximum"
  input: "Conv3DSN_2/conv3dsn_3/clip_by_value_1/Minimum"
  input: "Conv3DSN_2/conv3dsn_3/Const_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truediv_1"
  op: "RealDiv"
  input: "Conv3DSN_2/conv3dsn_3/MatMul_1"
  input: "Conv3DSN_2/conv3dsn_3/clip_by_value_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/MatMul_2"
  op: "MatMul"
  input: "Conv3DSN_2/conv3dsn_3/truediv"
  input: "Conv3DSN_2/conv3dsn_3/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose_1/Rank"
  op: "Rank"
  input: "Conv3DSN_2/conv3dsn_3/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose_1/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose_1/sub"
  op: "Sub"
  input: "Conv3DSN_2/conv3dsn_3/transpose_1/Rank"
  input: "Conv3DSN_2/conv3dsn_3/transpose_1/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose_1/Range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose_1/Range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose_1/Range"
  op: "Range"
  input: "Conv3DSN_2/conv3dsn_3/transpose_1/Range/start"
  input: "Conv3DSN_2/conv3dsn_3/transpose_1/Rank"
  input: "Conv3DSN_2/conv3dsn_3/transpose_1/Range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose_1/sub_1"
  op: "Sub"
  input: "Conv3DSN_2/conv3dsn_3/transpose_1/sub"
  input: "Conv3DSN_2/conv3dsn_3/transpose_1/Range"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/transpose_1"
  op: "Transpose"
  input: "Conv3DSN_2/conv3dsn_3/truediv_1"
  input: "Conv3DSN_2/conv3dsn_3/transpose_1/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/MatMul_3"
  op: "MatMul"
  input: "Conv3DSN_2/conv3dsn_3/MatMul_2"
  input: "Conv3DSN_2/conv3dsn_3/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/strided_slice/stack"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/strided_slice/stack_1"
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
  name: "Conv3DSN_2/conv3dsn_3/strided_slice/stack_2"
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
  name: "Conv3DSN_2/conv3dsn_3/strided_slice"
  op: "StridedSlice"
  input: "Conv3DSN_2/conv3dsn_3/MatMul_3"
  input: "Conv3DSN_2/conv3dsn_3/strided_slice/stack"
  input: "Conv3DSN_2/conv3dsn_3/strided_slice/stack_1"
  input: "Conv3DSN_2/conv3dsn_3/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 3
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/truediv_2"
  op: "RealDiv"
  input: "Conv3DSN_2/conv3dsn_3/Reshape"
  input: "Conv3DSN_2/conv3dsn_3/strided_slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000`\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Reshape_1"
  op: "Reshape"
  input: "Conv3DSN_2/conv3dsn_3/truediv_2"
  input: "Conv3DSN_2/conv3dsn_3/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Assign"
  op: "Assign"
  input: "Conv3DSN_2/conv3dsn_3/u_sn"
  input: "Conv3DSN_2/conv3dsn_3/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_2/conv3dsn_3/u_sn"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
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
  name: "Conv3DSN_2/conv3dsn_3/Assign_1"
  op: "Assign"
  input: "Conv3DSN_2/conv3dsn_3/u_sn"
  input: "Conv3DSN_2/conv3dsn_3/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_2/conv3dsn_3/u_sn"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
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
  name: "Conv3DSN_2/conv3dsn_3/Reshape_2/shape"
  op: "Const"
  input: "^Conv3DSN_2/conv3dsn_3/Assign_1"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000`\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Reshape_2"
  op: "Reshape"
  input: "Conv3DSN_2/conv3dsn_3/Reshape_1"
  input: "Conv3DSN_2/conv3dsn_3/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/convolution/dilation_rate"
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
            size: 3
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/convolution"
  op: "Conv3D"
  input: "Conv3DSN_2/lambda_63/MirrorPad"
  input: "Conv3DSN_2/conv3dsn_3/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NDHWC"
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
        i: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Reshape_3/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/Reshape_3"
  op: "Reshape"
  input: "Conv3DSN_2/conv3dsn_3/bias/read"
  input: "Conv3DSN_2/conv3dsn_3/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_2/conv3dsn_3/add"
  op: "Add"
  input: "Conv3DSN_2/conv3dsn_3/convolution"
  input: "Conv3DSN_2/conv3dsn_3/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_2/elu_20/Elu"
  op: "Elu"
  input: "Conv3DSN_2/conv3dsn_3/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/lambda_64/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/lambda_64/MirrorPad"
  op: "MirrorPad"
  input: "Conv3DSN_2/elu_20/Elu"
  input: "Conv3DSN_3/lambda_64/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "Conv3DSN_3/lambda_64/Placeholder"
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
          size: 32
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 192
        }
      }
    }
  }
}
node {
  name: "Conv3DSN_3/lambda_64/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/lambda_64/MirrorPad_1"
  op: "MirrorPad"
  input: "Conv3DSN_3/lambda_64/Placeholder"
  input: "Conv3DSN_3/lambda_64/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal/shape"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000\300\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal/stddev"
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
        float_val: 0.02232978865504265
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 4711427
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal/mul"
  op: "Mul"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal/TruncatedNormal"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal"
  op: "Add"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal/mul"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/kernel"
  op: "VariableV2"
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
  name: "Conv3DSN_3/conv3dsn_4/kernel/Assign"
  op: "Assign"
  input: "Conv3DSN_3/conv3dsn_4/kernel"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_3/conv3dsn_4/kernel"
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
  name: "Conv3DSN_3/conv3dsn_4/kernel/read"
  op: "Identity"
  input: "Conv3DSN_3/conv3dsn_4/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_3/conv3dsn_4/kernel"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/bias"
  op: "VariableV2"
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
  name: "Conv3DSN_3/conv3dsn_4/bias/Assign"
  op: "Assign"
  input: "Conv3DSN_3/conv3dsn_4/bias"
  input: "Conv3DSN_3/conv3dsn_4/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_3/conv3dsn_4/bias"
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
  name: "Conv3DSN_3/conv3dsn_4/bias/read"
  op: "Identity"
  input: "Conv3DSN_3/conv3dsn_4/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_3/conv3dsn_4/bias"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal_1/shape"
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
        tensor_content: "\001\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal_1/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal_1/stddev"
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
        float_val: 0.05000000074505806
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal_1/TruncatedNormal"
  op: "TruncatedNormal"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal_1/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 8069700
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal_1/mul"
  op: "Mul"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal_1/TruncatedNormal"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal_1/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truncated_normal_1"
  op: "Add"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal_1/mul"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal_1/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/u_sn"
  op: "VariableV2"
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
  name: "Conv3DSN_3/conv3dsn_4/u_sn/Assign"
  op: "Assign"
  input: "Conv3DSN_3/conv3dsn_4/u_sn"
  input: "Conv3DSN_3/conv3dsn_4/truncated_normal_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_3/conv3dsn_4/u_sn"
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
  name: "Conv3DSN_3/conv3dsn_4/u_sn/read"
  op: "Identity"
  input: "Conv3DSN_3/conv3dsn_4/u_sn"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_3/conv3dsn_4/u_sn"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Reshape/shape"
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
        tensor_content: "\377\377\377\377\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Reshape"
  op: "Reshape"
  input: "Conv3DSN_3/conv3dsn_4/kernel/read"
  input: "Conv3DSN_3/conv3dsn_4/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/zeros/shape_as_tensor"
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
        tensor_content: "\001\000\000\000@\024\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/zeros/Const"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/zeros"
  op: "Fill"
  input: "Conv3DSN_3/conv3dsn_4/zeros/shape_as_tensor"
  input: "Conv3DSN_3/conv3dsn_4/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "index_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Variable"
  op: "VariableV2"
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
          size: 5184
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
  name: "Conv3DSN_3/conv3dsn_4/Variable/Assign"
  op: "Assign"
  input: "Conv3DSN_3/conv3dsn_4/Variable"
  input: "Conv3DSN_3/conv3dsn_4/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_3/conv3dsn_4/Variable"
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
  name: "Conv3DSN_3/conv3dsn_4/Variable/read"
  op: "Identity"
  input: "Conv3DSN_3/conv3dsn_4/Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_3/conv3dsn_4/Variable"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose/Rank"
  op: "Rank"
  input: "Conv3DSN_3/conv3dsn_4/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose/sub"
  op: "Sub"
  input: "Conv3DSN_3/conv3dsn_4/transpose/Rank"
  input: "Conv3DSN_3/conv3dsn_4/transpose/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose/Range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose/Range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose/Range"
  op: "Range"
  input: "Conv3DSN_3/conv3dsn_4/transpose/Range/start"
  input: "Conv3DSN_3/conv3dsn_4/transpose/Rank"
  input: "Conv3DSN_3/conv3dsn_4/transpose/Range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose/sub_1"
  op: "Sub"
  input: "Conv3DSN_3/conv3dsn_4/transpose/sub"
  input: "Conv3DSN_3/conv3dsn_4/transpose/Range"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose"
  op: "Transpose"
  input: "Conv3DSN_3/conv3dsn_4/Reshape"
  input: "Conv3DSN_3/conv3dsn_4/transpose/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/MatMul"
  op: "MatMul"
  input: "Conv3DSN_3/conv3dsn_4/u_sn/read"
  input: "Conv3DSN_3/conv3dsn_4/transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/pow/y"
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
        float_val: 2.0
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/pow"
  op: "Pow"
  input: "Conv3DSN_3/conv3dsn_4/MatMul"
  input: "Conv3DSN_3/conv3dsn_4/pow/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Const_1"
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
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Sum"
  op: "Sum"
  input: "Conv3DSN_3/conv3dsn_4/pow"
  input: "Conv3DSN_3/conv3dsn_4/Const_1"
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
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/pow_1/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/pow_1"
  op: "Pow"
  input: "Conv3DSN_3/conv3dsn_4/Sum"
  input: "Conv3DSN_3/conv3dsn_4/pow_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Const_2"
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
        float_val: 9.999999960041972e-13
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Const_3"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/clip_by_value/Minimum"
  op: "Minimum"
  input: "Conv3DSN_3/conv3dsn_4/pow_1"
  input: "Conv3DSN_3/conv3dsn_4/Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/clip_by_value"
  op: "Maximum"
  input: "Conv3DSN_3/conv3dsn_4/clip_by_value/Minimum"
  input: "Conv3DSN_3/conv3dsn_4/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truediv"
  op: "RealDiv"
  input: "Conv3DSN_3/conv3dsn_4/MatMul"
  input: "Conv3DSN_3/conv3dsn_4/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/MatMul_1"
  op: "MatMul"
  input: "Conv3DSN_3/conv3dsn_4/truediv"
  input: "Conv3DSN_3/conv3dsn_4/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/pow_2/y"
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
        float_val: 2.0
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/pow_2"
  op: "Pow"
  input: "Conv3DSN_3/conv3dsn_4/MatMul_1"
  input: "Conv3DSN_3/conv3dsn_4/pow_2/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Const_4"
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
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Sum_1"
  op: "Sum"
  input: "Conv3DSN_3/conv3dsn_4/pow_2"
  input: "Conv3DSN_3/conv3dsn_4/Const_4"
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
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/pow_3/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/pow_3"
  op: "Pow"
  input: "Conv3DSN_3/conv3dsn_4/Sum_1"
  input: "Conv3DSN_3/conv3dsn_4/pow_3/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Const_5"
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
        float_val: 9.999999960041972e-13
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Const_6"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/clip_by_value_1/Minimum"
  op: "Minimum"
  input: "Conv3DSN_3/conv3dsn_4/pow_3"
  input: "Conv3DSN_3/conv3dsn_4/Const_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/clip_by_value_1"
  op: "Maximum"
  input: "Conv3DSN_3/conv3dsn_4/clip_by_value_1/Minimum"
  input: "Conv3DSN_3/conv3dsn_4/Const_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truediv_1"
  op: "RealDiv"
  input: "Conv3DSN_3/conv3dsn_4/MatMul_1"
  input: "Conv3DSN_3/conv3dsn_4/clip_by_value_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/MatMul_2"
  op: "MatMul"
  input: "Conv3DSN_3/conv3dsn_4/truediv"
  input: "Conv3DSN_3/conv3dsn_4/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose_1/Rank"
  op: "Rank"
  input: "Conv3DSN_3/conv3dsn_4/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose_1/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose_1/sub"
  op: "Sub"
  input: "Conv3DSN_3/conv3dsn_4/transpose_1/Rank"
  input: "Conv3DSN_3/conv3dsn_4/transpose_1/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose_1/Range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose_1/Range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose_1/Range"
  op: "Range"
  input: "Conv3DSN_3/conv3dsn_4/transpose_1/Range/start"
  input: "Conv3DSN_3/conv3dsn_4/transpose_1/Rank"
  input: "Conv3DSN_3/conv3dsn_4/transpose_1/Range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose_1/sub_1"
  op: "Sub"
  input: "Conv3DSN_3/conv3dsn_4/transpose_1/sub"
  input: "Conv3DSN_3/conv3dsn_4/transpose_1/Range"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/transpose_1"
  op: "Transpose"
  input: "Conv3DSN_3/conv3dsn_4/truediv_1"
  input: "Conv3DSN_3/conv3dsn_4/transpose_1/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/MatMul_3"
  op: "MatMul"
  input: "Conv3DSN_3/conv3dsn_4/MatMul_2"
  input: "Conv3DSN_3/conv3dsn_4/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/strided_slice/stack"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/strided_slice/stack_1"
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
  name: "Conv3DSN_3/conv3dsn_4/strided_slice/stack_2"
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
  name: "Conv3DSN_3/conv3dsn_4/strided_slice"
  op: "StridedSlice"
  input: "Conv3DSN_3/conv3dsn_4/MatMul_3"
  input: "Conv3DSN_3/conv3dsn_4/strided_slice/stack"
  input: "Conv3DSN_3/conv3dsn_4/strided_slice/stack_1"
  input: "Conv3DSN_3/conv3dsn_4/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 3
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/truediv_2"
  op: "RealDiv"
  input: "Conv3DSN_3/conv3dsn_4/Reshape"
  input: "Conv3DSN_3/conv3dsn_4/strided_slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000\300\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Reshape_1"
  op: "Reshape"
  input: "Conv3DSN_3/conv3dsn_4/truediv_2"
  input: "Conv3DSN_3/conv3dsn_4/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Assign"
  op: "Assign"
  input: "Conv3DSN_3/conv3dsn_4/u_sn"
  input: "Conv3DSN_3/conv3dsn_4/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_3/conv3dsn_4/u_sn"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
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
  name: "Conv3DSN_3/conv3dsn_4/Assign_1"
  op: "Assign"
  input: "Conv3DSN_3/conv3dsn_4/u_sn"
  input: "Conv3DSN_3/conv3dsn_4/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_3/conv3dsn_4/u_sn"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
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
  name: "Conv3DSN_3/conv3dsn_4/Reshape_2/shape"
  op: "Const"
  input: "^Conv3DSN_3/conv3dsn_4/Assign_1"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000\300\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Reshape_2"
  op: "Reshape"
  input: "Conv3DSN_3/conv3dsn_4/Reshape_1"
  input: "Conv3DSN_3/conv3dsn_4/Reshape_2/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/convolution/dilation_rate"
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
            size: 3
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/convolution"
  op: "Conv3D"
  input: "Conv3DSN_3/lambda_64/MirrorPad"
  input: "Conv3DSN_3/conv3dsn_4/Reshape_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NDHWC"
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
        i: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Reshape_3/shape"
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
            size: 5
          }
        }
        tensor_content: "\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\300\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/Reshape_3"
  op: "Reshape"
  input: "Conv3DSN_3/conv3dsn_4/bias/read"
  input: "Conv3DSN_3/conv3dsn_4/Reshape_3/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_3/conv3dsn_4/add"
  op: "Add"
  input: "Conv3DSN_3/conv3dsn_4/convolution"
  input: "Conv3DSN_3/conv3dsn_4/Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_3/elu_21/Elu"
  op: "Elu"
  input: "Conv3DSN_3/conv3dsn_4/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "lambda_65/strided_slice/stack"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice/stack_1"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice/stack_2/values_0"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice/stack_2/values_1"
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
        int_val: 96
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice/stack_2"
  op: "Pack"
  input: "lambda_65/strided_slice/stack_2/values_0"
  input: "lambda_65/strided_slice/stack_2/values_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_65/strided_slice/stack_3"
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
  name: "lambda_65/strided_slice"
  op: "StridedSlice"
  input: "Conv3DSN_3/elu_21/Elu"
  input: "lambda_65/strided_slice/stack"
  input: "lambda_65/strided_slice/stack_2"
  input: "lambda_65/strided_slice/stack_3"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 2
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_65/add"
  op: "Add"
  input: "lambda_65/strided_slice"
  input: "average_pooling3d_1/AvgPool3D"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "lambda_65/strided_slice_1/stack"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_1/stack_1/values_0"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_1/stack_1/values_1"
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
        int_val: 96
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_1/stack_1"
  op: "Pack"
  input: "lambda_65/strided_slice_1/stack_1/values_0"
  input: "lambda_65/strided_slice_1/stack_1/values_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_65/strided_slice_1/stack_2"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_1/stack_3"
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
  name: "lambda_65/strided_slice_1"
  op: "StridedSlice"
  input: "Conv3DSN_3/elu_21/Elu"
  input: "lambda_65/strided_slice_1/stack_1"
  input: "lambda_65/strided_slice_1/stack_2"
  input: "lambda_65/strided_slice_1/stack_3"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 2
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_65/concat/axis"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "lambda_65/concat"
  op: "ConcatV2"
  input: "lambda_65/add"
  input: "lambda_65/strided_slice_1"
  input: "lambda_65/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "lambda_65/Placeholder"
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
          size: 32
        }
        dim {
          size: 64
        }
        dim {
          size: 64
        }
        dim {
          size: 192
        }
      }
    }
  }
}
node {
  name: "lambda_65/Placeholder_1"
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
          size: 32
        }
        dim {
          size: 64
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
}
node {
  name: "lambda_65/strided_slice_2/stack"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_2/stack_1"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_2/stack_2/values_0"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_2/stack_2/values_1"
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
        int_val: 96
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_2/stack_2"
  op: "Pack"
  input: "lambda_65/strided_slice_2/stack_2/values_0"
  input: "lambda_65/strided_slice_2/stack_2/values_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_65/strided_slice_2/stack_3"
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
  name: "lambda_65/strided_slice_2"
  op: "StridedSlice"
  input: "lambda_65/Placeholder"
  input: "lambda_65/strided_slice_2/stack"
  input: "lambda_65/strided_slice_2/stack_2"
  input: "lambda_65/strided_slice_2/stack_3"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 2
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_65/add_1"
  op: "Add"
  input: "lambda_65/strided_slice_2"
  input: "lambda_65/Placeholder_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "lambda_65/strided_slice_3/stack"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_3/stack_1/values_0"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_3/stack_1/values_1"
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
        int_val: 96
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_3/stack_1"
  op: "Pack"
  input: "lambda_65/strided_slice_3/stack_1/values_0"
  input: "lambda_65/strided_slice_3/stack_1/values_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_65/strided_slice_3/stack_2"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "lambda_65/strided_slice_3/stack_3"
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
  name: "lambda_65/strided_slice_3"
  op: "StridedSlice"
  input: "lambda_65/Placeholder"
  input: "lambda_65/strided_slice_3/stack_1"
  input: "lambda_65/strided_slice_3/stack_2"
  input: "lambda_65/strided_slice_3/stack_3"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 2
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "lambda_65/concat_1/axis"
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
        int_val: 4
      }
    }
  }
}
node {
  name: "lambda_65/concat_1"
  op: "ConcatV2"
  input: "lambda_65/add_1"
  input: "lambda_65/strided_slice_3"
  input: "lambda_65/concat_1/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "average_pooling3d_2/AvgPool3D"
  op: "AvgPool3D"
  input: "lambda_65/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NDHWC"
    }
  }
  attr {
    key: "ksize"
    value {
      list {
        i: 1
        i: 2
        i: 2
        i: 2
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
        i: 2
        i: 1
      }
    }
  }
}
node {
  name: "flatten_1/Shape"
  op: "Shape"
  input: "average_pooling3d_2/AvgPool3D"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "flatten_1/strided_slice/stack"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "flatten_1/strided_slice/stack_1"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "flatten_1/strided_slice/stack_2"
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
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "flatten_1/strided_slice"
  op: "StridedSlice"
  input: "flatten_1/Shape"
  input: "flatten_1/strided_slice/stack"
  input: "flatten_1/strided_slice/stack_1"
  input: "flatten_1/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 1
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 0
    }
  }
}
node {
  name: "flatten_1/Const"
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
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "flatten_1/Prod"
  op: "Prod"
  input: "flatten_1/strided_slice"
  input: "flatten_1/Const"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "flatten_1/stack/0"
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
        int_val: -1
      }
    }
  }
}
node {
  name: "flatten_1/stack"
  op: "Pack"
  input: "flatten_1/stack/0"
  input: "flatten_1/Prod"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "flatten_1/Reshape"
  op: "Reshape"
  input: "average_pooling3d_2/AvgPool3D"
  input: "flatten_1/stack"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "FFT3DNode/lambda_66/transpose/perm"
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
            size: 5
          }
        }
        tensor_content: "\000\000\000\000\004\000\000\000\001\000\000\000\002\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "FFT3DNode/lambda_66/transpose"
  op: "Transpose"
  input: "input_1"
  input: "FFT3DNode/lambda_66/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "FFT3DNode/lambda_66/Placeholder"
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
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 3
        }
      }
    }
  }
}
node {
  name: "FFT3DNode/lambda_66/transpose_1/perm"
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
            size: 5
          }
        }
        tensor_content: "\000\000\000\000\004\000\000\000\001\000\000\000\002\000\000\000\003\000\000\000"
      }
    }
  }
}
node {
  name: "FFT3DNode/lambda_66/transpose_1"
  op: "Transpose"
  input: "FFT3DNode/lambda_66/Placeholder"
  input: "FFT3DNode/lambda_66/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "FFT3DNode/lambda_67/zeros_like"
  op: "ZerosLike"
  input: "FFT3DNode/lambda_66/transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "FFT3DNode/lambda_67/Complex"
  op: "Complex"
  input: "FFT3DNode/lambda_66/transpose"
  input: "FFT3DNode/lambda_67/zeros_like"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tout"
    value {
      type: DT_COMPLEX64
    }
  }
}
node {
  name: "FFT3DNode/lambda_67/FFT3D"
  op: "FFT3D"
  input: "FFT3DNode/lambda_67/Complex"
  attr {
    key: "Tcomplex"
    value {
      type: DT_COMPLEX64
    }
  }
}
node {
  name: "FFT3DNode/lambda_67/Placeholder"
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
          size: 3
        }
        dim {
          size: 32
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
}
node {
  name: "FFT3DNode/lambda_67/zeros_like_1"
  op: "ZerosLike"
  input: "FFT3DNode/lambda_67/Placeholder"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "FFT3DNode/lambda_67/Complex_1"
  op: "Complex"
  input: "FFT3DNode/lambda_67/Placeholder"
  input: "FFT3DNode/lambda_67/zeros_like_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tout"
    value {
      type: DT_COMPLEX64
    }
  }
}
node {
  name: "FFT3DNode/lambda_67/FFT3D_1"
  op: "FFT3D"
  input: "FFT3DNode/lambda_67/Complex_1"
  attr {
    key: "Tcomplex"
    value {
      type: DT_COMPLEX64
    }
  }
}
node {
  name: "FFT3DNode/lambda_68/Real"
  op: "Real"
  input: "FFT3DNode/lambda_67/FFT3D"
  attr {
    key: "T"
    value {
      type: DT_COMPLEX64
    }
  }
  attr {
    key: "Tout"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "FFT3DNode/lambda_68/mul/y"
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
        float_val: 1.9073486328125e-06
      }
    }
  }
}
node {
  name: "FFT3DNode/lambda_68/mul"
  op: "Mul"
  input: "FFT3DNode/lambda_68/Real"
  input: "FFT3DNode/lambda_68/mul/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "FFT3DNode/lambda_68/Placeholder"
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
          size: 3
        }
        dim {
          size: 32
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
}
node {
  name: "FFT3DNode/lambda_68/mul_1/y"
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
        float_val: 1.9073486328125e-06
      }
    }
  }
}
node {
  name: "FFT3DNode/lambda_68/mul_1"
  op: "Mul"
  input: "FFT3DNode/lambda_68/Placeholder"
  input: "FFT3DNode/lambda_68/mul_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "FFT3DNode/lambda_69/Imag"
  op: "Imag"
  input: "FFT3DNode/lambda_67/FFT3D"
  attr {
    key: "T"
    value {
      type: DT_COMPLEX64
    }
  }
  attr {
    key: "Tout"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "FFT3DNode/lambda_69/mul/y"
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
        float_val: 1.9073486328125e-06
      }
    }
  }
}
node {
  name: "FFT3DNode/lambda_69/mul"
  op: "Mul"
  input: "FFT3DNode/lambda_69/Imag"
  input: "FFT3DNode/lambda_69/mul/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "FFT3DNode/lambda_69/Placeholder"
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
          size: 3
        }
        dim {
          size: 32
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
}
node {
  name: "FFT3DNode/lambda_69/Imag_1/zeros_like"
  op: "ZerosLike"
  input: "FFT3DNode/lambda_69/Placeholder"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "FFT3DNode/lambda_69/mul_1/y"
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
        float_val: 1.9073486328125e-06
      }
    }
  }
}
node {
  name: "FFT3DNode/lambda_69/mul_1"
  op: "Mul"
  input: "FFT3DNode/lambda_69/Imag_1/zeros_like"
  input: "FFT3DNode/lambda_69/mul_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "FFT3DNode/concatenate_6/concat/axis"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "FFT3DNode/concatenate_6/concat"
  op: "ConcatV2"
  input: "FFT3DNode/lambda_68/mul"
  input: "FFT3DNode/lambda_69/mul"
  input: "FFT3DNode/concatenate_6/concat/axis"
  attr {
    key: "N"
    value {
      i: 2
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
  name: "FFT3DNode/lambda_70/mul/y"
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "FFT3DNode/lambda_70/mul"
  op: "Mul"
  input: "FFT3DNode/concatenate_6/concat"
  input: "FFT3DNode/lambda_70/mul/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "FFT3DNode/lambda_70/transpose/perm"
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
            size: 5
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "FFT3DNode/lambda_70/transpose"
  op: "Transpose"
  input: "FFT3DNode/lambda_70/mul"
  input: "FFT3DNode/lambda_70/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "FFT3DNode/lambda_70/Placeholder"
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
          size: 6
        }
        dim {
          size: 32
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
}
node {
  name: "FFT3DNode/lambda_70/mul_1/y"
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
        float_val: 9.999999747378752e-06
      }
    }
  }
}
node {
  name: "FFT3DNode/lambda_70/mul_1"
  op: "Mul"
  input: "FFT3DNode/lambda_70/Placeholder"
  input: "FFT3DNode/lambda_70/mul_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "FFT3DNode/lambda_70/transpose_1/perm"
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
            size: 5
          }
        }
        tensor_content: "\000\000\000\000\002\000\000\000\003\000\000\000\004\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "FFT3DNode/lambda_70/transpose_1"
  op: "Transpose"
  input: "FFT3DNode/lambda_70/mul_1"
  input: "FFT3DNode/lambda_70/transpose_1/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_4/lambda_71/MirrorPad/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/lambda_71/MirrorPad"
  op: "MirrorPad"
  input: "FFT3DNode/lambda_70/transpose"
  input: "Conv3DSN_4/lambda_71/MirrorPad/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "Conv3DSN_4/lambda_71/Placeholder"
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
          size: 32
        }
        dim {
          size: 128
        }
        dim {
          size: 128
        }
        dim {
          size: 6
        }
      }
    }
  }
}
node {
  name: "Conv3DSN_4/lambda_71/MirrorPad_1/paddings"
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
            size: 5
          }
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/lambda_71/MirrorPad_1"
  op: "MirrorPad"
  input: "Conv3DSN_4/lambda_71/Placeholder"
  input: "Conv3DSN_4/lambda_71/MirrorPad_1/paddings"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "mode"
    value {
      s: "SYMMETRIC"
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal/shape"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000\006\000\000\000\030\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal/stddev"
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
        float_val: 0.1263163536787033
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal/TruncatedNormal"
  op: "TruncatedNormal"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 7767315
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal/mul"
  op: "Mul"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal/TruncatedNormal"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal"
  op: "Add"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal/mul"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/kernel"
  op: "VariableV2"
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
          size: 6
        }
        dim {
          size: 24
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
  name: "Conv3DSN_4/conv3dsn_5/kernel/Assign"
  op: "Assign"
  input: "Conv3DSN_4/conv3dsn_5/kernel"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_4/conv3dsn_5/kernel"
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
  name: "Conv3DSN_4/conv3dsn_5/kernel/read"
  op: "Identity"
  input: "Conv3DSN_4/conv3dsn_5/kernel"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_4/conv3dsn_5/kernel"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Const"
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
            size: 24
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/bias"
  op: "VariableV2"
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
          size: 24
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
  name: "Conv3DSN_4/conv3dsn_5/bias/Assign"
  op: "Assign"
  input: "Conv3DSN_4/conv3dsn_5/bias"
  input: "Conv3DSN_4/conv3dsn_5/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_4/conv3dsn_5/bias"
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
  name: "Conv3DSN_4/conv3dsn_5/bias/read"
  op: "Identity"
  input: "Conv3DSN_4/conv3dsn_5/bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_4/conv3dsn_5/bias"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal_1/shape"
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
        tensor_content: "\001\000\000\000\030\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal_1/mean"
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
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal_1/stddev"
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
        float_val: 0.05000000074505806
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal_1/TruncatedNormal"
  op: "TruncatedNormal"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal_1/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
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
      i: 87654321
    }
  }
  attr {
    key: "seed2"
    value {
      i: 5215480
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal_1/mul"
  op: "Mul"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal_1/TruncatedNormal"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal_1/stddev"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truncated_normal_1"
  op: "Add"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal_1/mul"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal_1/mean"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/u_sn"
  op: "VariableV2"
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
          size: 24
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
  name: "Conv3DSN_4/conv3dsn_5/u_sn/Assign"
  op: "Assign"
  input: "Conv3DSN_4/conv3dsn_5/u_sn"
  input: "Conv3DSN_4/conv3dsn_5/truncated_normal_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_4/conv3dsn_5/u_sn"
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
  name: "Conv3DSN_4/conv3dsn_5/u_sn/read"
  op: "Identity"
  input: "Conv3DSN_4/conv3dsn_5/u_sn"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_4/conv3dsn_5/u_sn"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Reshape/shape"
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
        tensor_content: "\377\377\377\377\030\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Reshape"
  op: "Reshape"
  input: "Conv3DSN_4/conv3dsn_5/kernel/read"
  input: "Conv3DSN_4/conv3dsn_5/Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/zeros"
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
            size: 1
          }
          dim {
            size: 162
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Variable"
  op: "VariableV2"
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
          size: 162
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
  name: "Conv3DSN_4/conv3dsn_5/Variable/Assign"
  op: "Assign"
  input: "Conv3DSN_4/conv3dsn_5/Variable"
  input: "Conv3DSN_4/conv3dsn_5/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_4/conv3dsn_5/Variable"
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
  name: "Conv3DSN_4/conv3dsn_5/Variable/read"
  op: "Identity"
  input: "Conv3DSN_4/conv3dsn_5/Variable"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_4/conv3dsn_5/Variable"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose/Rank"
  op: "Rank"
  input: "Conv3DSN_4/conv3dsn_5/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose/sub"
  op: "Sub"
  input: "Conv3DSN_4/conv3dsn_5/transpose/Rank"
  input: "Conv3DSN_4/conv3dsn_5/transpose/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose/Range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose/Range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose/Range"
  op: "Range"
  input: "Conv3DSN_4/conv3dsn_5/transpose/Range/start"
  input: "Conv3DSN_4/conv3dsn_5/transpose/Rank"
  input: "Conv3DSN_4/conv3dsn_5/transpose/Range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose/sub_1"
  op: "Sub"
  input: "Conv3DSN_4/conv3dsn_5/transpose/sub"
  input: "Conv3DSN_4/conv3dsn_5/transpose/Range"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose"
  op: "Transpose"
  input: "Conv3DSN_4/conv3dsn_5/Reshape"
  input: "Conv3DSN_4/conv3dsn_5/transpose/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/MatMul"
  op: "MatMul"
  input: "Conv3DSN_4/conv3dsn_5/u_sn/read"
  input: "Conv3DSN_4/conv3dsn_5/transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/pow/y"
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
        float_val: 2.0
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/pow"
  op: "Pow"
  input: "Conv3DSN_4/conv3dsn_5/MatMul"
  input: "Conv3DSN_4/conv3dsn_5/pow/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Const_1"
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
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Sum"
  op: "Sum"
  input: "Conv3DSN_4/conv3dsn_5/pow"
  input: "Conv3DSN_4/conv3dsn_5/Const_1"
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
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/pow_1/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/pow_1"
  op: "Pow"
  input: "Conv3DSN_4/conv3dsn_5/Sum"
  input: "Conv3DSN_4/conv3dsn_5/pow_1/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Const_2"
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
        float_val: 9.999999960041972e-13
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Const_3"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/clip_by_value/Minimum"
  op: "Minimum"
  input: "Conv3DSN_4/conv3dsn_5/pow_1"
  input: "Conv3DSN_4/conv3dsn_5/Const_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/clip_by_value"
  op: "Maximum"
  input: "Conv3DSN_4/conv3dsn_5/clip_by_value/Minimum"
  input: "Conv3DSN_4/conv3dsn_5/Const_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truediv"
  op: "RealDiv"
  input: "Conv3DSN_4/conv3dsn_5/MatMul"
  input: "Conv3DSN_4/conv3dsn_5/clip_by_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/MatMul_1"
  op: "MatMul"
  input: "Conv3DSN_4/conv3dsn_5/truediv"
  input: "Conv3DSN_4/conv3dsn_5/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/pow_2/y"
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
        float_val: 2.0
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/pow_2"
  op: "Pow"
  input: "Conv3DSN_4/conv3dsn_5/MatMul_1"
  input: "Conv3DSN_4/conv3dsn_5/pow_2/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Const_4"
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
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Sum_1"
  op: "Sum"
  input: "Conv3DSN_4/conv3dsn_5/pow_2"
  input: "Conv3DSN_4/conv3dsn_5/Const_4"
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
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/pow_3/y"
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
        float_val: 0.5
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/pow_3"
  op: "Pow"
  input: "Conv3DSN_4/conv3dsn_5/Sum_1"
  input: "Conv3DSN_4/conv3dsn_5/pow_3/y"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Const_5"
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
        float_val: 9.999999960041972e-13
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Const_6"
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
        float_val: inf
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/clip_by_value_1/Minimum"
  op: "Minimum"
  input: "Conv3DSN_4/conv3dsn_5/pow_3"
  input: "Conv3DSN_4/conv3dsn_5/Const_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/clip_by_value_1"
  op: "Maximum"
  input: "Conv3DSN_4/conv3dsn_5/clip_by_value_1/Minimum"
  input: "Conv3DSN_4/conv3dsn_5/Const_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truediv_1"
  op: "RealDiv"
  input: "Conv3DSN_4/conv3dsn_5/MatMul_1"
  input: "Conv3DSN_4/conv3dsn_5/clip_by_value_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/MatMul_2"
  op: "MatMul"
  input: "Conv3DSN_4/conv3dsn_5/truediv"
  input: "Conv3DSN_4/conv3dsn_5/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose_1/Rank"
  op: "Rank"
  input: "Conv3DSN_4/conv3dsn_5/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose_1/sub/y"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose_1/sub"
  op: "Sub"
  input: "Conv3DSN_4/conv3dsn_5/transpose_1/Rank"
  input: "Conv3DSN_4/conv3dsn_5/transpose_1/sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose_1/Range/start"
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
        int_val: 0
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose_1/Range/delta"
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
        int_val: 1
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose_1/Range"
  op: "Range"
  input: "Conv3DSN_4/conv3dsn_5/transpose_1/Range/start"
  input: "Conv3DSN_4/conv3dsn_5/transpose_1/Rank"
  input: "Conv3DSN_4/conv3dsn_5/transpose_1/Range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose_1/sub_1"
  op: "Sub"
  input: "Conv3DSN_4/conv3dsn_5/transpose_1/sub"
  input: "Conv3DSN_4/conv3dsn_5/transpose_1/Range"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/transpose_1"
  op: "Transpose"
  input: "Conv3DSN_4/conv3dsn_5/truediv_1"
  input: "Conv3DSN_4/conv3dsn_5/transpose_1/sub_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/MatMul_3"
  op: "MatMul"
  input: "Conv3DSN_4/conv3dsn_5/MatMul_2"
  input: "Conv3DSN_4/conv3dsn_5/transpose_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/strided_slice/stack"
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
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/strided_slice/stack_1"
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
  name: "Conv3DSN_4/conv3dsn_5/strided_slice/stack_2"
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
  name: "Conv3DSN_4/conv3dsn_5/strided_slice"
  op: "StridedSlice"
  input: "Conv3DSN_4/conv3dsn_5/MatMul_3"
  input: "Conv3DSN_4/conv3dsn_5/strided_slice/stack"
  input: "Conv3DSN_4/conv3dsn_5/strided_slice/stack_1"
  input: "Conv3DSN_4/conv3dsn_5/strided_slice/stack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 3
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/truediv_2"
  op: "RealDiv"
  input: "Conv3DSN_4/conv3dsn_5/Reshape"
  input: "Conv3DSN_4/conv3dsn_5/strided_slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Reshape_1/shape"
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
            size: 5
          }
        }
        tensor_content: "\003\000\000\000\003\000\000\000\003\000\000\000\006\000\000\000\030\000\000\000"
      }
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Reshape_1"
  op: "Reshape"
  input: "Conv3DSN_4/conv3dsn_5/truediv_2"
  input: "Conv3DSN_4/conv3dsn_5/Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Conv3DSN_4/conv3dsn_5/Assign"
  op: "Assign"
  input: "Conv3DSN_4/conv3dsn_5/u_sn"
  input: "Conv3DSN_4/conv3dsn_5/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_4/conv3dsn_5/u_sn"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
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
  name: "Conv3DSN_4/conv3dsn_5/Assign_1"
  op: "Assign"
  input: "Conv3DSN_4/conv3dsn_5/u_sn"
  input: "Conv3DSN_4/conv3dsn_5/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@Conv3DSN_4/conv3dsn_5/u_sn"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
}