//
// CommentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class CommentAPI {
    /**
     Adds comment to Task

     - parameter _id: (path) The ID for the Task 
     - parameter comment: (query) A URLEncoded comment for the Task 
     - parameter actionId: (query) An optional action ID that may be associated with the comment (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addComment(_id: Int64, comment: String, actionId: Int64? = nil, completion: @escaping ((_ data: OrgMaprouletteModelsComment?,_ error: Error?) -> Void)) {
        addCommentWithRequestBuilder(_id: _id, comment: comment, actionId: actionId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Adds comment to Task
     - POST /task/{id}/comment

     - examples: [{contentType=application/json, example={
  "osm_id" : 6,
  "challengeId" : 5,
  "created" : 2,
  "actionId" : 7,
  "osm_username" : "osm_username",
  "comment" : "comment",
  "id" : 0,
  "projectId" : 5,
  "taskId" : 1
}}]
     - parameter _id: (path) The ID for the Task 
     - parameter comment: (query) A URLEncoded comment for the Task 
     - parameter actionId: (query) An optional action ID that may be associated with the comment (optional)

     - returns: RequestBuilder<OrgMaprouletteModelsComment> 
     */
    open class func addCommentWithRequestBuilder(_id: Int64, comment: String, actionId: Int64? = nil) -> RequestBuilder<OrgMaprouletteModelsComment> {
        var path = "/task/{id}/comment"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = MapRouletteAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "comment": comment, 
                        "actionId": actionId?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<OrgMaprouletteModelsComment>.Type = MapRouletteAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Adds comment to each Task in a Task Bundle

     - parameter _id: (path) The ID for the bundle 
     - parameter comment: (query) A URLEncoded comment for the Task 
     - parameter actionId: (query) An optional action ID that may be associated with the comment (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addCommentToBundleTasks(_id: Int64, comment: String, actionId: Int64? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        addCommentToBundleTasksWithRequestBuilder(_id: _id, comment: comment, actionId: actionId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Adds comment to each Task in a Task Bundle
     - POST /taskBundle/{id}/comment

     - parameter _id: (path) The ID for the bundle 
     - parameter comment: (query) A URLEncoded comment for the Task 
     - parameter actionId: (query) An optional action ID that may be associated with the comment (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func addCommentToBundleTasksWithRequestBuilder(_id: Int64, comment: String, actionId: Int64? = nil) -> RequestBuilder<Void> {
        var path = "/taskBundle/{id}/comment"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = MapRouletteAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "comment": comment, 
                        "actionId": actionId?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = MapRouletteAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Deletes comment from Task

     - parameter _id: (path) The ID for the Task 
     - parameter commentId: (path) The ID for the Comment 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteComment(_id: Int64, commentId: Int64, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteCommentWithRequestBuilder(_id: _id, commentId: commentId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Deletes comment from Task
     - DELETE /task/{id}/comment/{commentId}

     - parameter _id: (path) The ID for the Task 
     - parameter commentId: (path) The ID for the Comment 

     - returns: RequestBuilder<Void> 
     */
    open class func deleteCommentWithRequestBuilder(_id: Int64, commentId: Int64) -> RequestBuilder<Void> {
        var path = "/task/{id}/comment/{commentId}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let commentIdPreEscape = "\(commentId)"
        let commentIdPostEscape = commentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{commentId}", with: commentIdPostEscape, options: .literal, range: nil)
        let URLString = MapRouletteAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = MapRouletteAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieves a comment

     - parameter _id: (path) The ID for the comment 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func retrieveComment(_id: Int64, completion: @escaping ((_ data: OrgMaprouletteModelsComment?,_ error: Error?) -> Void)) {
        retrieveCommentWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieves a comment
     - GET /comment/{id}

     - examples: [{contentType=application/json, example={
  "osm_id" : 6,
  "challengeId" : 5,
  "created" : 2,
  "actionId" : 7,
  "osm_username" : "osm_username",
  "comment" : "comment",
  "id" : 0,
  "projectId" : 5,
  "taskId" : 1
}}]
     - parameter _id: (path) The ID for the comment 

     - returns: RequestBuilder<OrgMaprouletteModelsComment> 
     */
    open class func retrieveCommentWithRequestBuilder(_id: Int64) -> RequestBuilder<OrgMaprouletteModelsComment> {
        var path = "/comment/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = MapRouletteAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<OrgMaprouletteModelsComment>.Type = MapRouletteAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Retrieves comments for a Task

     - parameter _id: (path) The ID for the Task 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func retrieveComments(_id: Int64, completion: @escaping ((_ data: [OrgMaprouletteModelsComment]?,_ error: Error?) -> Void)) {
        retrieveCommentsWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieves comments for a Task
     - GET /task/{id}/comments

     - examples: [{contentType=application/json, example=[ {
  "osm_id" : 6,
  "challengeId" : 5,
  "created" : 2,
  "actionId" : 7,
  "osm_username" : "osm_username",
  "comment" : "comment",
  "id" : 0,
  "projectId" : 5,
  "taskId" : 1
}, {
  "osm_id" : 6,
  "challengeId" : 5,
  "created" : 2,
  "actionId" : 7,
  "osm_username" : "osm_username",
  "comment" : "comment",
  "id" : 0,
  "projectId" : 5,
  "taskId" : 1
} ]}]
     - parameter _id: (path) The ID for the Task 

     - returns: RequestBuilder<[OrgMaprouletteModelsComment]> 
     */
    open class func retrieveCommentsWithRequestBuilder(_id: Int64) -> RequestBuilder<[OrgMaprouletteModelsComment]> {
        var path = "/task/{id}/comments"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = MapRouletteAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[OrgMaprouletteModelsComment]>.Type = MapRouletteAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update comment on Task

     - parameter commentId: (path) The ID of the original comment 
     - parameter comment: (query) A URLEncoded comment for the Task 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateComment(commentId: Int64, comment: String, completion: @escaping ((_ data: OrgMaprouletteModelsComment?,_ error: Error?) -> Void)) {
        updateCommentWithRequestBuilder(commentId: commentId, comment: comment).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update comment on Task
     - PUT /comment/{commentId}

     - examples: [{contentType=application/json, example={
  "osm_id" : 6,
  "challengeId" : 5,
  "created" : 2,
  "actionId" : 7,
  "osm_username" : "osm_username",
  "comment" : "comment",
  "id" : 0,
  "projectId" : 5,
  "taskId" : 1
}}]
     - parameter commentId: (path) The ID of the original comment 
     - parameter comment: (query) A URLEncoded comment for the Task 

     - returns: RequestBuilder<OrgMaprouletteModelsComment> 
     */
    open class func updateCommentWithRequestBuilder(commentId: Int64, comment: String) -> RequestBuilder<OrgMaprouletteModelsComment> {
        var path = "/comment/{commentId}"
        let commentIdPreEscape = "\(commentId)"
        let commentIdPostEscape = commentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{commentId}", with: commentIdPostEscape, options: .literal, range: nil)
        let URLString = MapRouletteAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "comment": comment
        ])

        let requestBuilder: RequestBuilder<OrgMaprouletteModelsComment>.Type = MapRouletteAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
