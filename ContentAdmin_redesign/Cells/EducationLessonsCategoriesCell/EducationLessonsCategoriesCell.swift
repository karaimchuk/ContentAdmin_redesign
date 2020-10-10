//
//  EducationLessonsCategoriesCell.swift
//  ContentAdmin_redesign
//
//  Created by Dmitry on 10/10/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

import UIKit

class EducationLessonsCategoriesCell: UITableViewCell {
    @IBOutlet weak var categoriesLabel: UILabel!
    static let identifier = String(describing: EducationLessonsCategoriesCell.self)
    override func awakeFromNib() {
        super.awakeFromNib()
        categoriesLabel.text = "Categories"
    }
}
