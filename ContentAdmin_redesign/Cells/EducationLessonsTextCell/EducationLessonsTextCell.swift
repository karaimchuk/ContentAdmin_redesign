//
//  EducationLessonsTextCell.swift
//  ContentAdmin_redesign
//
//  Created by Dmitry on 10/10/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class EducationLessonsTextCell: UITableViewCell, UITextViewDelegate {
    @IBOutlet weak var textTextView: UITextView!
    static let identifier = String(describing: EducationLessonsTextCell.self)
    var textChanged: ((String) -> Void)?
    override func awakeFromNib() {
        super.awakeFromNib()
        textTextView.delegate = self
        textTextView.text = ""
    }
    func textChanged(action: @escaping (String) -> Void) {
        self.textChanged = action
    }
    func textViewDidChange(_ textView: UITextView) {
        textChanged?(textView.text)
    }
}
