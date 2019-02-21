//
//  ViewController.swift
//  ImageRequest
//
//  Created by Geek on 1/19/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg")!
        
        let task = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            
            if error == nil {
                let downloadImage = UIImage(data: data!)
                DispatchQueue.main.async() {
                    self.imageView.image = downloadImage
                }
            }
        }
        
        task.resume()
    }
}

