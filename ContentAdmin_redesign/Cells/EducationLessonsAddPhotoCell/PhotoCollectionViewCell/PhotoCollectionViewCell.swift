//
//  PhotoCollectionViewCell.swift
//  ContentAdmin_redesign
//
//  Created by Dmitry on 10/10/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    static let identifier = String(describing: PhotoCollectionViewCell.self)
    override func awakeFromNib() {
        super.awakeFromNib()
        photoImageView.backgroundColor = UIColor.App.whiteGrey
        photoImageView.layer.cornerRadius = 10
        photoImageView.tintColor = UIColor.App.lightMauve
    }
}
