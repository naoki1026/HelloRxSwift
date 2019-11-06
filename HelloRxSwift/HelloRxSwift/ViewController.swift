//
//  ViewController.swift
//  HelloRxSwift
//
//  Created by arakawan on 2019/11/06.
//  Copyright © 2019 arakawan. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = Observable.from([1,2,3,4,5])
    }
}

