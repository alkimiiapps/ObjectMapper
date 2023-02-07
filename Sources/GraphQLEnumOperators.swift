//
//  GraphQLEnumOperators.swift
//  Alkimii
//
//  Created by Toni Granados on 13/1/23.
//

import ApolloAPI

/// This is a custom operator to map GraphQLEnum<EnumType> types from Apollo 1.0.0+. By default RawRepresentable (Enums)
/// are mapped using the rawValue and are expected to be just that in the json that we provided to the .map(JSON:)
/// method, but that's not quite what's happening in Apollo 1.0.0+, what we get is a JSON representation of a
/// GraphQLEnum<EnumType>, so we need to implement our own mapper

/// Object of EnumType
public func <- <T: EnumType>(left: inout T, right: Map) {
    left <- (right, GraphQLEnumTransform())
}

public func >>> <T: EnumType>(left: T, right: Map) {
    left >>> (right, GraphQLEnumTransform())
}


/// Optional Object of EnumType
public func <- <T: EnumType>(left: inout T?, right: Map) {
    left <- (right, GraphQLEnumTransform())
}

public func >>> <T: EnumType>(left: T?, right: Map) {
    left >>> (right, GraphQLEnumTransform())
}

/// Array of EnumType
public func <- <T: EnumType>(left: inout [T], right: Map) {
    left <- (right, GraphQLEnumTransform())
}

public func >>> <T: EnumType>(left: [T], right: Map) {
    left >>> (right, GraphQLEnumTransform())
}

/// Optional Array of EnumType
public func <- <T: EnumType>(left: inout [T]?, right: Map) {
    left <- (right, GraphQLEnumTransform())
}

public func >>> <T: EnumType>(left: [T]?, right: Map) {
    left >>> (right, GraphQLEnumTransform())
}

/// Dictionary of EnumType
public func <- <T: EnumType>(left: inout [String: T], right: Map) {
    left <- (right, GraphQLEnumTransform())
}

public func >>> <T: EnumType>(left: [String: T], right: Map) {
    left >>> (right, GraphQLEnumTransform())
}


/// Dictionary of EnumType
public func <- <T: EnumType>(left: inout [String: T]?, right: Map) {
    left <- (right, GraphQLEnumTransform())
}

public func >>> <T: EnumType>(left: [String: T]?, right: Map) {
    left >>> (right, GraphQLEnumTransform())
}
