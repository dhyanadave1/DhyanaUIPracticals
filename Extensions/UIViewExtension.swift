//
//  UIViewExtension.swift
//  UI Practical
//
//  Created by Dhyana Dave on 30/04/22.
//

import UIKit

extension UIView {

    func makeViewCircular() {

        self.layer.borderWidth = 0.1

        self.layer.masksToBounds = false

        self.layer.borderColor = self.backgroundColor?.cgColor

        self.layer.cornerRadius = self.frame.size.width / 2

        self.clipsToBounds = true

        self.contentMode = .scaleToFill

    }

    

    var parentViewController: UIViewController? {

        var parentResponder: UIResponder? = self.next

        while parentResponder != nil {

            if let viewController = parentResponder as? UIViewController {

                return viewController

            }

            parentResponder = parentResponder?.next

        }

        return nil

    }

}
