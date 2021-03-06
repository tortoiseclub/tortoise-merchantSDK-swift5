//
// Redemption.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Redemption: Codable {

    public enum Status: String, Codable { 
        case raised = "raised"
        case processing = "processing"
        case successful = "successful"
        case failed = "failed"
    }
    /** Unique identifier for the redemption request */
    public var _id: String?
    public var plan: Plan?
    public var requestRaisedOn: Date?
    public var requestProcessedOn: Date?
    public var status: Status?

    public init(_id: String?, plan: Plan?, requestRaisedOn: Date?, requestProcessedOn: Date?, status: Status?) {
        self._id = _id
        self.plan = plan
        self.requestRaisedOn = requestRaisedOn
        self.requestProcessedOn = requestProcessedOn
        self.status = status
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case plan
        case requestRaisedOn
        case requestProcessedOn
        case status
    }


}

