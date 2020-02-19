// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: NearestNeighbors.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright (c) 2017, Apple Inc. All rights reserved.
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
/// A k-Nearest-Neighbor classifier
struct CoreML_Specification_KNearestNeighborsClassifier {
  // Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///*
  /// The "core" nearest neighbor model attributes.
  var nearestNeighborsIndex: CoreML_Specification_NearestNeighborsIndex {
    get {return _storage._nearestNeighborsIndex ?? CoreML_Specification_NearestNeighborsIndex()}
    set {_uniqueStorage()._nearestNeighborsIndex = newValue}
  }
  /// Returns true if `nearestNeighborsIndex` has been explicitly set.
  var hasNearestNeighborsIndex: Bool {return _storage._nearestNeighborsIndex != nil}
  /// Clears the value of `nearestNeighborsIndex`. Subsequent reads from it will return its default value.
  mutating func clearNearestNeighborsIndex() {_uniqueStorage()._nearestNeighborsIndex = nil}

  ///*
  /// Number of neighbors to use for classification.
  var numberOfNeighbors: CoreML_Specification_Int64Parameter {
    get {return _storage._numberOfNeighbors ?? CoreML_Specification_Int64Parameter()}
    set {_uniqueStorage()._numberOfNeighbors = newValue}
  }
  /// Returns true if `numberOfNeighbors` has been explicitly set.
  var hasNumberOfNeighbors: Bool {return _storage._numberOfNeighbors != nil}
  /// Clears the value of `numberOfNeighbors`. Subsequent reads from it will return its default value.
  mutating func clearNumberOfNeighbors() {_uniqueStorage()._numberOfNeighbors = nil}

  ///*
  /// Type of labels supported by the model. Currently supports String or Int64
  /// labels.
  var classLabels: OneOf_ClassLabels? {
    get {return _storage._classLabels}
    set {_uniqueStorage()._classLabels = newValue}
  }

  var stringClassLabels: CoreML_Specification_StringVector {
    get {
      if case .stringClassLabels(let v)? = _storage._classLabels {return v}
      return CoreML_Specification_StringVector()
    }
    set {_uniqueStorage()._classLabels = .stringClassLabels(newValue)}
  }

  var int64ClassLabels: CoreML_Specification_Int64Vector {
    get {
      if case .int64ClassLabels(let v)? = _storage._classLabels {return v}
      return CoreML_Specification_Int64Vector()
    }
    set {_uniqueStorage()._classLabels = .int64ClassLabels(newValue)}
  }

  ///*
  /// Default value of class label (useful when prediction is called on an empty kNN classifier)
  var defaultClassLabel: OneOf_DefaultClassLabel? {
    get {return _storage._defaultClassLabel}
    set {_uniqueStorage()._defaultClassLabel = newValue}
  }

  var defaultStringLabel: String {
    get {
      if case .defaultStringLabel(let v)? = _storage._defaultClassLabel {return v}
      return String()
    }
    set {_uniqueStorage()._defaultClassLabel = .defaultStringLabel(newValue)}
  }

  var defaultInt64Label: Int64 {
    get {
      if case .defaultInt64Label(let v)? = _storage._defaultClassLabel {return v}
      return 0
    }
    set {_uniqueStorage()._defaultClassLabel = .defaultInt64Label(newValue)}
  }

  ///*
  /// Weighting scheme to be used when computing the majority label of a 
  /// new data point.
  var weightingScheme: OneOf_WeightingScheme? {
    get {return _storage._weightingScheme}
    set {_uniqueStorage()._weightingScheme = newValue}
  }

  var uniformWeighting: CoreML_Specification_UniformWeighting {
    get {
      if case .uniformWeighting(let v)? = _storage._weightingScheme {return v}
      return CoreML_Specification_UniformWeighting()
    }
    set {_uniqueStorage()._weightingScheme = .uniformWeighting(newValue)}
  }

