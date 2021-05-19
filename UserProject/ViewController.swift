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
  
  func fetchData() {
    AF.request("https://jsonplaceholder.typicode.com/users").responseJSON { response in
      // ...
    }
  }
}
