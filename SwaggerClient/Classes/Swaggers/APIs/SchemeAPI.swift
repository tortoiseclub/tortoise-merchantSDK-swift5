//
// SchemeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class SchemeAPI {
    /**
     Add a new scheme
     
     - parameter body: (body) Scheme object that needs to be added 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addScheme(body: Scheme, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        addSchemeWithRequestBuilder(body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Add a new scheme
     - POST /schemes
     - API Key:
       - type: apiKey X-TORTOISE-KEY 
       - name: tortoise_merchant_apiKey
     - API Key:
       - type: apiKey X-TORTOISE-ID 
       - name: tortoise_merchant_appId
     
     - parameter body: (body) Scheme object that needs to be added 

     - returns: RequestBuilder<Void> 
     */
    open class func addSchemeWithRequestBuilder(body: Scheme) -> RequestBuilder<Void> {
        let path = "/schemes"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Edit scheme details
     
     - parameter schemeId: (path) ID of the scheme to edit 
     - parameter body: (body) Scheme object that needs to be edited 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func editScheme(schemeId: String, body: Scheme, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        editSchemeWithRequestBuilder(schemeId: schemeId, body: body).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Edit scheme details
     - PUT /schemes/{schemeId}
     - API Key:
       - type: apiKey X-TORTOISE-KEY 
       - name: tortoise_merchant_apiKey
     - API Key:
       - type: apiKey X-TORTOISE-ID 
       - name: tortoise_merchant_appId
     
     - parameter schemeId: (path) ID of the scheme to edit 
     - parameter body: (body) Scheme object that needs to be edited 

     - returns: RequestBuilder<Void> 
     */
    open class func editSchemeWithRequestBuilder(schemeId: String, body: Scheme) -> RequestBuilder<Void> {
        var path = "/schemes/{schemeId}"
        let schemeIdPreEscape = "\(schemeId)"
        let schemeIdPostEscape = schemeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{schemeId}", with: schemeIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Fetch all schemes
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func fetchAllSchemes(completion: @escaping ((_ data: [Scheme]?,_ error: Error?) -> Void)) {
        fetchAllSchemesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Fetch all schemes
     - GET /schemes
     - API Key:
       - type: apiKey X-TORTOISE-KEY 
       - name: tortoise_merchant_apiKey
     - API Key:
       - type: apiKey X-TORTOISE-ID 
       - name: tortoise_merchant_appId
     - examples: [{contentType=application/json, example=[ {
  "redemptionOption" : {
    "startMonth" : 0,
    "startDate" : 6
  },
  "durationInMonths" : 1,
  "name" : "name",
  "id" : "id",
  "createdOn" : "2000-01-23T04:56:07.000+00:00",
  "status" : "active"
}, {
  "redemptionOption" : {
    "startMonth" : 0,
    "startDate" : 6
  },
  "durationInMonths" : 1,
  "name" : "name",
  "id" : "id",
  "createdOn" : "2000-01-23T04:56:07.000+00:00",
  "status" : "active"
} ]}]

     - returns: RequestBuilder<[Scheme]> 
     */
    open class func fetchAllSchemesWithRequestBuilder() -> RequestBuilder<[Scheme]> {
        let path = "/schemes"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Scheme]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get scheme by ID
     
     - parameter schemeId: (path) ID of the scheme to fetch 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getScheme(schemeId: String, completion: @escaping ((_ data: Scheme?,_ error: Error?) -> Void)) {
        getSchemeWithRequestBuilder(schemeId: schemeId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get scheme by ID
     - GET /schemes/{schemeId}
     - API Key:
       - type: apiKey X-TORTOISE-KEY 
       - name: tortoise_merchant_apiKey
     - API Key:
       - type: apiKey X-TORTOISE-ID 
       - name: tortoise_merchant_appId
     - examples: [{contentType=application/json, example={
  "redemptionOption" : {
    "startMonth" : 0,
    "startDate" : 6
  },
  "durationInMonths" : 1,
  "name" : "name",
  "id" : "id",
  "createdOn" : "2000-01-23T04:56:07.000+00:00",
  "status" : "active"
}}]
     
     - parameter schemeId: (path) ID of the scheme to fetch 

     - returns: RequestBuilder<Scheme> 
     */
    open class func getSchemeWithRequestBuilder(schemeId: String) -> RequestBuilder<Scheme> {
        var path = "/schemes/{schemeId}"
        let schemeIdPreEscape = "\(schemeId)"
        let schemeIdPostEscape = schemeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{schemeId}", with: schemeIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Scheme>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}