  var inverseDistanceWeighting: CoreML_Specification_InverseDistanceWeighting {
    get {
      if case .inverseDistanceWeighting(let v)? = _storage._weightingScheme {return v}
      return CoreML_Specification_InverseDistanceWeighting()
    }
    set {_uniqueStorage()._weightingScheme = .inverseDistanceWeighting(newValue)}
  }

  var unknownFields = UnknownStorage()

  ///*
  /// Type of labels supported by the model. Currently supports String or Int64
  /// labels.
  enum OneOf_ClassLabels: Equatable {
    case stringClassLabels(CoreML_Specification_StringVector)
    case int64ClassLabels(CoreML_Specification_Int64Vector)

  #if !swift(>=4.1)
    static func ==(lhs: CoreML_Specification_KNearestNeighborsClassifier.OneOf_ClassLabels, rhs: CoreML_Specification_KNearestNeighborsClassifier.OneOf_ClassLabels) -> Bool {
      switch (lhs, rhs) {
      case (.stringClassLabels(let l), .stringClassLabels(let r)): return l == r
      case (.int64ClassLabels(let l), .int64ClassLabels(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  ///*
  /// Default value of class label (useful when prediction is called on an empty kNN classifier)
  enum OneOf_DefaultClassLabel: Equatable {
    case defaultStringLabel(String)
    case defaultInt64Label(Int64)

  #if !swift(>=4.1)
    static func ==(lhs: CoreML_Specification_KNearestNeighborsClassifier.OneOf_DefaultClassLabel, rhs: CoreML_Specification_KNearestNeighborsClassifier.OneOf_DefaultClassLabel) -> Bool {
      switch (lhs, rhs) {
      case (.defaultStringLabel(let l), .defaultStringLabel(let r)): return l == r
      case (.defaultInt64Label(let l), .defaultInt64Label(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  ///*
  /// Weighting scheme to be used when computing the majority label of a 
  /// new data point.
  enum OneOf_WeightingScheme: Equatable {
    case uniformWeighting(CoreML_Specification_UniformWeighting)
    case inverseDistanceWeighting(CoreML_Specification_InverseDistanceWeighting)

  #if !swift(>=4.1)
    static func ==(lhs: CoreML_Specification_KNearestNeighborsClassifier.OneOf_WeightingScheme, rhs: CoreML_Specification_KNearestNeighborsClassifier.OneOf_WeightingScheme) -> Bool {
      switch (lhs, rhs) {
      case (.uniformWeighting(let l), .uniformWeighting(let r)): return l == r
      case (.inverseDistanceWeighting(let l), .inverseDistanceWeighting(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

///*
/// The "core" attributes of a Nearest Neighbors model.
struct CoreML_Specification_NearestNeighborsIndex {
  // Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///* 
  /// Number of dimensions of the input data.
  var numberOfDimensions: Int32 {
    get {return _storage._numberOfDimensions}
    set {_uniqueStorage()._numberOfDimensions = newValue}
  }

  ///*
  /// Vector of floating point data that makes up the model. Each data point must have 'numberOfDimensions'
  /// dimensions.
  var floatSamples: [CoreML_Specification_FloatVector] {
    get {return _storage._floatSamples}
    set {_uniqueStorage()._floatSamples = newValue}
  }

  ///* 
  /// Backing data structure for the Nearest Neighbors Index. Currently supports 
  /// a linear index or a kd-tree index.
  var indexType: OneOf_IndexType? {
    get {return _storage._indexType}
    set {_uniqueStorage()._indexType = newValue}
  }

  var linearIndex: CoreML_Specification_LinearIndex {
    get {
      if case .linearIndex(let v)? = _storage._indexType {return v}
      return CoreML_Specification_LinearIndex()
    }
    set {_uniqueStorage()._indexType = .linearIndex(newValue)}
  }

  var singleKdTreeIndex: CoreML_Specification_SingleKdTreeIndex {
    get {
      if case .singleKdTreeIndex(let v)? = _storage._indexType {return v}
      return CoreML_Specification_SingleKdTreeIndex()
    }
    set {_uniqueStorage()._indexType = .singleKdTreeIndex(newValue)}
  }

  ///* 
  /// Distance function to be used to find neighbors. Currently only Squared Euclidean
  /// Distance is supported.
  var distanceFunction: OneOf_DistanceFunction? {
    get {return _storage._distanceFunction}
    set {_uniqueStorage()._distanceFunction = newValue}
  }

  var squaredEuclideanDistance: CoreML_Specification_SquaredEuclideanDistance {
    get {
      if case .squaredEuclideanDistance(let v)? = _storage._distanceFunction {return v}
      return CoreML_Specification_SquaredEuclideanDistance()
    }
    set {_uniqueStorage()._distanceFunction = .squaredEuclideanDistance(newValue)}
  }

  var unknownFields = UnknownStorage()

  ///* 
  /// Backing data structure for the Nearest Neighbors Index. Currently supports 
  /// a linear index or a kd-tree index.
  enum OneOf_IndexType: Equatable {
    case linearIndex(CoreML_Specification_LinearIndex)
    case singleKdTreeIndex(CoreML_Specification_SingleKdTreeIndex)

  #if !swift(>=4.1)
    static func ==(lhs: CoreML_Specification_NearestNeighborsIndex.OneOf_IndexType, rhs: CoreML_Specification_NearestNeighborsIndex.OneOf_IndexType) -> Bool {
      switch (lhs, rhs) {
      case (.linearIndex(let l), .linearIndex(let r)): return l == r
      case (.singleKdTreeIndex(let l), .singleKdTreeIndex(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  ///* 
  /// Distance function to be used to find neighbors. Currently only Squared Euclidean
  /// Distance is supported.
  enum OneOf_DistanceFunction: Equatable {
    case squaredEuclideanDistance(CoreML_Specification_SquaredEuclideanDistance)

  #if !swift(>=4.1)
    static func ==(lhs: CoreML_Specification_NearestNeighborsIndex.OneOf_DistanceFunction, rhs: CoreML_Specification_NearestNeighborsIndex.OneOf_DistanceFunction) -> Bool {
      switch (lhs, rhs) {
      case (.squaredEuclideanDistance(let l), .squaredEuclideanDistance(let r)): return l == r
      }
    }
  #endif
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

///*
/// Specifies a uniform weighting scheme (i.e. each neighbor receives equal
/// voting power).
struct CoreML_Specification_UniformWeighting {
  // Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = UnknownStorage()

  init() {}
}

///*
/// Specifies a inverse-distance weighting scheme (i.e. closest neighbors receives higher
/// voting power). A nearest neighbor with highest sum of (1 / distance) is picked.
struct CoreML_Specification_InverseDistanceWeighting {
  // Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = UnknownStorage()

  init() {}
}

///*
/// Specifies a flat index of data points to be searched by brute force.
struct CoreML_Specification_LinearIndex {
  // Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = UnknownStorage()

  init() {}
}

///*
/// Specifies a kd-tree backend for the nearest neighbors model.
struct CoreML_Specification_SingleKdTreeIndex {
  // Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///*
  /// Number of data points contained within a leaf node of the kd-tree.
  var leafSize: Int32 = 0

  var unknownFields = UnknownStorage()

  init() {}
}

///*
/// Specifies the Squared Euclidean Distance function.
struct CoreML_Specification_SquaredEuclideanDistance {
  // Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "CoreML.Specification"

extension CoreML_Specification_KNearestNeighborsClassifier: Message, _MessageImplementationBase, _ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".KNearestNeighborsClassifier"
  static let _protobuf_nameMap: _NameMap = [
    1: .same(proto: "nearestNeighborsIndex"),
    3: .same(proto: "numberOfNeighbors"),
    100: .same(proto: "stringClassLabels"),
    101: .same(proto: "int64ClassLabels"),
    110: .same(proto: "defaultStringLabel"),
    111: .same(proto: "defaultInt64Label"),
    200: .same(proto: "uniformWeighting"),
    210: .same(proto: "inverseDistanceWeighting"),
  ]

  fileprivate class _StorageClass {
    var _nearestNeighborsIndex: CoreML_Specification_NearestNeighborsIndex? = nil
    var _numberOfNeighbors: CoreML_Specification_Int64Parameter? = nil
    var _classLabels: CoreML_Specification_KNearestNeighborsClassifier.OneOf_ClassLabels?
    var _defaultClassLabel: CoreML_Specification_KNearestNeighborsClassifier.OneOf_DefaultClassLabel?
    var _weightingScheme: CoreML_Specification_KNearestNeighborsClassifier.OneOf_WeightingScheme?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _nearestNeighborsIndex = source._nearestNeighborsIndex
      _numberOfNeighbors = source._numberOfNeighbors
      _classLabels = source._classLabels
      _defaultClassLabel = source._defaultClassLabel
      _weightingScheme = source._weightingScheme
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._nearestNeighborsIndex)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._numberOfNeighbors)
        case 100:
          var v: CoreML_Specification_StringVector?
          if let current = _storage._classLabels {
            try decoder.handleConflictingOneOf()
            if case .stringClassLabels(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._classLabels = .stringClassLabels(v)}
        case 101:
          var v: CoreML_Specification_Int64Vector?
          if let current = _storage._classLabels {
            try decoder.handleConflictingOneOf()
            if case .int64ClassLabels(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._classLabels = .int64ClassLabels(v)}
        case 110:
          if _storage._defaultClassLabel != nil {try decoder.handleConflictingOneOf()}
          var v: String?
          try decoder.decodeSingularStringField(value: &v)
          if let v = v {_storage._defaultClassLabel = .defaultStringLabel(v)}
        case 111:
          if _storage._defaultClassLabel != nil {try decoder.handleConflictingOneOf()}
          var v: Int64?
          try decoder.decodeSingularInt64Field(value: &v)
          if let v = v {_storage._defaultClassLabel = .defaultInt64Label(v)}
        case 200:
          var v: CoreML_Specification_UniformWeighting?
          if let current = _storage._weightingScheme {
            try decoder.handleConflictingOneOf()
            if case .uniformWeighting(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._weightingScheme = .uniformWeighting(v)}
        case 210:
          var v: CoreML_Specification_InverseDistanceWeighting?
          if let current = _storage._weightingScheme {
            try decoder.handleConflictingOneOf()
            if case .inverseDistanceWeighting(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._weightingScheme = .inverseDistanceWeighting(v)}
        default: break
        }
      }
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._nearestNeighborsIndex {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._numberOfNeighbors {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      switch _storage._classLabels {
      case .stringClassLabels(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 100)
      case .int64ClassLabels(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 101)
      case nil: break
      }
      switch _storage._defaultClassLabel {
      case .defaultStringLabel(let v)?:
        try visitor.visitSingularStringField(value: v, fieldNumber: 110)
      case .defaultInt64Label(let v)?:
        try visitor.visitSingularInt64Field(value: v, fieldNumber: 111)
      case nil: break
      }
      switch _storage._weightingScheme {
      case .uniformWeighting(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 200)
      case .inverseDistanceWeighting(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 210)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CoreML_Specification_KNearestNeighborsClassifier, rhs: CoreML_Specification_KNearestNeighborsClassifier) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._nearestNeighborsIndex != rhs_storage._nearestNeighborsIndex {return false}
        if _storage._numberOfNeighbors != rhs_storage._numberOfNeighbors {return false}
        if _storage._classLabels != rhs_storage._classLabels {return false}
        if _storage._defaultClassLabel != rhs_storage._defaultClassLabel {return false}
        if _storage._weightingScheme != rhs_storage._weightingScheme {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_NearestNeighborsIndex: Message, _MessageImplementationBase, _ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".NearestNeighborsIndex"
  static let _protobuf_nameMap: _NameMap = [
    1: .same(proto: "numberOfDimensions"),
    2: .same(proto: "floatSamples"),
    100: .same(proto: "linearIndex"),
    110: .same(proto: "singleKdTreeIndex"),
    200: .same(proto: "squaredEuclideanDistance"),
  ]

  fileprivate class _StorageClass {
    var _numberOfDimensions: Int32 = 0
    var _floatSamples: [CoreML_Specification_FloatVector] = []
    var _indexType: CoreML_Specification_NearestNeighborsIndex.OneOf_IndexType?
    var _distanceFunction: CoreML_Specification_NearestNeighborsIndex.OneOf_DistanceFunction?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _numberOfDimensions = source._numberOfDimensions
      _floatSamples = source._floatSamples
      _indexType = source._indexType
      _distanceFunction = source._distanceFunction
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
        case 1: try decoder.decodeSingularInt32Field(value: &_storage._numberOfDimensions)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._floatSamples)
        case 100:
          var v: CoreML_Specification_LinearIndex?
          if let current = _storage._indexType {
            try decoder.handleConflictingOneOf()
            if case .linearIndex(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._indexType = .linearIndex(v)}
        case 110:
          var v: CoreML_Specification_SingleKdTreeIndex?
          if let current = _storage._indexType {
            try decoder.handleConflictingOneOf()
            if case .singleKdTreeIndex(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._indexType = .singleKdTreeIndex(v)}
        case 200:
          var v: CoreML_Specification_SquaredEuclideanDistance?
          if let current = _storage._distanceFunction {
            try decoder.handleConflictingOneOf()
            if case .squaredEuclideanDistance(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._distanceFunction = .squaredEuclideanDistance(v)}
        default: break
        }
      }
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._numberOfDimensions != 0 {
        try visitor.visitSingularInt32Field(value: _storage._numberOfDimensions, fieldNumber: 1)
      }
      if !_storage._floatSamples.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._floatSamples, fieldNumber: 2)
      }
      switch _storage._indexType {
      case .linearIndex(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 100)
      case .singleKdTreeIndex(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 110)
      case nil: break
      }
      if case .squaredEuclideanDistance(let v)? = _storage._distanceFunction {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 200)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CoreML_Specification_NearestNeighborsIndex, rhs: CoreML_Specification_NearestNeighborsIndex) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._numberOfDimensions != rhs_storage._numberOfDimensions {return false}
        if _storage._floatSamples != rhs_storage._floatSamples {return false}
        if _storage._indexType != rhs_storage._indexType {return false}
        if _storage._distanceFunction != rhs_storage._distanceFunction {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_UniformWeighting: Message, _MessageImplementationBase, _ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UniformWeighting"
  static let _protobuf_nameMap = _NameMap()

  mutating func decodeMessage<D: Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CoreML_Specification_UniformWeighting, rhs: CoreML_Specification_UniformWeighting) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_InverseDistanceWeighting: Message, _MessageImplementationBase, _ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".InverseDistanceWeighting"
  static let _protobuf_nameMap = _NameMap()

  mutating func decodeMessage<D: Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CoreML_Specification_InverseDistanceWeighting, rhs: CoreML_Specification_InverseDistanceWeighting) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_LinearIndex: Message, _MessageImplementationBase, _ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".LinearIndex"
  static let _protobuf_nameMap = _NameMap()

  mutating func decodeMessage<D: Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CoreML_Specification_LinearIndex, rhs: CoreML_Specification_LinearIndex) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_SingleKdTreeIndex: Message, _MessageImplementationBase, _ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SingleKdTreeIndex"
  static let _protobuf_nameMap: _NameMap = [
    1: .same(proto: "leafSize"),
  ]

  mutating func decodeMessage<D: Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.leafSize)
      default: break
      }
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    if self.leafSize != 0 {
      try visitor.visitSingularInt32Field(value: self.leafSize, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CoreML_Specification_SingleKdTreeIndex, rhs: CoreML_Specification_SingleKdTreeIndex) -> Bool {
    if lhs.leafSize != rhs.leafSize {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_SquaredEuclideanDistance: Message, _MessageImplementationBase, _ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SquaredEuclideanDistance"
  static let _protobuf_nameMap = _NameMap()

  mutating func decodeMessage<D: Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CoreML_Specification_SquaredEuclideanDistance, rhs: CoreML_Specification_SquaredEuclideanDistance) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
