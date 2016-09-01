//
//  CharacterController.swift
//  Star Wars
//
//  Created by Justin Carver on 9/1/16.
//  Copyright © 2016 Justin Carver. All rights reserved.
//

import Foundation

class CharacterController {
    
    static let baseURL = NSURL(string: "http://swapi.co/api/people/1/")
    
    static func getCharacters(completion: (character: Character?) -> Void){
        
        guard let url = baseURL else { completion(character: nil); return }
        
        NetworkController.performRequestForURL(url, httpMethod: .Get) { (data, error) in
            if let data = data {
                guard let characterDictionary = (try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments)) as? [String: AnyObject] else { completion(character: nil); return }
                
                let characters = Character(dictionary: characterDictionary)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    completion(character: characters)
                })
                
            } else {
                completion(character: nil)
            }
        }
    }
}