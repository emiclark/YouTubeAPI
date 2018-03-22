//
//  ApiClient.swift
//  YouTubeAPI
//
//  Created by Emiko Clark on 3/22/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import Foundation

class ApiClient {
    
    class func getData(pageNum: Int, completion: @escaping([String:Any])->()) {

//        let apiString = "https://www.googleapis.com/youtube/v3/search?key=AIzaSyDmqaPH8yJO7uMfTUXz9AKxP5zdb79ym0Q&channelId=UCD5kT8GTKnbYl9WxgnLM0aA&part=snippet,id"
        
        let apiString = "https://www.googleapis.com/youtube/v3/search?key=\(Secrets.apiKey)&channelId=UCD5kT8GTKnbYl9WxgnLM0aA&part=snippet,id"
        
        guard let url = URL(string: apiString) else { print("url conversion failed"); return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let data = data {
                
                do {
                    let jsonDict = try JSONSerialization.data(withJSONObject: data, options: []) as! [String:Any]
                    
                    guard let itemsArray = jsonDict["items"] as? Array<Any> else {print("items array failed"); return}
                    
                    
                    
                } catch {
                    print(error.localizedDescription)
                }
            
            }
            
            
        }.resume()
        
    }
    
}
