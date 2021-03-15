//
//  viewController2.swift
//  LandmarkBook
//
//  Created by Mert Kaan on 15.03.2021.
//

import UIKit

class viewController2: UIViewController {

    @IBOutlet weak var controlText: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandMarkName = ""
    var SelectedLandmarkImage  = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controlText.text = selectedLandMarkName
        imageView.image = SelectedLandmarkImage

        // Do any additional setup after loading the view.
    }
    

    
    

}
