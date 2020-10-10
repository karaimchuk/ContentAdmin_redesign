//
//  ViewController.swift
//  ContentAdmin_redesign
//
//  Created by Dmitry on 10/10/20.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class EducationLessonsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let nibs = ["EducationLessonsAddPhotoCell", "EducationLessonsPaidCell", "EducationLessonsCategoriesCell", "EducationLessonsTitleCell", "EducationLessonsTextCell", "EducationLessonsStagesCell"]
        for cellID in nibs {
            tableView.register(UINib(nibName: cellID, bundle: nil), forCellReuseIdentifier: cellID)
        }
    }
    enum LessonDetailsSection: Int {
        case photoSection
        case ruEnSection
        case titleSection
        case textSection
        case stagesSection
    }
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = UIColor.App.white
        navigationItem.title = "Add lesson"
    }

}

extension EducationLessonsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

extension EducationLessonsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let lessonsHeaderView = UIView()
        lessonsHeaderView.backgroundColor = UIColor.App.white
        let viewBackgroundColor = LessonDetailsSection(rawValue: section)
        switch viewBackgroundColor {
        case .photoSection: lessonsHeaderView.backgroundColor = UIColor.App.whiteGrey
        case .ruEnSection: lessonsHeaderView.backgroundColor = .white
        case .titleSection: lessonsHeaderView.backgroundColor = UIColor.App.whiteGrey
        case .textSection: lessonsHeaderView.backgroundColor = UIColor.App.whiteGrey
        case .stagesSection: lessonsHeaderView.backgroundColor = UIColor.App.whiteGrey
        case .none: break
        }
        let titleLable = UILabel()
        titleLable.font = .systemFont(ofSize: 13)
        titleLable.textColor = UIColor.App.greyishBrown
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        lessonsHeaderView.addSubview(titleLable)
        let descriptionLabel = UILabel()
        descriptionLabel.numberOfLines = 2
        descriptionLabel.text = "Используйте перенос строки для \nперечисления этапов"
        descriptionLabel.font = .systemFont(ofSize: 13)
        descriptionLabel.textColor = UIColor.App.greyishBrown
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        let buttonPaste = UIButton()
        buttonPaste.setTitleColor(UIColor.App.lightMauve, for: .normal)
        buttonPaste.setTitle("Paste", for: .normal)
        buttonPaste.translatesAutoresizingMaskIntoConstraints = false
        let ruEn = ["RU", "EN"]
        let languageSegmentControll = UISegmentedControl(items: ruEn)
        languageSegmentControll.selectedSegmentIndex = 0
        languageSegmentControll.backgroundColor = UIColor.App.lightMauve
        languageSegmentControll.translatesAutoresizingMaskIntoConstraints = false
        let lessonsElementsOfHeader = LessonDetailsSection(rawValue: section)
            switch lessonsElementsOfHeader {
            case .photoSection:
                return lessonsHeaderView
            case .ruEnSection:
                lessonsHeaderView.addSubview(languageSegmentControll)
                NSLayoutConstraint.activate([
                languageSegmentControll.leadingAnchor.constraint(equalTo: lessonsHeaderView.leadingAnchor, constant: 111.5),
                languageSegmentControll.trailingAnchor.constraint(equalTo: lessonsHeaderView.trailingAnchor, constant: -111.5),
                languageSegmentControll.topAnchor.constraint(equalTo: lessonsHeaderView.topAnchor, constant: 17.5)
                    ])
            case .titleSection:
                lessonsHeaderView.addSubview(buttonPaste)
                NSLayoutConstraint.activate([
                buttonPaste.leadingAnchor.constraint(greaterThanOrEqualTo: titleLable.trailingAnchor),
                buttonPaste.trailingAnchor.constraint(equalTo: lessonsHeaderView.trailingAnchor, constant: -15),
                buttonPaste.centerYAnchor.constraint(equalTo: lessonsHeaderView.centerYAnchor)
                    ])
                titleLable.text = "ЗАГОЛОВОК"
                NSLayoutConstraint.activate([
                titleLable.leadingAnchor.constraint(equalTo: lessonsHeaderView.leadingAnchor, constant: 15),
                titleLable.trailingAnchor.constraint(greaterThanOrEqualTo: buttonPaste.leadingAnchor),
                titleLable.centerYAnchor.constraint(equalTo: lessonsHeaderView.centerYAnchor)
                    ])
            case .textSection:
                lessonsHeaderView.addSubview(buttonPaste)
                NSLayoutConstraint.activate([
                buttonPaste.leadingAnchor.constraint(greaterThanOrEqualTo: titleLable.trailingAnchor),
                buttonPaste.trailingAnchor.constraint(equalTo: lessonsHeaderView.trailingAnchor, constant: -15),
                buttonPaste.centerYAnchor.constraint(equalTo: lessonsHeaderView.centerYAnchor)
                    ])
                titleLable.text = "ТЕКСТ"
                NSLayoutConstraint.activate([
                titleLable.leadingAnchor.constraint(equalTo: lessonsHeaderView.leadingAnchor, constant: 15),
                titleLable.trailingAnchor.constraint(greaterThanOrEqualTo: buttonPaste.leadingAnchor),
                titleLable.topAnchor.constraint(equalTo: lessonsHeaderView.topAnchor, constant: 10)
                    ])
            case .stagesSection:
                lessonsHeaderView.addSubview(buttonPaste)
                NSLayoutConstraint.activate([
                buttonPaste.trailingAnchor.constraint(equalTo: lessonsHeaderView.trailingAnchor, constant: -15),
                buttonPaste.centerYAnchor.constraint(equalTo: lessonsHeaderView.centerYAnchor)
                    ])
                titleLable.text = "ЭТАПЫ"
                NSLayoutConstraint.activate([
                titleLable.leadingAnchor.constraint(equalTo: lessonsHeaderView.leadingAnchor, constant: 15),
                titleLable.trailingAnchor.constraint(equalTo: lessonsHeaderView.trailingAnchor, constant: -20),
                titleLable.topAnchor.constraint(equalTo: lessonsHeaderView.topAnchor, constant: 10)
                    ])
                lessonsHeaderView.addSubview(descriptionLabel)
                NSLayoutConstraint.activate([
                descriptionLabel.leadingAnchor.constraint(equalTo: lessonsHeaderView.leadingAnchor, constant: 15),
                descriptionLabel.trailingAnchor.constraint(equalTo: lessonsHeaderView.trailingAnchor, constant: -71),
                descriptionLabel.topAnchor.constraint(equalTo: lessonsHeaderView.topAnchor, constant: 28)
                    ])
            case .none:
                break
        }
        return lessonsHeaderView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let lessonsHeightForHeader = LessonDetailsSection(rawValue: section)
        switch lessonsHeightForHeader {
        case .photoSection: return 0
        case .ruEnSection: return 60
        case .titleSection: return 32
        case .textSection: return 32
        case .stagesSection: return 62
        case .none: break
        }
        return 0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let lessonsRowsInSection = LessonDetailsSection(rawValue: section)
        switch lessonsRowsInSection {
        case .photoSection: return 3
        case .ruEnSection: return 0
        case .titleSection: return 1
        case .textSection: return 1
        case .stagesSection: return 1
        case .none: break
        }
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let addPhotoCell = tableView.dequeueReusableCell(withIdentifier: EducationLessonsAddPhotoCell.identifier, for: indexPath) as? EducationLessonsAddPhotoCell
            else {
                fatalError("DequeueReusableCell failed while casting")
        }
        addPhotoCell.collectionView.dataSource = self
        addPhotoCell.collectionView.delegate = self
        guard let paidCell = tableView.dequeueReusableCell(withIdentifier: EducationLessonsPaidCell.identifier, for: indexPath) as? EducationLessonsPaidCell
            else {
                fatalError("DequeueReusableCell failed while casting")
        }
        if indexPath.row == 1 {
            return paidCell
        }
        guard let categoriesCell = tableView.dequeueReusableCell(withIdentifier: EducationLessonsCategoriesCell.identifier, for: indexPath) as? EducationLessonsCategoriesCell
            else {
                fatalError("DequeueReusableCell failed while casting")
        }
        if indexPath.row == 2 {
            return categoriesCell
        }
        guard let titleCell = tableView.dequeueReusableCell(withIdentifier: EducationLessonsTitleCell.identifier, for: indexPath) as? EducationLessonsTitleCell
            else {
                fatalError("DequeueReusableCell failed while casting")
        }
        titleCell.textChanged {[weak tableView] (_) in
            DispatchQueue.main.async {
                tableView?.beginUpdates()
                tableView?.endUpdates()
            }
        }
        if indexPath.section == 2 {
            return titleCell
        }
        guard let textCell = tableView.dequeueReusableCell(withIdentifier: EducationLessonsTextCell.identifier, for: indexPath) as? EducationLessonsTextCell
            else {
                fatalError("DequeueReusableCell failed while casting")
        }
        textCell.textChanged {[weak tableView] (_) in
            DispatchQueue.main.async {
                tableView?.beginUpdates()
                tableView?.endUpdates()
            }
        }
        if indexPath.section == 3 {
            return textCell
        }
        guard let stagesCell = tableView.dequeueReusableCell(withIdentifier: EducationLessonsStagesCell.identifier, for: indexPath) as? EducationLessonsStagesCell
            else {
                fatalError("DequeueReusableCell failed while casting")
        }
        stagesCell.textChanged {[weak tableView] (_) in
            DispatchQueue.main.async {
                tableView?.beginUpdates()
                tableView?.endUpdates()
            }
        }
        if indexPath.section == 4 {
            return stagesCell
        }
        return addPhotoCell
    }
}

extension EducationLessonsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionViewCell.identifier, for: indexPath) as? PhotoCollectionViewCell
            else {
                fatalError("DequeueReusableCell failed while casting")
        }
        return cell
    }
    func collectionView(_ collectionViw: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 248, height: 248)
    }
}

