//
//  ReviewViewController.swift
//  PizzaTime
//
//  Created by Jayne Vidheecharoen on 10/21/14.
//  Copyright (c) 2014 Alli Dryer. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet weak var leaveView: UIView!
    @IBOutlet weak var reviewTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.leaveView.center.y = 500
        
        UIImageView.animateWithDuration(0.5, delay: 0.1, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
             self.leaveView.center.y = 200
        }, completion: nil)
        
         reviewTextField.becomeFirstResponder()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onStarButton(sender: UIButton) {
        
        sender.selected = !sender.selected
        
    }
    
    
    @IBAction func onDismiss(sender: UIButton) {
        
        view.endEditing(true)
        
        dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
