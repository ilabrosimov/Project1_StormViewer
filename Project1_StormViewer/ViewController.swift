//
//  ViewController.swift
//  Project1_StormViewer
//
//  Created by Ilia Abrosimov on 11.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        var pictures = [String]()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print(pictures)
    }


}

