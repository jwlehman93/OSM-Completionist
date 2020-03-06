//
// OrgMaprouletteModelsClusteredPoint.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OrgMaprouletteModelsClusteredPoint: Codable {

    public var _id: Int64
    public var owner: Int64
    public var ownerName: String
    public var title: String
    public var parentId: Int64
    public var parentName: String
    public var point: OrgMaprouletteModelsPoint
    public var bounding: String
    public var blurb: String
    public var modified: Int
    public var difficulty: Int
    public var type: Int
    public var status: Int
    public var suggestedFix: String?
    public var mappedOn: Int?
    public var pointReview: OrgMaprouletteModelsPointReview
    public var priority: Int
    public var bundleId: Int64?
    public var isBundlePrimary: Bool?

    public init(_id: Int64, owner: Int64, ownerName: String, title: String, parentId: Int64, parentName: String, point: OrgMaprouletteModelsPoint, bounding: String, blurb: String, modified: Int, difficulty: Int, type: Int, status: Int, suggestedFix: String?, mappedOn: Int?, pointReview: OrgMaprouletteModelsPointReview, priority: Int, bundleId: Int64?, isBundlePrimary: Bool?) {
        self._id = _id
        self.owner = owner
        self.ownerName = ownerName
        self.title = title
        self.parentId = parentId
        self.parentName = parentName
        self.point = point
        self.bounding = bounding
        self.blurb = blurb
        self.modified = modified
        self.difficulty = difficulty
        self.type = type
        self.status = status
        self.suggestedFix = suggestedFix
        self.mappedOn = mappedOn
        self.pointReview = pointReview
        self.priority = priority
        self.bundleId = bundleId
        self.isBundlePrimary = isBundlePrimary
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case owner
        case ownerName
        case title
        case parentId
        case parentName
        case point
        case bounding
        case blurb
        case modified
        case difficulty
        case type
        case status
        case suggestedFix
        case mappedOn
        case pointReview
        case priority
        case bundleId
        case isBundlePrimary
    }

}

