//
// TxAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class TxAPI {
    /**
     Broadcast tx to metasv fullnode.
     
     - parameter txRaw: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func txBroadcastPost(txRaw: TxRaw? = nil, apiResponseQueue: DispatchQueue = MetaSVMvcClientAPI.apiResponseQueue, completion: @escaping ((_ data: BroadcastResult?,_ error: Error?) -> Void)) {
        txBroadcastPostWithRequestBuilder(txRaw: txRaw).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Broadcast tx to metasv fullnode.
     - POST /tx/broadcast
     - This api will broadcast to metasv fullnode directly.
     - BASIC:
       - type: http
       - name: bearerAuth
     - parameter txRaw: (body)  (optional)
     - returns: RequestBuilder<BroadcastResult> 
     */
    open class func txBroadcastPostWithRequestBuilder(txRaw: TxRaw? = nil) -> RequestBuilder<BroadcastResult> {
        let path = "/tx/broadcast"
        let URLString = MetaSVMvcClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: txRaw)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<BroadcastResult>.Type = MetaSVMvcClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get transaction detail by specific txid.
     
     - parameter txid: (path) the request ID to search, txhash 
     - parameter showScript: (query) Return source script code or not (default false). (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func txTxidGet(txid: String, showScript: Bool? = nil, apiResponseQueue: DispatchQueue = MetaSVMvcClientAPI.apiResponseQueue, completion: @escaping ((_ data: TxDetail?,_ error: Error?) -> Void)) {
        txTxidGetWithRequestBuilder(txid: txid, showScript: showScript).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get transaction detail by specific txid.
     - GET /tx/{txid}
     - This api is parsed from raw hex, you can use /tx/{txid}/raw to parse tx by yourself, If you want detail input info, use '/vin/{txid}' to get detailed input info including address and value.
     - BASIC:
       - type: http
       - name: bearerAuth
     - parameter txid: (path) the request ID to search, txhash 
     - parameter showScript: (query) Return source script code or not (default false). (optional)
     - returns: RequestBuilder<TxDetail> 
     */
    open class func txTxidGetWithRequestBuilder(txid: String, showScript: Bool? = nil) -> RequestBuilder<TxDetail> {
        var path = "/tx/{txid}"
        let txidPreEscape = "\(APIHelper.mapValueToPathItem(txid))"
        let txidPostEscape = txidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{txid}", with: txidPostEscape, options: .literal, range: nil)
        let URLString = MetaSVMvcClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "showScript": showScript?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<TxDetail>.Type = MetaSVMvcClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get transaction raw hex by specific txid.
     
     - parameter txid: (path) the request ID to search, txhash 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func txTxidRawGet(txid: String, apiResponseQueue: DispatchQueue = MetaSVMvcClientAPI.apiResponseQueue, completion: @escaping ((_ data: TxRaw?,_ error: Error?) -> Void)) {
        txTxidRawGetWithRequestBuilder(txid: txid).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get transaction raw hex by specific txid.
     - GET /tx/{txid}/raw
     - BASIC:
       - type: http
       - name: bearerAuth
     - parameter txid: (path) the request ID to search, txhash 
     - returns: RequestBuilder<TxRaw> 
     */
    open class func txTxidRawGetWithRequestBuilder(txid: String) -> RequestBuilder<TxRaw> {
        var path = "/tx/{txid}/raw"
        let txidPreEscape = "\(APIHelper.mapValueToPathItem(txid))"
        let txidPostEscape = txidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{txid}", with: txidPostEscape, options: .literal, range: nil)
        let URLString = MetaSVMvcClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<TxRaw>.Type = MetaSVMvcClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Whether MetaSV have seen this tx before. This is a fast approach to know if the tx exist or not.
     
     - parameter txid: (path) the request ID to search, txhash 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func txTxidSeenGet(txid: String, apiResponseQueue: DispatchQueue = MetaSVMvcClientAPI.apiResponseQueue, completion: @escaping ((_ data: Bool?,_ error: Error?) -> Void)) {
        txTxidSeenGetWithRequestBuilder(txid: txid).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Whether MetaSV have seen this tx before. This is a fast approach to know if the tx exist or not.
     - GET /tx/{txid}/seen
     - BASIC:
       - type: http
       - name: bearerAuth
     - parameter txid: (path) the request ID to search, txhash 
     - returns: RequestBuilder<Bool> 
     */
    open class func txTxidSeenGetWithRequestBuilder(txid: String) -> RequestBuilder<Bool> {
        var path = "/tx/{txid}/seen"
        let txidPreEscape = "\(APIHelper.mapValueToPathItem(txid))"
        let txidPostEscape = txidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{txid}", with: txidPostEscape, options: .literal, range: nil)
        let URLString = MetaSVMvcClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Bool>.Type = MetaSVMvcClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get all output point of vins in the tx with detailed output script.
     
     - parameter txid: (path) The txid of the vins 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func vinTxidDetailGet(txid: String, apiResponseQueue: DispatchQueue = MetaSVMvcClientAPI.apiResponseQueue, completion: @escaping ((_ data: [OutputInfoDetail]?,_ error: Error?) -> Void)) {
        vinTxidDetailGetWithRequestBuilder(txid: txid).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all output point of vins in the tx with detailed output script.
     - GET /vin/{txid}/detail
     - Search output points by spent txid. Use this api to get detailed inputs for the tx.
     - BASIC:
       - type: http
       - name: bearerAuth
     - parameter txid: (path) The txid of the vins 
     - returns: RequestBuilder<[OutputInfoDetail]> 
     */
    open class func vinTxidDetailGetWithRequestBuilder(txid: String) -> RequestBuilder<[OutputInfoDetail]> {
        var path = "/vin/{txid}/detail"
        let txidPreEscape = "\(APIHelper.mapValueToPathItem(txid))"
        let txidPostEscape = txidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{txid}", with: txidPostEscape, options: .literal, range: nil)
        let URLString = MetaSVMvcClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[OutputInfoDetail]>.Type = MetaSVMvcClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
