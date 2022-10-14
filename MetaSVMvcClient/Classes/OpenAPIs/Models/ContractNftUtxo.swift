//
// ContractNftUtxo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Contract non fungible token Utxo belongs to the specified address */
public struct ContractNftUtxo: Codable {

    /** Address string of this utxo */
    public var address: String?
    /** Txid for this utxo. */
    public var txid: String?
    /** Output index for the Utxo. */
    public var txIndex: Int?
    /** Codehash of this utxo. */
    public var codeHash: String?
    /** Genesis of this utxo. */
    public var genesis: String?
    /** SensibleId of the token */
    public var sensibleId: String?
    /** The height of this utxo, -1 for unconfirmed utxo. */
    public var height: Int?
    /** The metanet tx describing the nft. */
    public var metaTxid: String?
    /** Symbol of the token. */
    public var metaOutputIndex: Int?
    /** The total supply of this NFT. */
    public var tokenSupply: Int64?
    /** The index of this NFT. */
    public var tokenIndex: Int64?
    /** Mvc value of the utxo(Irrelavant to token value) */
    public var satoshi: Int64?
    /** Mvc value of the utxo(In string format) */
    public var satoshiString: String?
    /** Flag used for paging */
    public var flag: String?

    public init(address: String? = nil, txid: String? = nil, txIndex: Int? = nil, codeHash: String? = nil, genesis: String? = nil, sensibleId: String? = nil, height: Int? = nil, metaTxid: String? = nil, metaOutputIndex: Int? = nil, tokenSupply: Int64? = nil, tokenIndex: Int64? = nil, satoshi: Int64? = nil, satoshiString: String? = nil, flag: String? = nil) {
        self.address = address
        self.txid = txid
        self.txIndex = txIndex
        self.codeHash = codeHash
        self.genesis = genesis
        self.sensibleId = sensibleId
        self.height = height
        self.metaTxid = metaTxid
        self.metaOutputIndex = metaOutputIndex
        self.tokenSupply = tokenSupply
        self.tokenIndex = tokenIndex
        self.satoshi = satoshi
        self.satoshiString = satoshiString
        self.flag = flag
    }

}

