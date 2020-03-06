//
// OrgMaprouletteModelsProject.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OrgMaprouletteModelsProject: Codable {

    public var _id: Int64
    public var owner: Int64
    public var name: String
    public var created: Int
    public var modified: Int
    public var _description: String?
    public var groups: [OrgMaprouletteSessionGroup]
    public var enabled: Bool
    public var displayName: String?
    public var deleted: Bool
    public var isVirtual: Bool?
    public var featured: Bool

    public init(_id: Int64, owner: Int64, name: String, created: Int, modified: Int, _description: String?, groups: [OrgMaprouletteSessionGroup], enabled: Bool, displayName: String?, deleted: Bool, isVirtual: Bool?, featured: Bool) {
        self._id = _id
        self.owner = owner
        self.name = name
        self.created = created
        self.modified = modified
        self._description = _description
        self.groups = groups
        self.enabled = enabled
        self.displayName = displayName
        self.deleted = deleted
        self.isVirtual = isVirtual
        self.featured = featured
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case owner
        case name
        case created
        case modified
        case _description = "description"
        case groups
        case enabled
        case displayName
        case deleted
        case isVirtual
        case featured
    }

}

