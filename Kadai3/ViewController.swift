//
//  ViewController.swift
//  Kadai3
//
//  Created by daiki umehara on 2021/05/24.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var firstInputView: InputSignedValueView!
    @IBOutlet private var secondInputView: InputSignedValueView!
    @IBOutlet private var firstValueLabel: UILabel!
    @IBOutlet private var secondValueLabel: UILabel!
    @IBOutlet private var answerLabel: UILabel!

    @IBAction private func calcButtonDidTapped(_ sender: Any) {
        let firstSignedValue = firstInputView.signedValue ?? 0
        let secondSignedValue = secondInputView.signedValue ?? 0

        firstValueLabel.text = String(firstSignedValue)
        secondValueLabel.text = String(secondSignedValue)

        answerLabel.text = String(firstSignedValue + secondSignedValue)
    }
}
