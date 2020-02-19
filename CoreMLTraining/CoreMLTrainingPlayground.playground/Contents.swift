import Foundation
import CoreMLTraining
import CoreML

let folderPath = "/Users/jacopo/TestSwiftCoreMLTools/"

let boston = BostonHousing(path: folderPath + "data/housing.csv")

boston.saveModel(path: folderPath + "model/coreml_no_trained.mlmodel")

let (untrainedModel, compiledModelUrl) = boston.compileCoreML(path: folderPath + "model/coreml_no_trained.mlmodel")

