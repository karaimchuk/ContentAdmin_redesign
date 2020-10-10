//
//  EducationLessonsPaidCell.swift
//  ContentAdmin_redesign
//
//  Created by Dmitry on 10/10/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class EducationLessonsPaidCell: UITableViewCell {
    @IBOutlet weak var paidLabel: UILabel!
    @IBOutlet weak var paidSwitcher: UISwitch!
    static let identifier = String(describing: EducationLessonsPaidCell.self)
    override func awakeFromNib() {
        super.awakeFromNib()
        paidLabel.text = "Paid"
        paidSwitcher.onTintColor = UIColor.App.lightMauve
    }
}
