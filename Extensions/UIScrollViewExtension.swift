//
//  UIScrollViewExtension.swift
//  UI Practical
//
//  Created by Dhyana Dave on 30/04/22.
//

import UIKit

extension UIScrollView {

    

    func integrateWithKeyboard() {

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardAppear), name: UIResponder.keyboardWillShowNotification, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardDisappear), name: UIResponder.keyboardWillHideNotification, object: nil)

    }

    

    @objc func keyboardAppear(_ notification:NSNotification) {

        guard let userInfo = notification.userInfo else { return }

        var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue

        guard let viewController = self.parentViewController else { return }

        keyboardFrame = viewController.view.convert(keyboardFrame, from: nil)

        

        var contentInset:UIEdgeInsets = self.contentInset

        contentInset.bottom = keyboardFrame.size.height + 20

        self.contentInset = contentInset

    }

    

    @objc func keyboardDisappear(notification:NSNotification) {

        let contentInset:UIEdgeInsets = UIEdgeInsets.zero

        self.contentInset = contentInset

    }

}
