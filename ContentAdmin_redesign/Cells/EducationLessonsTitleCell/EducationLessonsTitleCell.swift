//
//  EducationLessonsTitleCell.swift
//  ContentAdmin_redesign
//
//  Created by Dmitry on 10/10/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class EducationLessonsTitleCell: UITableViewCell, UITextViewDelegate {
    @IBOutlet weak var titleTextView: UITextView!
    static let identifier = String(describing: EducationLessonsTitleCell.self)
    var textChanged: ((String) -> Void)?
    override func awakeFromNib() {
        super.awakeFromNib()
        titleTextView.delegate = self
        titleTextView.text = ""
    }
    func textChanged(action: @escaping (String) -> Void) {
        self.textChanged = action
    }
    func textViewDidChange(_ textView: UITextView) {
        textChanged?(textView.text)
    }
}
