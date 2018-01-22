//
//  ViewController.swift
//  zip-git
//
//  Created by Tia King on 1/22/18.
//  Copyright © 2018 Tia King. All rights reserved.
//

import UIKit
import Alamofire

class TableViewController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let get = Networking()
        get.request { (data) in
            print(data)
        }
        
        Alamofire.download("https://s3-us-west-2.amazonaws.com/mob3/image_collection.json").responseData { response in
            if let data = response.result.value {
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

