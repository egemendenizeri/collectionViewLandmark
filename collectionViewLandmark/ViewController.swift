//
//  ViewController.swift
//  collectionViewLandmark
//
//  Created by egemen denizeri on 2.01.2022.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    // Creating global screen width and height variables
    var screenWidth : CGFloat = 0
    var screenHeight : CGFloat = 0
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    var chosenLandmarkDefinition = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        screenWidth = width
        screenHeight = height
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        chosenLandmarkName = landmarks[indexPath.row].name
        chosenLandmarkImage = landmarks[indexPath.row].image
        chosenLandmarkDefinition = landmarks[indexPath.row].definition
        performSegue(withIdentifier: "toLandmarkViewController", sender: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return landmarks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "landmarkCollectionViewCell", for: indexPath) as! landmarkCollectionViewCell
        cell.setup(with: landmarks[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: screenWidth*0.7, height: screenHeight*0.3)

    }
    func collectionView(_ collectionView: UICollectionView, canEditItemAt indexPath: IndexPath) -> Bool {
        <#code#>
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLandmarkViewController"{
            let destinationVC = segue.destination as! landmarkViewController
            destinationVC.chosenLandmarkName = chosenLandmarkName
            destinationVC.chosenLandmarkImage = chosenLandmarkImage
            destinationVC.chosenLandmarkDefinition = chosenLandmarkDefinition
        }
    }

}
