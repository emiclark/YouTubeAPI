//
//  ViewController.swift
//  YouTubeAPI
//
//  Created by Emiko Clark on 3/22/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        ApiClient.getData(pageNum: 1) { (itemsArray) in
            print(itemsArray)
        }
    }


}

