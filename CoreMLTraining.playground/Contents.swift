import Foundation
import CoreML
import PlaygroundSupport

let fileURL = Bundle.main.url(forResource: "housing", withExtension: "csv")
let boston = BostonHousing(fileURL: fileURL!)

print(playgroundSharedDataDirectory)

let modelURLNoTrain = playgroundSharedDataDirectory.appendingPathComponent("coreml_no_trained.mlmodel")
boston.saveModel(fileURL: modelURLNoTrain)

let (untrainedModel, compiledModelUrl) = boston.compileCoreML(fileURL: modelURLNoTrain)

print("CoreML inference")

print(boston.xTrain[0], boston.yTrain[0], boston.inferenceCoreML(model: untrainedModel, x: boston.xTrain[0]))
print(boston.xTest[0], boston.yTest[0], boston.inferenceCoreML(model: untrainedModel, x: boston.xTest[0]))
print(boston.xTest[1], boston.yTest[1], boston.inferenceCoreML(model: untrainedModel, x: boston.xTest[1]))
print(boston.xTest[17], boston.yTest[17], boston.inferenceCoreML(model: untrainedModel, x: boston.xTest[17]))


print("CoreML train")
let modelURLTrain = playgroundSharedDataDirectory.appendingPathComponent("coreml_trained.mlmodelc")
boston.train(url: compiledModelUrl, retrainedCoreMLFileUrl: modelURLTrain)

Thread.sleep(forTimeInterval: 10)

print("Load CoreML Retrained Model")
let retrainedModel = try! MLModel(contentsOf: modelURLTrain)

print("CoreML inference")

print(boston.xTrain[0], boston.yTrain[0], boston.inferenceCoreML(model: retrainedModel, x: boston.xTrain[0]))
print(boston.xTest[0], boston.yTest[0], boston.inferenceCoreML(model: retrainedModel, x: boston.xTest[0]))
print(boston.xTest[1], boston.yTest[1], boston.inferenceCoreML(model: retrainedModel, x: boston.xTest[1]))
print(boston.xTest[17], boston.yTest[17], boston.inferenceCoreML(model: retrainedModel, x: boston.xTest[17]))
