//
//  SignUpOneViewController.swift
//  Pizza Time
//
//  Created by David Bellona on 10/21/14.
//  Copyright (c) 2014 David Bellona. All rights reserved.
//

import UIKit

class SignUpOneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    

    @IBAction func OnTapBackButton(sender: UIButton) {
        navigationController?.popViewControllerAnimated(true)
    }
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }

}
