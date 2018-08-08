//
//  ViewController.swift
//  UserProject
//
//  Created by Connor on 8/7/18.
//  Copyright © 2018 Connor. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fetchData() {
        Alamofire.request("https://jsonplaceholder.typicode.com/users",
                          method: .get)
            .responseJSON { response in
                guard let value = response.result.value as?  [Dictionary<String, Any>] else{
                    return
                }
                print(value)
        }
    }
}

