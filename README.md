# CoreMLTrainingPlaygroung

Experiment with Xcode Swift Playground and the [SwiftCoreMLTools](https://github.com/JacopoMangiavacchi/SwiftCoreMLTools) library to create and train directly on the CoreML runtime a real Regression model based on the [Boston housing price dataset](https://archive.ics.uci.edu/ml/machine-learning-databases/housing/).

This repo contains a Swift Playground that use SwiftCoreMLTools to generate the CoreML model and the Apple CoreML runtime APIs to train and inference the model.

The Playground directly include copies of the SwiftCoreMLTools and SwiftProtobuf SPM libraries.

> Important: You must create the ~/Documents/Shared Playground Data/ directory. Xcode doesn’t create the directory for you.

## CoreML Trainable Model with SwiftCoreMLTools

```swift
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
```
