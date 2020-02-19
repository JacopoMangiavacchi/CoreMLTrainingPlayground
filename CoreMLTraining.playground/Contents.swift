import Foundation

let coremlModel = Model(version: 4,
                        shortDescription: "Regression",
                        author: "Jacopo Mangiavacchi",
                        license: "MIT",
                        userDefined: ["SwiftCoremltoolsVersion" : "0.0.3"]) {
    Input(name: "input", shape: [13])
    Output(name: "output", shape: [1])
    TrainingInput(name: "input", shape: [13])
    TrainingInput(name: "output_true", shape: [1])
    NeuralNetwork(losses: [MSE(name: "lossLayer",
                               input: "output",
                               target: "output_true")],
                  optimizer: SGD(learningRateDefault: 0.001,
                                 learningRateMax: 0.3,
                                 miniBatchSizeDefault: 32,
                                 miniBatchSizeRange: [32],
                                 momentumDefault: 0,
                                 momentumMax: 1.0),
                  epochDefault: 500,
                  epochSet: [500],
                  shuffle: true) {
        InnerProduct(name: "dense1",
                     input: ["input"],
                     output: ["outDense1"],
                     inputChannels: 13,
                     outputChannels: 64,
                     updatable: true)
        ReLu(name: "Relu1",
             input: ["outDense1"],
             output: ["outRelu1"])
        InnerProduct(name: "dense2",
                     input: ["outRelu1"],
                     output: ["outDense2"],
                     inputChannels: 64,
                     outputChannels: 32,
                     updatable: true)
        ReLu(name: "Relu2",
             input: ["outDense2"],
             output: ["outRelu2"])
        InnerProduct(name: "dense3",
                     input: ["outRelu2"],
                     output: ["output"],
                     inputChannels: 32,
                     outputChannels: 1,
                     updatable: true)
    }
}

print(coremlModel)

let coreMLData = coremlModel.coreMLData

print(coreMLData!.count)
