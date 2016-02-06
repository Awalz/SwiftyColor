//
//  ViewController.swift
//  TestyColor
//
//  Created by Andrew on 2016-02-05.
//  Copyright © 2016 CruxAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func button1(sender: AnyObject) {
        self.view.backgroundColor = UIColor(rgba: 2550, green: 0, blue: 0, alpha: 0.7)
    }
    
    @IBAction func button2(sender: AnyObject) {
        self.view.backgroundColor = UIColor(hexString: "#60DFE5")
    }
    
    @IBAction func button3(sender: AnyObject) {
        self.view.backgroundColor = UIColor(hexString: "888")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

