//
//  InputNumberView.swift
//  Kadai3
//
//  Created by daiki umehara on 2021/05/26.
//

import UIKit

class InputNumberView: UIView {
    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var positiveSwitch: UISwitch!
    init() {
        super.init(frame: .zero)
        print("init")
        let view = UINib(nibName: "InputNumberView", bundle: nil)
            .instantiate(withOwner: self, options: nil).first as! UIView
        view.bounds = bounds
        addSubview(view)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    func getValue() -> Int {
        guard let valueString = inputTextField.text else { return 0 }
        guard let value = Int(valueString) else { return 0 }
        if positiveSwitch.isOn {
            return -value
        }
        return value
    }
}
