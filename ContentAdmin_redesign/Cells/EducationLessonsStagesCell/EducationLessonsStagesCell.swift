//
//  EducationLessonsStagesCell.swift
//  ContentAdmin_redesign
//
//  Created by Dmitry on 10/10/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class EducationLessonsStagesCell: UITableViewCell, UITextViewDelegate {
    @IBOutlet weak var stagesTextView: UITextView!
    static let identifier = String(describing: EducationLessonsStagesCell.self)
    var textChanged: ((String) -> Void)?
    override func awakeFromNib() {
        super.awakeFromNib()
        stagesTextView.delegate = self
        stagesTextView.text = ""
    }
    func textChanged(action: @escaping (String) -> Void) {
        self.textChanged = action
    }
    func textViewDidChange(_ textView: UITextView) {
        textChanged?(textView.text)
    }
}
