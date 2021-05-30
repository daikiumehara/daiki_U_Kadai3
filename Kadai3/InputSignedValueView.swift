//
//  InputSignedValueView.swift
//  Kadai3
//
//  Created by daiki umehara on 2021/05/27.
//

import UIKit

class InputSignedValueView: UIView {
    @IBOutlet private var valueTextField: UITextField!
    @IBOutlet private var positiveSwitch: UISwitch!

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib()
    }
    
    private func loadNib() {
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }

    var signedValue: Int? {
        guard let valueString = valueTextField.text,
              let value = Int(valueString) else { return nil }

        if positiveSwitch.isOn {
            return -value
        } else {
            return value
        }
    }
}
