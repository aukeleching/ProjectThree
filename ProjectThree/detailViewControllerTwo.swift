//
//  detailViewControllerTwo.swift
//  ProjectThree
//
//  Created by CM Student on 4/23/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class detailViewControllerTwo: UIViewController {
    
    @IBOutlet var imageViewTwo: UIImageView!
    
    var imagePassTwo: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let imageName = imagePassTwo {
            imageViewTwo.image = UIImage(named: imageName)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
