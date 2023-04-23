//
// XpubLiteBalance.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Balance for xpub lite wallet */
public struct XpubLiteBalance: Codable {

    /** confirmed balance plus unconfirmed balance */
    public var balance: Int64?

    public init(balance: Int64? = nil) {
        self.balance = balance
    }

}
