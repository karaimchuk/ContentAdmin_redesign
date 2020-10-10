//
//  EducationLessonsAddPhotoCell.swift
//  ContentAdmin_redesign
//
//  Created by Dmitry on 10/10/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class EducationLessonsAddPhotoCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    static let identifier = String(describing: EducationLessonsAddPhotoCell.self)
    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.register(UINib(nibName: "PhotoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PhotoCollectionViewCell")
    }
}
