//
// SurveyAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class SurveyAPI {
    /**
     Answers Survey Question

     - parameter _id: (path) The id of the Survey that contains the question and answers 
     - parameter taskId: (path) The id of the task that the answer relates too 
     - parameter answerId: (path) The id of the answer 
     - parameter apiKey: (header) The user&#x27;s apiKey to authorize the request 
     - parameter comment: (query) Any comment associated with the answer to the survey question (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func answerSurveyQuestion(_id: Int64, taskId: Int64, answerId: Int64, apiKey: String, comment: String? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        answerSurveyQuestionWithRequestBuilder(_id: _id, taskId: taskId, answerId: answerId, apiKey: apiKey, comment: comment).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Answers Survey Question
     - PUT /survey/{id}/task/{taskId}/{answerId}

     - parameter _id: (path) The id of the Survey that contains the question and answers 
     - parameter taskId: (path) The id of the task that the answer relates too 
     - parameter answerId: (path) The id of the answer 
     - parameter apiKey: (header) The user&#x27;s apiKey to authorize the request 
     - parameter comment: (query) Any comment associated with the answer to the survey question (optional)

     - returns: RequestBuilder<Void> 
     */
    open class func answerSurveyQuestionWithRequestBuilder(_id: Int64, taskId: Int64, answerId: Int64, apiKey: String, comment: String? = nil) -> RequestBuilder<Void> {
        var path = "/survey/{id}/task/{taskId}/{answerId}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let taskIdPreEscape = "\(taskId)"
        let taskIdPostEscape = taskIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{taskId}", with: taskIdPostEscape, options: .literal, range: nil)
        let answerIdPreEscape = "\(answerId)"
        let answerIdPostEscape = answerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{answerId}", with: answerIdPostEscape, options: .literal, range: nil)
        let URLString = MapRouletteAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "comment": comment
        ])
        let nillableHeaders: [String: Any?] = [
                        "apiKey": apiKey
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = MapRouletteAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Create a batch of Surveys

     - parameter body: (body) The JSON structure for the Survey body, include the key &quot;children&quot; a Survey JSON object within the array to create Task children objects. 
     - parameter apiKey: (header) The user&#x27;s apiKey to authorize the request 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func batchUploadPost(body: [OrgMaprouletteModelsChallenge], apiKey: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        batchUploadPostWithRequestBuilder(body: body, apiKey: apiKey).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Create a batch of Surveys
     - POST /surveys

     - parameter body: (body) The JSON structure for the Survey body, include the key &quot;children&quot; a Survey JSON object within the array to create Task children objects. 
     - parameter apiKey: (header) The user&#x27;s apiKey to authorize the request 

     - returns: RequestBuilder<Void> 
     */
    open class func batchUploadPostWithRequestBuilder(body: [OrgMaprouletteModelsChallenge], apiKey: String) -> RequestBuilder<Void> {
        let path = "/surveys"
        let URLString = MapRouletteAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
                        "apiKey": apiKey
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = MapRouletteAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Update a batch of Surveys

     - parameter body: (body) The JSON structure for the Survey body, include the key &quot;children&quot; in a Survey JSON object within the array to create Task children objects. 
     - parameter apiKey: (header) The user&#x27;s apiKey to authorize the request 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func batchUploadPut(body: [OrgMaprouletteModelsChallenge], apiKey: String, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        batchUploadPutWithRequestBuilder(body: body, apiKey: apiKey).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Update a batch of Surveys
     - PUT /surveys

     - parameter body: (body) The JSON structure for the Survey body, include the key &quot;children&quot; in a Survey JSON object within the array to create Task children objects. 
     - parameter apiKey: (header) The user&#x27;s apiKey to authorize the request 

     - returns: RequestBuilder<Void> 
     */
    open class func batchUploadPutWithRequestBuilder(body: [OrgMaprouletteModelsChallenge], apiKey: String) -> RequestBuilder<Void> {
        let path = "/surveys"
        let URLString = MapRouletteAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
                        "apiKey": apiKey
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = MapRouletteAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Create a Survey

     - parameter body: (body) The JSON structure for the Survey body, include the key &quot;children&quot; to create Task children objects. The survey object is just a special type of Challenge object, and is identical to the Challenge object other than including the &quot;answers&quot; key. Although the model schema for the Challenge shows a hierarchy include &quot;general&quot;, &quot;creation&quot;, &quot;priority&quot; and &quot;extra&quot; this JSON structure can be flattened and you can exclude those top level keys and have the children in the root level. 
     - parameter apiKey: (header) The user&#x27;s apiKey to authorize the request 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func create(body: OrgMaprouletteModelsChallenge, apiKey: String, completion: @escaping ((_ data: OrgMaprouletteModelsChallenge?,_ error: Error?) -> Void)) {
        createWithRequestBuilder(body: body, apiKey: apiKey).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a Survey
     - POST /survey

     - examples: [{contentType=application/json, example={
  "created" : 6,
  "description" : "description",
  "priority" : {
    "lowPriorityRule" : "lowPriorityRule",
    "defaultPriority" : 3,
    "highPriorityRule" : "highPriorityRule",
    "mediumPriorityRule" : "mediumPriorityRule"
  },
  "statusMessage" : "statusMessage",
  "bounding" : "bounding",
  "general" : {
    "owner" : 5,
    "difficulty" : 2,
    "parent" : 5,
    "featured" : true,
    "instruction" : "instruction",
    "popularity" : 9,
    "checkinComment" : "checkinComment",
    "checkinSource" : "checkinSource",
    "challengeType" : 7,
    "blurb" : "blurb",
    "enabled" : true,
    "hasSuggestedFixes" : true
  },
  "deleted" : true,
  "dataOriginDate" : 6,
  "extra" : {
    "preferredTags" : "preferredTags",
    "exportableProperties" : "exportableProperties",
    "defaultZoom" : 2,
    "taskStyles" : "taskStyles",
    "maxZoom" : 7,
    "defaultBasemapId" : "defaultBasemapId",
    "minZoom" : 4,
    "defaultBasemap" : 1,
    "customBasemap" : "customBasemap",
    "updateTasks" : true,
    "osmIdProperty" : "osmIdProperty"
  },
  "name" : "name",
  "modified" : 1,
  "lastTaskRefresh" : 1,
  "location" : "location",
  "id" : 0,
  "creation" : {
    "remoteGeoJson" : "remoteGeoJson",
    "overpassQL" : "overpassQL"
  },
  "infoLink" : "infoLink",
  "status" : 1
}}]
     - parameter body: (body) The JSON structure for the Survey body, include the key &quot;children&quot; to create Task children objects. The survey object is just a special type of Challenge object, and is identical to the Challenge object other than including the &quot;answers&quot; key. Although the model schema for the Challenge shows a hierarchy include &quot;general&quot;, &quot;creation&quot;, &quot;priority&quot; and &quot;extra&quot; this JSON structure can be flattened and you can exclude those top level keys and have the children in the root level. 
     - parameter apiKey: (header) The user&#x27;s apiKey to authorize the request 

     - returns: RequestBuilder<OrgMaprouletteModelsChallenge> 
     */
    open class func createWithRequestBuilder(body: OrgMaprouletteModelsChallenge, apiKey: String) -> RequestBuilder<OrgMaprouletteModelsChallenge> {
        let path = "/survey"
        let URLString = MapRouletteAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
                        "apiKey": apiKey
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<OrgMaprouletteModelsChallenge>.Type = MapRouletteAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Retrieves random Task

     - parameter cid: (query) The id of the parent Survey limiting the tasks to only a descendent of that Survey. 
     - parameter s: (query) The task search string. Retrieve only tasks that contain the search string in the task name. Match is case insensitive. (optional)
     - parameter tags: (query) A comma separated list of task tags. The search will only retrieve random tasks that contain those tags (optional)
     - parameter limit: (query) Limit the number of results returned in the response. Default value is 1. (optional)
     - parameter proximity: (query) Id of task that you wish to find the next task based on the proximity of that task (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getRandomTasks(cid: Int64, s: String? = nil, tags: String? = nil, limit: Int? = nil, proximity: Int64? = nil, completion: @escaping ((_ data: [OrgMaprouletteModelsTask]?,_ error: Error?) -> Void)) {
        getRandomTasksWithRequestBuilder(cid: cid, s: s, tags: tags, limit: limit, proximity: proximity).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Retrieves random Task
     - GET /survey/{cid}/tasks/random

     - examples: [{contentType=application/json, example=[ {
  "parent" : 5,
  "created" : 6,
  "mappedOn" : 2,
  "bundleId" : 1,
  "suggestedFix" : "suggestedFix",
  "priority" : 1,
  "isBundlePrimary" : true,
  "mapillaryImages" : [ {
    "lon" : 7.457744773683766,
    "url_1024" : "url_1024",
    "url_640" : "url_640",
    "key" : "key",
    "lat" : 6.84685269835264,
    "url_320" : "url_320",
    "url_2048" : "url_2048"
  }, {
    "lon" : 7.457744773683766,
    "url_1024" : "url_1024",
    "url_640" : "url_640",
    "key" : "key",
    "lat" : 6.84685269835264,
    "url_320" : "url_320",
    "url_2048" : "url_2048"
  } ],
  "instruction" : "instruction",
  "review" : {
    "reviewRequestedBy" : 9,
    "reviewedAt" : 2,
    "reviewStartedAt" : 4,
    "reviewStatus" : 7,
    "reviewedBy" : 3,
    "reviewClaimedBy" : 7
  },
  "geometries" : "geometries",
  "name" : "name",
  "changesetId" : 1,
  "modified" : 1,
  "location" : "location",
  "completionResponses" : "completionResponses",
  "id" : 0,
  "status" : 5
}, {
  "parent" : 5,
  "created" : 6,
  "mappedOn" : 2,
  "bundleId" : 1,
  "suggestedFix" : "suggestedFix",
  "priority" : 1,
  "isBundlePrimary" : true,
  "mapillaryImages" : [ {
    "lon" : 7.457744773683766,
    "url_1024" : "url_1024",
    "url_640" : "url_640",
    "key" : "key",
    "lat" : 6.84685269835264,
    "url_320" : "url_320",
    "url_2048" : "url_2048"
  }, {
    "lon" : 7.457744773683766,
    "url_1024" : "url_1024",
    "url_640" : "url_640",
    "key" : "key",
    "lat" : 6.84685269835264,
    "url_320" : "url_320",
    "url_2048" : "url_2048"
  } ],
  "instruction" : "instruction",
  "review" : {
    "reviewRequestedBy" : 9,
    "reviewedAt" : 2,
    "reviewStartedAt" : 4,
    "reviewStatus" : 7,
    "reviewedBy" : 3,
    "reviewClaimedBy" : 7
  },
  "geometries" : "geometries",
  "name" : "name",
  "changesetId" : 1,
  "modified" : 1,
  "location" : "location",
  "completionResponses" : "completionResponses",
  "id" : 0,
  "status" : 5
} ]}]
     - parameter cid: (query) The id of the parent Survey limiting the tasks to only a descendent of that Survey. 
     - parameter s: (query) The task search string. Retrieve only tasks that contain the search string in the task name. Match is case insensitive. (optional)
     - parameter tags: (query) A comma separated list of task tags. The search will only retrieve random tasks that contain those tags (optional)
     - parameter limit: (query) Limit the number of results returned in the response. Default value is 1. (optional)
     - parameter proximity: (query) Id of task that you wish to find the next task based on the proximity of that task (optional)

     - returns: RequestBuilder<[OrgMaprouletteModelsTask]> 
     */
    open class func getRandomTasksWithRequestBuilder(cid: Int64, s: String? = nil, tags: String? = nil, limit: Int? = nil, proximity: Int64? = nil) -> RequestBuilder<[OrgMaprouletteModelsTask]> {
        let path = "/survey/{cid}/tasks/random"
        let URLString = MapRouletteAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "cid": cid.encodeToJSON(), 
                        "s": s, 
                        "tags": tags, 
                        "limit": limit?.encodeToJSON(), 
                        "proximity": proximity?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<[OrgMaprouletteModelsTask]>.Type = MapRouletteAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Updates a Survey

     - parameter body: (body) The JSON structure for the Survey body, include the key &quot;children&quot; to create or update Task children objects. 
     - parameter _id: (path) The ID of the Survey that is being updated 
     - parameter apiKey: (header) The user&#x27;s apiKey to authorize the request 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func update(body: OrgMaprouletteModelsChallenge, _id: Int64, apiKey: String, completion: @escaping ((_ data: OrgMaprouletteModelsChallenge?,_ error: Error?) -> Void)) {
        updateWithRequestBuilder(body: body, _id: _id, apiKey: apiKey).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Updates a Survey
     - PUT /survey/{id}

     - examples: [{contentType=application/json, example={
  "created" : 6,
  "description" : "description",
  "priority" : {
    "lowPriorityRule" : "lowPriorityRule",
    "defaultPriority" : 3,
    "highPriorityRule" : "highPriorityRule",
    "mediumPriorityRule" : "mediumPriorityRule"
  },
  "statusMessage" : "statusMessage",
  "bounding" : "bounding",
  "general" : {
    "owner" : 5,
    "difficulty" : 2,
    "parent" : 5,
    "featured" : true,
    "instruction" : "instruction",
    "popularity" : 9,
    "checkinComment" : "checkinComment",
    "checkinSource" : "checkinSource",
    "challengeType" : 7,
    "blurb" : "blurb",
    "enabled" : true,
    "hasSuggestedFixes" : true
  },
  "deleted" : true,
  "dataOriginDate" : 6,
  "extra" : {
    "preferredTags" : "preferredTags",
    "exportableProperties" : "exportableProperties",
    "defaultZoom" : 2,
    "taskStyles" : "taskStyles",
    "maxZoom" : 7,
    "defaultBasemapId" : "defaultBasemapId",
    "minZoom" : 4,
    "defaultBasemap" : 1,
    "customBasemap" : "customBasemap",
    "updateTasks" : true,
    "osmIdProperty" : "osmIdProperty"
  },
  "name" : "name",
  "modified" : 1,
  "lastTaskRefresh" : 1,
  "location" : "location",
  "id" : 0,
  "creation" : {
    "remoteGeoJson" : "remoteGeoJson",
    "overpassQL" : "overpassQL"
  },
  "infoLink" : "infoLink",
  "status" : 1
}}]
     - parameter body: (body) The JSON structure for the Survey body, include the key &quot;children&quot; to create or update Task children objects. 
     - parameter _id: (path) The ID of the Survey that is being updated 
     - parameter apiKey: (header) The user&#x27;s apiKey to authorize the request 

     - returns: RequestBuilder<OrgMaprouletteModelsChallenge> 
     */
    open class func updateWithRequestBuilder(body: OrgMaprouletteModelsChallenge, _id: Int64, apiKey: String) -> RequestBuilder<OrgMaprouletteModelsChallenge> {
        var path = "/survey/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = MapRouletteAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
                        "apiKey": apiKey
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<OrgMaprouletteModelsChallenge>.Type = MapRouletteAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
