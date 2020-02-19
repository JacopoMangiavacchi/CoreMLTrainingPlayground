import Foundation
import CoreMLTraining
import CoreML

let folderPath = "/Users/jacopo/CoreMLTraining/"

let boston = BostonHousing(path: folderPath + "data/housing.csv")

boston.saveModel(path: folderPath + "model/coreml_no_trained.mlmodel")

let (untrainedModel, compiledModelUrl) = boston.compileCoreML(path: folderPath + "model/coreml_no_trained.mlmodel")

print("CoreML inference")

print(boston.xTrain[0], boston.yTrain[0], boston.inferenceCoreML(model: untrainedModel, x: boston.xTrain[0]))
print(boston.xTest[0], boston.yTest[0], boston.inferenceCoreML(model: untrainedModel, x: boston.xTest[0]))
print(boston.xTest[1], boston.yTest[1], boston.inferenceCoreML(model: untrainedModel, x: boston.xTest[1]))
print(boston.xTest[17], boston.yTest[17], boston.inferenceCoreML(model: untrainedModel, x: boston.xTest[17]))


print("CoreML train")
boston.train(url: compiledModelUrl, retrainedCoreMLFilePath: folderPath + "model/coreml_trained.mlmodelc")

Thread.sleep(forTimeInterval: 10)

print("Load CoreML Retrained Model")
let retrainedModel = try! MLModel(contentsOf: URL(fileURLWithPath: folderPath + "model/coreml_trained.mlmodelc"))

print("CoreML inference")

print(boston.xTrain[0], boston.yTrain[0], boston.inferenceCoreML(model: retrainedModel, x: boston.xTrain[0]))
print(boston.xTest[0], boston.yTest[0], boston.inferenceCoreML(model: retrainedModel, x: boston.xTest[0]))
print(boston.xTest[1], boston.yTest[1], boston.inferenceCoreML(model: retrainedModel, x: boston.xTest[1]))
print(boston.xTest[17], boston.yTest[17], boston.inferenceCoreML(model: retrainedModel, x: boston.xTest[17]))
