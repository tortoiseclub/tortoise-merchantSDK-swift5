//
// Scheme.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Scheme: Codable {

    public enum Status: String, Codable { 
        case active = "active"
        case disabled = "disabled"
        case reviewpending = "reviewPending"
        case reviewrejected = "reviewRejected"
    }
    /** Unique identifier for the scheme */
    public var _id: String?
    /** Name of the scheme */
    public var name: String?
    /** Timestamp at which the scheme is created */
    public var createdOn: Date?
    public var status: Status?
    public var redemptionOption: SchemeRedemptionOption?
    /** Duration of the scheme in months, in other words, number of instalments to be paid by the customer */
    public var durationInMonths: Int?

    public init(_id: String?, name: String?, createdOn: Date?, status: Status?, redemptionOption: SchemeRedemptionOption?, durationInMonths: Int?) {
        self._id = _id
        self.name = name
        self.createdOn = createdOn
        self.status = status
        self.redemptionOption = redemptionOption
        self.durationInMonths = durationInMonths
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case createdOn
        case status
        case redemptionOption
        case durationInMonths
    }


}

