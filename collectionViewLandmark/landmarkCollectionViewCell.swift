//
//  landmarkCollectionViewCell.swift
//  collectionViewLandmark
//
//  Created by egemen denizeri on 2.01.2022.
//

import UIKit

class landmarkCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var landmarkImageView: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    
    func setup(with landmark: Landmark) {
        landmarkImageView.image = landmark.image
        landmarkLabel.text = landmark.name
    }
}
