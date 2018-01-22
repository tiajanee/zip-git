//
//  Networking.swift
//  zip-git
//
//  Created by Tia King on 1/22/18.
//  Copyright © 2018 Tia King. All rights reserved.
//

import Foundation
import Alamofire

class Networking {
    func request(completion: @escaping ([Decodable]) -> ()) {
        let url = URL(string: "https://s3-us-west-2.amazonaws.com/mob3/image_collection.json")!

        Alamofire.request(url, method: .get).responseJSON { (response) in
            print(response)
        }
    }
}

