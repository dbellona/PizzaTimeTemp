//
//  StartViewController.swift
//  Pizza Time
//
//  Created by David Bellona on 10/21/14.
//  Copyright (c) 2014 David Bellona. All rights reserved.
//

import UIKit

class StartViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrollImage: UIImageView!

    @IBOutlet weak var pizzaTimeTitle: UILabel!
    @IBOutlet weak var pizzaCrustImage: UIImageView!
    @IBOutlet weak var sauceImage: UIImageView!
    @IBOutlet weak var cheeseImage: UIImageView!
    @IBOutlet weak var redOnionOneImage: UIImageView!
    @IBOutlet weak var redOnionTwoImage: UIImageView!
    @IBOutlet weak var redOnionThreeImage: UIImageView!
    @IBOutlet weak var redOnionFourImage: UIImageView!
    @IBOutlet weak var redOnionFiveImage: UIImageView!
    @IBOutlet weak var redOnionSixImage: UIImageView!
    @IBOutlet weak var mushroomOneImage: UIImageView!
    @IBOutlet weak var mushroomTwoImage: UIImageView!
    @IBOutlet weak var mushroomThreeImage: UIImageView!
    @IBOutlet weak var mushroomFourImage: UIImageView!
    @IBOutlet weak var mushroomFiveImage: UIImageView!
    @IBOutlet weak var pepOneImage: UIImageView!
    @IBOutlet weak var pepTwoImage: UIImageView!
    @IBOutlet weak var pepThreeImage: UIImageView!
    @IBOutlet weak var pepFourImage: UIImageView!
    @IBOutlet weak var pepFiveImage: UIImageView!
    @IBOutlet weak var pepSixImage: UIImageView!
    @IBOutlet weak var pepImageSeven: UIImageView!
    @IBOutlet weak var pepImageEight: UIImageView!
    
    var rotations : [Double] = [15, 45, 90, 135, 180, 235, 0]
    
    
    override func viewDidAppear(animated: Bool) {
        redOnionOneImage.transform = CGAffineTransformMakeRotation(CGFloat(rotations[0] * M_PI / 180))
        redOnionTwoImage.transform = CGAffineTransformMakeRotation(CGFloat(rotations[1] * M_PI / 180))
        redOnionThreeImage.transform = CGAffineTransformMakeRotation(CGFloat(rotations[2] * M_PI / 180))
        redOnionFourImage.transform = CGAffineTransformMakeRotation(CGFloat(rotations[3] * M_PI / 180))
        redOnionFiveImage.transform = CGAffineTransformMakeRotation(CGFloat(rotations[4] * M_PI / 180))
        redOnionSixImage.transform = CGAffineTransformMakeRotation(CGFloat(rotations[0] * M_PI / 180))
        mushroomOneImage.transform = CGAffineTransformMakeRotation(CGFloat(rotations[2] * M_PI / 180))
        mushroomTwoImage.transform = CGAffineTransformMakeRotation(CGFloat(rotations[1] * M_PI / 180))
        mushroomThreeImage.transform = CGAffineTransformMakeRotation(CGFloat(rotations[0] * M_PI / 180))
        mushroomFourImage.transform = CGAffineTransformMakeRotation(CGFloat(rotations[3] * M_PI / 180))
        mushroomFiveImage.transform = CGAffineTransformMakeRotation(CGFloat(rotations[4] * M_PI / 180))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentSize = scrollImage.frame.size
        scrollView.sendSubviewToBack(scrollImage)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float {
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        var offset = Float(scrollView.contentOffset.y)
        var ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: 1136)
        println("offset: \(offset)")
        
    }
    

}
