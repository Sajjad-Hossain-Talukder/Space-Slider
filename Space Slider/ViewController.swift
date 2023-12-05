//
//  ViewController.swift
//  Space Slider
//
//  Created by Xotech on 05/12/2023.
//

import UIKit

class ViewController: UIViewController {
    var imar = [UIImage(imageLiteralResourceName: "image1"),UIImage(imageLiteralResourceName: "image2"),UIImage(imageLiteralResourceName: "image3"),UIImage(imageLiteralResourceName: "image4"),UIImage(imageLiteralResourceName: "image5")]
    
    var i = 0
    
    @IBOutlet weak var sliderAction: UIImageView!
    
    @IBOutlet weak var one: UIImageView!
    
    @IBOutlet weak var two: UIImageView!
    
    @IBOutlet weak var three: UIImageView!
    
    @IBOutlet weak var four: UIImageView!
    
    
    @IBOutlet weak var five: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(imageChange), userInfo: nil, repeats: true)
        
    }
    
    
    
    
    @objc func imageChange(){
        self.sliderAction.image=imar[i]
        if(i==0){
            five.image = UIImage(imageLiteralResourceName: "circleBlank")
            one.image = UIImage(imageLiteralResourceName: "circleFilled")
        }
        else if  i == 1 {
            one.image = UIImage(imageLiteralResourceName: "circleBlank")
            two.image = UIImage(imageLiteralResourceName: "circleFilled")
        }
        else if i == 2 {
            two.image = UIImage(imageLiteralResourceName: "circleBlank")
            three.image = UIImage(imageLiteralResourceName: "circleFilled")
        }
        else if i == 3 {
            three.image = UIImage(imageLiteralResourceName: "circleBlank")
            four.image = UIImage(imageLiteralResourceName: "circleFilled")
        }
        else {
            four.image = UIImage(imageLiteralResourceName: "circleBlank")
            five.image = UIImage(imageLiteralResourceName: "circleFilled")
        }
        i += 1
        i %= 5
    }
    
    
    
    
    
}

