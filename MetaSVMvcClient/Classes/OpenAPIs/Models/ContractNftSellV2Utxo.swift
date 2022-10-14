//
// ContractNftSellV2Utxo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Contract nft sell v2 Utxo belongs to the specified address */
public struct ContractNftSellV2Utxo: Codable {

    /** Address string of this utxo */
    public var address: String?
    /** Address calculated from contract hash(p2ch). */
    public var contractAddress: String?
    /** Txid for this utxo. */
    public var txid: String?
    /** Output index for the Utxo. */
    public var txIndex: Int?
    /** Codehash of this utxo. */
    public var codeHash: String?
    /** Genesis of this utxo. */
    public var genesis: String?
    /** The index of this NFT. */
    public var tokenIndex: Int64?
    /** the price of nft. */
    public var price: Int64?
    /** The address to receive fees. */
    public var feeAddressPkh: String?
    /** feeRate */
    public var feeRate: Int?
    /** nftId */
    public var nftId: String?
    /** The address pkh of seller */
    public var sellerAddressPkh: String?
    /** Mvc value of the utxo(Irrelavant to token value) */
    public var satoshi: Int64?
    /** Mvc value of the utxo(In string format) */
    public var satoshiString: String?
    /** The height of this utxo, -1 for unconfirmed utxo. */
    public var height: Int?
    /** Is current nft transfered into sell contract, If not ready, the following fields will be null */
    public var isReady: Bool?
    /** SensibleId of the token */
    public var sensibleId: String?
    /** The metanet tx describing the nft. */
    public var metaTxid: String?
    /** Symbol of the token. */
    public var metaOutputIndex: Int?
    /** The total supply of this NFT. */
    public var tokenSupply: Int64?
    /** Flag used for paging */
    public var flag: String?

    public init(address: String? = nil, contractAddress: String? = nil, txid: String? = nil, txIndex: Int? = nil, codeHash: String? = nil, genesis: String? = nil, tokenIndex: Int64? = nil, price: Int64? = nil, feeAddressPkh: String? = nil, feeRate: Int? = nil, nftId: String? = nil, sellerAddressPkh: String? = nil, satoshi: Int64? = nil, satoshiString: String? = nil, height: Int? = nil, isReady: Bool? = nil, sensibleId: String? = nil, metaTxid: String? = nil, metaOutputIndex: Int? = nil, tokenSupply: Int64? = nil, flag: String? = nil) {
        self.address = address
        self.contractAddress = contractAddress
        self.txid = txid
        self.txIndex = txIndex
        self.codeHash = codeHash
        self.genesis = genesis
        self.tokenIndex = tokenIndex
        self.price = price
        self.feeAddressPkh = feeAddressPkh
        self.feeRate = feeRate
        self.nftId = nftId
        self.sellerAddressPkh = sellerAddressPkh
        self.satoshi = satoshi
        self.satoshiString = satoshiString
        self.height = height
        self.isReady = isReady
        self.sensibleId = sensibleId
        self.metaTxid = metaTxid
        self.metaOutputIndex = metaOutputIndex
        self.tokenSupply = tokenSupply
        self.flag = flag
    }

}

