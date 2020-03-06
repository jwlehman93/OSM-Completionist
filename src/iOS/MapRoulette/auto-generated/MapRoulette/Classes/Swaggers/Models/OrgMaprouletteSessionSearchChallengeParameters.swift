//
// OrgMaprouletteSessionSearchChallengeParameters.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OrgMaprouletteSessionSearchChallengeParameters: Codable {

    public var challengeIds: [Int64]?
    public var challengeTags: [String]?
    public var challengeTagConjunction: Bool?
    public var challengeSearch: String?
    public var challengeEnabled: Bool?
    public var challengeDifficulty: Int?
    public var challengeStatus: [Int]?

    public init(challengeIds: [Int64]?, challengeTags: [String]?, challengeTagConjunction: Bool?, challengeSearch: String?, challengeEnabled: Bool?, challengeDifficulty: Int?, challengeStatus: [Int]?) {
        self.challengeIds = challengeIds
        self.challengeTags = challengeTags
        self.challengeTagConjunction = challengeTagConjunction
        self.challengeSearch = challengeSearch
        self.challengeEnabled = challengeEnabled
        self.challengeDifficulty = challengeDifficulty
        self.challengeStatus = challengeStatus
    }


}
