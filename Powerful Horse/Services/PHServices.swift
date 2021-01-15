//
//  PHServices.swift
//  Powerful Horse
//
//  Created by Jonatan Gonzalez on 15/08/2020.
//  Copyright © 2020 Jonatan Gonzalez. All rights reserved.
//

import Foundation
import Alamofire
import UIKit

public class PHServices {
    
    // MARK: - SINGLETON
    public static let shared = PHServices()
    
    let publicKeyMarvel = "8483027415295ed65dff4567f9647312"
    let privateKeyMarvel = "ebba56ecfb028ae547bd9d9dc17e15cb89617cfa"
    let urlMarvel = "https://api-v3.igdb.com"
    let keyServer = ["user-key": "88d3e5ce4a8d1853fbfc756a47a73ecc"]
    
    // MARK: GET Games
    public func getGames(
        vc: UIViewController? = nil,
        onInitRequest: @escaping InitRequest,
        onFinisRequest: @escaping FinishRequest,
        onError: @escaping ErrorResponse,
        onFatal: @escaping FatalResponse,
        onResponse: @escaping (_ status: HTTPStatusCode, _ response: [String: Any]) -> Void) {
        
        let params = [
            "fields": "*"
        ]
        makeRequest(
            endpoint: "\(urlMarvel)/games/",
            params: params,
            method: .post,
            onInitRequest: onInitRequest,
            onFinishRequest: onFinisRequest,
            onError: onError,
            onFatal: onFatal) { (statusCode, jsonResponse) in
                onResponse(statusCode, jsonResponse)
        }
    }
    
    public func getComic(
        by comicId: Int,
        vc: UIViewController? = nil,
        onInitRequest: @escaping InitRequest,
        onFinisRequest: @escaping FinishRequest,
        onError: @escaping ErrorResponse,
        onFatal: @escaping FatalResponse,
        onResponse: @escaping (_ status: HTTPStatusCode, _ response: [String: Any]) -> Void) {
        
        let params = [
            "apikey": "8483027415295ed65dff4567f9647312"
        ]
        
        makeRequest(
            endpoint: "\(urlMarvel)/v1/public/comics/\(comicId)",
            params: params,
            method: .get,
            onInitRequest: onInitRequest,
            onFinishRequest: onFinisRequest,
            onError: onError,
            onFatal: onFatal) { (statusCode, jsonResponse) in
                onResponse(statusCode, jsonResponse)
        }
    }
    
    public func makeRequest(
        endpoint: String,
        params: Parameters?,
        method: HTTPMethod,
        onInitRequest: @escaping InitRequest,
        onFinishRequest: @escaping FinishRequest,
        onError: @escaping ErrorResponse,
        onFatal: @escaping FatalResponse,
        onResponse: @escaping Response) {
        //
        onInitRequest()
        print("PH123 <===== 🚀 onInitRequest =====>")
        print("PH123 🌍 URL: \(endpoint)")
        if params != nil {
            print("FW12 📝 Params: \(String(describing: params!))")
        }
                
        let headers: HTTPHeaders? = HTTPHeaders(["user-key": "88d3e5ce4a8d1853fbfc756a47a73ecc"])
        let paramsss = PHParameters()
                
        AF.request(
            endpoint,
            method: method,
            parameters: paramsss,
            headers: headers)
            .responseJSON { (response) in
                
                switch response.result {
                case .success:
                    if let resp = response.value as? [String: Any] {
                        let code = response.response!.statusCode
                        onResponse(HTTPStatusCode(rawValue: code)!, resp)
                        print("PH123 -> Response result -> \(resp.values)")
                    } else {
                        print("PH123 -> Response -> \(response)")
                    }
                    
                case .failure:
                    onFatal()
                    print("Error -> \(String(describing: response.error))")
                }
                onFinishRequest()
            }
    }
}
