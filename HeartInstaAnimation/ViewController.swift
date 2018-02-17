//
//  ViewController.swift
//  HeartInstaAnimation
//
//  Created by Apple on 17/02/18.
//  Copyright © 2018 WowDreamApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets:
    @IBOutlet weak var heartImageView: UIImageView!
    
    //Variables:
    var heartImageArrays : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heartImageArrays = createImageArray(total: 24, imagePrefix: "heart")
        
        
       
    }

    func createImageArray(total: Int, imagePrefix: String) -> [UIImage]{
        var imageArray: [UIImage] = []
        for imageCount in 0..<total {
            let imageName = "\(imagePrefix)-\(imageCount).png"
            let image = UIImage(named: imageName)!
            imageArray.append(image)
        }
        return imageArray
    }
    
    func animateImageView(imageView: UIImageView, images: [UIImage]){
        imageView.animationImages = images
        imageView.animationDuration = 1.0
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
    

    @IBAction func LikeButtonAnimation(_ sender: Any) {
        animateImageView(imageView: heartImageView, images: heartImageArrays)
        
    }
    
}

