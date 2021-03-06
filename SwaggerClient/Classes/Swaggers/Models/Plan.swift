//
// Plan.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Plan: Codable {

    /** Unique identifier for the plan */
    public var _id: String?
    public var customer: PlanCustomer?
    public var product: PlanProduct?
    public var scheme: PlanScheme?
    /** Time when customer enrolled on the plan */
    public var enrolledOn: Date?
    /** Total price of the plan, to be paid by the customer */
    public var planValue: Int?
    /** Value of each instalment to be paid by the customer */
    public var instalmentValue: Int?
    /** Total amount paid by the customer towards the plan till date */
    public var totalPaidValue: Int?
    /** Instalments paid by customer till date */
    public var completedInstalments: Int?
    /** Due date for the upcoming instalment of the plan */
    public var nextInstalmentDate: Date?
    /** Date on which the plan is expected to mature */
    public var planMaturityDate: Date?
    /** Total amount expected to be redeemed by the customer at the end of the plan */
    public var totalExpectedRedemptionValue: Int?
    /** Total amount that can be redeemed by the customer by closing the plan today */
    public var currentRedemptionValue: Int?
    /** Total amount that is paid back to customer if the plan is cancelled today */
    public var currentCancellationValue: Int?
    /** Timestamp of last paid instalment */
    public var lastInstalmentPaidOn: Date?

    public init(_id: String?, customer: PlanCustomer?, product: PlanProduct?, scheme: PlanScheme?, enrolledOn: Date?, planValue: Int?, instalmentValue: Int?, totalPaidValue: Int?, completedInstalments: Int?, nextInstalmentDate: Date?, planMaturityDate: Date?, totalExpectedRedemptionValue: Int?, currentRedemptionValue: Int?, currentCancellationValue: Int?, lastInstalmentPaidOn: Date?) {
        self._id = _id
        self.customer = customer
        self.product = product
        self.scheme = scheme
        self.enrolledOn = enrolledOn
        self.planValue = planValue
        self.instalmentValue = instalmentValue
        self.totalPaidValue = totalPaidValue
        self.completedInstalments = completedInstalments
        self.nextInstalmentDate = nextInstalmentDate
        self.planMaturityDate = planMaturityDate
        self.totalExpectedRedemptionValue = totalExpectedRedemptionValue
        self.currentRedemptionValue = currentRedemptionValue
        self.currentCancellationValue = currentCancellationValue
        self.lastInstalmentPaidOn = lastInstalmentPaidOn
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case customer
        case product
        case scheme
        case enrolledOn
        case planValue
        case instalmentValue
        case totalPaidValue
        case completedInstalments
        case nextInstalmentDate
        case planMaturityDate
        case totalExpectedRedemptionValue
        case currentRedemptionValue
        case currentCancellationValue
        case lastInstalmentPaidOn
    }


}

