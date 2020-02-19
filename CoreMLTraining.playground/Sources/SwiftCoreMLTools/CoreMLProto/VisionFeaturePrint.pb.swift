// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: VisionFeaturePrint.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright (c) 2018, Apple Inc. All rights reserved.
//
// Use of this source code is governed by a BSD-3-clause license that can be
// found in LICENSE.txt or at https://opensource.org/licenses/BSD-3-Clause

import Foundation

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: ProtobufAPIVersionCheck {
  struct _2: ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///*
/// A model which takes an input image and outputs an array of features
/// according to the specified feature types
struct CoreML_Specification_CoreMLModels_VisionFeaturePrint {
  // Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Vision feature print type
  var visionFeaturePrintType: OneOf_VisionFeaturePrintType? {
    get {return _storage._visionFeaturePrintType}
    set {_uniqueStorage()._visionFeaturePrintType = newValue}
  }

  var scene: CoreML_Specification_CoreMLModels_VisionFeaturePrint.Scene {
    get {
      if case .scene(let v)? = _storage._visionFeaturePrintType {return v}
      return CoreML_Specification_CoreMLModels_VisionFeaturePrint.Scene()
    }
    set {_uniqueStorage()._visionFeaturePrintType = .scene(newValue)}
  }

  var unknownFields = UnknownStorage()

  /// Vision feature print type
  enum OneOf_VisionFeaturePrintType: Equatable {
    case scene(CoreML_Specification_CoreMLModels_VisionFeaturePrint.Scene)

  #if !swift(>=4.1)
    static func ==(lhs: CoreML_Specification_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType, rhs: CoreML_Specification_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType) -> Bool {
      switch (lhs, rhs) {
      case (.scene(let l), .scene(let r)): return l == r
      }
    }
  #endif
  }

  /// Scene extracts features useful for identifying contents of natural images
  /// in both indoor and outdoor environments
  struct Scene {
    // Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var version: CoreML_Specification_CoreMLModels_VisionFeaturePrint.Scene.SceneVersion = .invalid

    var unknownFields = UnknownStorage()

    enum SceneVersion: Enum {
      typealias RawValue = Int
      case invalid // = 0

      /// VERSION_1 is available on iOS,tvOS 12.0+, macOS 10.14+
      /// It uses a 299x299 input image and yields a 2048 float feature vector
      case sceneVersion1 // = 1
      case UNRECOGNIZED(Int)

      init() {
        self = .invalid
      }

      init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .invalid
        case 1: self = .sceneVersion1
        default: self = .UNRECOGNIZED(rawValue)
        }
      }

      var rawValue: Int {
        switch self {
        case .invalid: return 0
        case .sceneVersion1: return 1
        case .UNRECOGNIZED(let i): return i
        }
      }

    }

    init() {}
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "CoreML.Specification.CoreMLModels"

extension CoreML_Specification_CoreMLModels_VisionFeaturePrint: Message, _MessageImplementationBase, _ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VisionFeaturePrint"
  static let _protobuf_nameMap: _NameMap = [
    20: .same(proto: "scene"),
  ]

  fileprivate class _StorageClass {
    var _visionFeaturePrintType: CoreML_Specification_CoreMLModels_VisionFeaturePrint.OneOf_VisionFeaturePrintType?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _visionFeaturePrintType = source._visionFeaturePrintType
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 20:
          var v: CoreML_Specification_CoreMLModels_VisionFeaturePrint.Scene?
          if let current = _storage._visionFeaturePrintType {
            try decoder.handleConflictingOneOf()
            if case .scene(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._visionFeaturePrintType = .scene(v)}
        default: break
        }
      }
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if case .scene(let v)? = _storage._visionFeaturePrintType {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 20)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CoreML_Specification_CoreMLModels_VisionFeaturePrint, rhs: CoreML_Specification_CoreMLModels_VisionFeaturePrint) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._visionFeaturePrintType != rhs_storage._visionFeaturePrintType {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_CoreMLModels_VisionFeaturePrint.Scene: Message, _MessageImplementationBase, _ProtoNameProviding {
  static let protoMessageName: String = CoreML_Specification_CoreMLModels_VisionFeaturePrint.protoMessageName + ".Scene"
  static let _protobuf_nameMap: _NameMap = [
    1: .same(proto: "version"),
  ]

  mutating func decodeMessage<D: Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.version)
      default: break
      }
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    if self.version != .invalid {
      try visitor.visitSingularEnumField(value: self.version, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CoreML_Specification_CoreMLModels_VisionFeaturePrint.Scene, rhs: CoreML_Specification_CoreMLModels_VisionFeaturePrint.Scene) -> Bool {
    if lhs.version != rhs.version {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_CoreMLModels_VisionFeaturePrint.Scene.SceneVersion: _ProtoNameProviding {
  static let _protobuf_nameMap: _NameMap = [
    0: .same(proto: "SCENE_VERSION_INVALID"),
    1: .same(proto: "SCENE_VERSION_1"),
  ]
}
