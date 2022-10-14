//
// TxOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Parsed outputs from raw tx. */
public struct TxOutput: Codable {

    /** Output index of the tx. */
    public var index: Int?
    /** Bitcoin Value in this output. */
    public var value: Int64?
    /** Parsed address from output */
    public var address: String?
    /** Hex formatted lockScript */
    public var lockScript: String?

    public init(index: Int? = nil, value: Int64? = nil, address: String? = nil, lockScript: String? = nil) {
        self.index = index
        self.value = value
        self.address = address
        self.lockScript = lockScript
    }

}

