import Foundation

public struct InnerProduct : TrainableLayer {
    public static let type = LayerType.innerProduct
    public let name: String
    public let input: [String]
    public let output: [String]
    public let weight: [Float]
    public let bias: [Float]

    public let inputChannels: UInt
    public let outputChannels: UInt
    public let updatable: Bool

    public init(name: String, input: [String], output: [String], weight: [Float]? = nil, bias: [Float]? = nil, inputChannels: UInt, outputChannels: UInt, updatable: Bool = false) {
        self.name = name
        self.input = input
        self.output = output
    
        if let weight = weight, let bias = bias {
            self.weight = weight
            self.bias = bias
        }
        else {
            let (randomWeight, randomBias) = Self.getUniformWeigthsAndBias(inputChannels: inputChannels, outputChannels: outputChannels)
            self.weight = randomWeight
            self.bias = randomBias
        }

        self.inputChannels = inputChannels
        self.outputChannels = outputChannels
        self.updatable = updatable
    }
}
