//
//  landmarkViewController.swift
//  collectionViewLandmark
//
//  Created by egemen denizeri on 2.01.2022.
//

import UIKit

class landmarkViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    var chosenLandmarkDefinition = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView.image = chosenLandmarkImage
        landmarkLabel.text = chosenLandmarkName
        definitionLabel.text = chosenLandmarkDefinition
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
