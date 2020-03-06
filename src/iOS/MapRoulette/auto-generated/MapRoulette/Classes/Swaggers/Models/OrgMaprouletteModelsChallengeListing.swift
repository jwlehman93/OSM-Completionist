//
// OrgMaprouletteModelsChallengeListing.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OrgMaprouletteModelsChallengeListing: Codable {

    public var _id: Int64
    public var parent: Int64
    public var name: String
    public var enabled: Bool

    public init(_id: Int64, parent: Int64, name: String, enabled: Bool) {
        self._id = _id
        self.parent = parent
        self.name = name
        self.enabled = enabled
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case parent
        case name
        case enabled
    }

}

