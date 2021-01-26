//
//  NetworkManager.swift
//
//  Created by Snir Ganon on 25/1/2021.
//

import Foundation
import Alamofire

public protocol NetworkManagerProtocol {
    func getHeroBySearchName(heroName: String ,completionHandler: @escaping (Result?, NSError?) -> Void)
    func getHeroById(heroId: String ,completionHandler: @escaping (Hero?, NSError?) -> Void)
}

open class NetworkManager: NetworkManagerProtocol {
    public static let shared = NetworkManager()
    
    open func getHeroBySearchName(heroName: String, completionHandler: @escaping (Result?, NSError?) -> Void) {
        AF.request("https://www.superheroapi.com/api.php/10219207355918849/search/\(heroName)").responseJSON { response in
            
            switch response.result {
            case .success(let JSON):
                do {
                    if response.data != nil {
                        if let dict = JSON as? [String: Any] {
                            if let jsonData = try? JSONSerialization.data(withJSONObject: dict)
                            {
                                let result: Result = try JSONDecoder().decode(Result.self, from: jsonData)
                                completionHandler(result, nil)
                            }
                        }
                    }
                    else // success but no data in json
                    {
                        completionHandler(nil, nil)
                    }
                }
                catch _ as NSError {
                    // Name not found
                    if response.data != nil {
                        if let dict = JSON as? [String: Any] {
                            if let errorDescription = dict["error"] as? String {
                                completionHandler(nil, NSError(domain: errorDescription, code: 400, userInfo: nil))
                            }
                        }
                    }
                }
                
            // No network connection
            case .failure(let error):
                completionHandler(nil, NSError(domain: error.errorDescription!, code: 401, userInfo: nil))
            }
        }
    }
    
    open func getHeroById(heroId: String, completionHandler: @escaping (Hero?, NSError?) -> Void) {
        AF.request("https://www.superheroapi.com/api.php/10219207355918849/\(heroId)").responseJSON { response in
            
            switch response.result {
            case .success(let JSON):
                do {
                    if response.data != nil {
                        if let dict = JSON as? [String: Any] {
                            if let jsonData = try? JSONSerialization.data(withJSONObject: dict)
                            {
                                let hero: Hero = try JSONDecoder().decode(Hero.self, from: jsonData)
                                completionHandler(hero, nil)
                            }
                        }
                    }
                }
                
                catch _ as NSError {
                    // One of the id's not valid
                    if response.data != nil {
                        if let dict = JSON as? [String: Any] {
                            if let errorDescription = dict["error"] as? String {
                                completionHandler(nil, NSError(domain: errorDescription, code: 400, userInfo: nil))
                            }
                        }
                    }
                }
                
            // No network connection
            case .failure(let error):
                completionHandler(nil, NSError(domain: error.errorDescription!, code: 401, userInfo: nil))
            }
        }
    }
    
}
