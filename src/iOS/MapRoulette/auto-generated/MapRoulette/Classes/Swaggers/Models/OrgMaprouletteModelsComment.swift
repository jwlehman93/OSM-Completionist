//
// OrgMaprouletteModelsComment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OrgMaprouletteModelsComment: Codable {

    public var _id: Int64
    public var osmId: Int64
    public var osmUsername: String
    public var taskId: Int64
    public var challengeId: Int64
    public var projectId: Int64
    public var created: String
    public var comment: String
    public var actionId: Int64?

    public init(_id: Int64, osmId: Int64, osmUsername: String, taskId: Int64, challengeId: Int64, projectId: Int64, created: String, comment: String, actionId: Int64?) {
        self._id = _id
        self.osmId = osmId
        self.osmUsername = osmUsername
        self.taskId = taskId
        self.challengeId = challengeId
        self.projectId = projectId
        self.created = created
        self.comment = comment
        self.actionId = actionId
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case osmId = "osm_id"
        case osmUsername = "osm_username"
        case taskId
        case challengeId
        case projectId
        case created
        case comment
        case actionId
    }

}
