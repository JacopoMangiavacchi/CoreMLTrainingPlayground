// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: FeatureVectorizer.proto
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
/// A FeatureVectorizer puts one or more features into a single array.
///
/// The ordering of features in the output array is determined by
/// ``inputList``.
///
/// ``inputDimensions`` is a zero based index.
struct CoreML_Specification_FeatureVectorizer {
  // Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var inputList: [CoreML_Specification_FeatureVectorizer.InputColumn] = []

  var unknownFields = UnknownStorage()

  struct InputColumn {
    // Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var inputColumn: String = String()

    var inputDimensions: UInt64 = 0

    var unknownFields = UnknownStorage()

    init() {}
  }

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "CoreML.Specification"

extension CoreML_Specification_FeatureVectorizer: Message, _MessageImplementationBase, _ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".FeatureVectorizer"
  static let _protobuf_nameMap: _NameMap = [
    1: .same(proto: "inputList"),
  ]

  mutating func decodeMessage<D: Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.inputList)
      default: break
      }
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    if !self.inputList.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.inputList, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CoreML_Specification_FeatureVectorizer, rhs: CoreML_Specification_FeatureVectorizer) -> Bool {
    if lhs.inputList != rhs.inputList {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension CoreML_Specification_FeatureVectorizer.InputColumn: Message, _MessageImplementationBase, _ProtoNameProviding {
  static let protoMessageName: String = CoreML_Specification_FeatureVectorizer.protoMessageName + ".InputColumn"
  static let _protobuf_nameMap: _NameMap = [
    1: .same(proto: "inputColumn"),
    2: .same(proto: "inputDimensions"),
  ]

  mutating func decodeMessage<D: Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.inputColumn)
      case 2: try decoder.decodeSingularUInt64Field(value: &self.inputDimensions)
      default: break
      }
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    if !self.inputColumn.isEmpty {
      try visitor.visitSingularStringField(value: self.inputColumn, fieldNumber: 1)
    }
    if self.inputDimensions != 0 {
      try visitor.visitSingularUInt64Field(value: self.inputDimensions, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: CoreML_Specification_FeatureVectorizer.InputColumn, rhs: CoreML_Specification_FeatureVectorizer.InputColumn) -> Bool {
    if lhs.inputColumn != rhs.inputColumn {return false}
    if lhs.inputDimensions != rhs.inputDimensions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
