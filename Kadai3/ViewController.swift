//
//  ViewController.swift
//  Kadai3
//
//  Created by daiki umehara on 2021/05/24.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var firstInputView: InputValueView!
    @IBOutlet var secondInputView: InputValueView!
    @IBOutlet private var firstValueLabel: UILabel!
    @IBOutlet private var secondValueLabel: UILabel!
    @IBOutlet private var answerLabel: UILabel!
    @IBAction private func calcButtonDidTapped(_ sender: Any) {
        let firstValue = firstInputView.getValue()
        let secondValue = secondInputView.getValue()
        firstValueLabel.text = String(firstValue)
        secondValueLabel.text = String(secondValue)
        answerLabel.text = String(firstValue + secondValue)
    }
}
