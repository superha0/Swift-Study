//
//  ViewController.swift
//  ImageViewer
//
//  Created by 하영 on 2019. 2. 4..
//  Copyright © 2019년 하영. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    var number = 0;
    var imageName = ["01.jpg", "02.jpg", "03.jpg", "04.jpg", "05.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        imgView.image = UIImage(named : imageName[number])
    }

    @IBAction func btnPre(_ sender: UIButton) {
        if(number == 0) {
            number = (imageName.count-1);
        }
        else {
            number = number-1;
        }
        
        imgView.image = UIImage(named : imageName[number])
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        if(number == (imageName.count-1)) {
            number = 0;
        }
        else {
            number = number+1;
        }
        
        imgView.image = UIImage(named : imageName[number])
    }
}

