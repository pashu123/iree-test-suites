module {
  func.func @test_nllloss_NCd1d2_with_weight(%arg0: !torch.vtensor<[3,5,6,6],f32>, %arg1: !torch.vtensor<[3,6,6],si64>, %arg2: !torch.vtensor<[5],f32>) -> !torch.vtensor<[3,6,6],f32> attributes {torch.onnx_meta.ir_version = 7 : si64, torch.onnx_meta.opset_version = 17 : si64, torch.onnx_meta.producer_name = "backend-test", torch.onnx_meta.producer_version = ""} {
    %none = torch.constant.none
    %0 = torch.operator "onnx.NegativeLogLikelihoodLoss"(%arg0, %arg1, %arg2) {torch.onnx.reduction = "none"} : (!torch.vtensor<[3,5,6,6],f32>, !torch.vtensor<[3,6,6],si64>, !torch.vtensor<[5],f32>) -> !torch.vtensor<[3,6,6],f32> 
    return %0 : !torch.vtensor<[3,6,6],f32>
  }
}

