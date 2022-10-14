//
// ContractNftAddressSummary.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Get nft summary(count group by genesis) for specific address. */
public struct ContractNftAddressSummary: Codable {

    /** Codehash of this NFT series. */
    public var codeHash: String?
    /** Genesis of this NFT series.. */
    public var genesis: String?
    /** SensibleId of the token */
    public var sensibleId: String?
    /** The metanet tx describing the nft. */
    public var metaTxid: String?
    /** Symbol of the token. */
    public var metaOutputIndex: Int?
    /** The total supply of this NFT. */
    public var tokenSupply: Int64?
    /** The count of this nft that the address owns. */
    public var count: Int?

    public init(codeHash: String? = nil, genesis: String? = nil, sensibleId: String? = nil, metaTxid: String? = nil, metaOutputIndex: Int? = nil, tokenSupply: Int64? = nil, count: Int? = nil) {
        self.codeHash = codeHash
        self.genesis = genesis
        self.sensibleId = sensibleId
        self.metaTxid = metaTxid
        self.metaOutputIndex = metaOutputIndex
        self.tokenSupply = tokenSupply
        self.count = count
    }

}
