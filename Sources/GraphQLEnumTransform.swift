//
//  GraphQLEnumTransform.swift
//  Alkimii
//
//  Created by Toni Granados on 13/1/23.
//

import ApolloAPI

open class GraphQLEnumTransform<T: EnumType>: TransformType {
    public typealias Object = T
    public typealias JSON = T.RawValue

    public init() {}

    open func transformFromJSON(_ value: Any?) -> T? {
        if let raw = value as? GraphQLEnum<T> {
            return raw.value
        } else if let raw = value as? T.RawValue {
            return T(rawValue: raw)
        }
        return nil
    }

    open func transformToJSON(_ value: T?) -> T.RawValue? {
        if let obj = value {
            return obj.rawValue
        }
        return nil
    }
}
