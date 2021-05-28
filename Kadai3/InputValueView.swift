//
//  InputValueView.swift
//  Kadai3
//
//  Created by daiki umehara on 2021/05/27.
//

import UIKit

class InputValueView: UIView {
    @IBOutlet var valueTextField: UITextField!
    @IBOutlet var positiveSwitch: UISwitch!
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
    
    func getValue() -> Int {
        guard let valueString = valueTextField.text else { return 0 }
        guard let value = Int(valueString) else { return 0 }
        if positiveSwitch.isOn {
            return -value
        }
        return value
    }
}
