//
//  Tweet.swift
//  TwitterClient
//
//  Created by Adam Wallraff on 7/3/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

import Foundation

class Tweet {
    let text: String
    let id: String
    
    var user: User?
    
    init?(json: [String: Any]) {
        if let text = json["text"] as? String, let id = json["id_str"] as? String {
            self.text = text
            self.id = id
        } else {
            return nil
        }
    }
    
    
    
}
