//
//  TextFieldExtension.swift
//  UI Practical
//
//  Created by Dhyana Dave on 30/04/22.
//

import UIKit

import UIKit

extension UITextField {

    func addDoneButtonOnKeyboard() {

        let keyboardToolbar = UIToolbar()

        keyboardToolbar.sizeToFit()

        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,

            target: nil, action: nil)

        let doneButton = UIBarButtonItem(barButtonSystemItem: .done,

            target: self, action: #selector(resignFirstResponder))

        keyboardToolbar.items = [flexibleSpace, doneButton]

        self.inputAccessoryView = keyboardToolbar

    }

}
    


