//
//  FoodDeliveryTextField.swift
//  UI Practical
//
//  Created by Dhyana Dave on 30/04/22.
//

import UIKit

class FoodDeliveryTextField : UITextField {

    

    var textPadding = UIEdgeInsets(

        top: 12,

        left: 15,

        bottom: 13,

        right: 15

    )

    let viewHeight: CGFloat = 45

    let errorLabelHeight: CGFloat = 10

    

    public func setError(errorMessage: String?) {

        if let message = errorMessage {

            initiateErrorWithTextfield(message)

        } else {

            setup()

        }

    }

    

    private func initiateErrorWithTextfield(_ message: String) {

        self.layer.borderWidth = 1

        self.layer.borderColor = UIColor.semanticRed.cgColor

        

        let subViews = self.superview?.subviews

        let nextIndex = (subViews?.firstIndex(of: self) ?? -1) + 1

        let nextView: UIView? = subViews?[nextIndex]

        if let nextView = nextView {

            nextView.frame.origin.y = nextView.frame.origin.y + 200

        }

        let errorLabel =  UILabel(frame: CGRect(x: self.frame.minX, y: (self.frame.minY + viewHeight + errorLabelHeight + 5), width: self.frame.width, height: errorLabelHeight))

        errorLabel.text = message

        errorLabel.textColor = UIColor.semanticRed

        errorLabel.font = UIFont.systemFont(ofSize: 12)

        errorLabel.textColor = UIColor.semanticRed

        self.superview?.addSubview(errorLabel)

        

    }

    

    func setup() {

        

        //Setting Up Constant height by appyling Constraint

        let heightContraints = NSLayoutConstraint(item: self, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: viewHeight)

        NSLayoutConstraint.activate([heightContraints])

        

        //Designing its placeholder text

        let attributes = [NSAttributedString.Key.foregroundColor : UIColor.nuetralGray2,

                          NSAttributedString.Key.font : UIFont(name: "HelveticaNeue", size: 14) ?? UIFont()]

        self.attributedPlaceholder = NSAttributedString(string: self.placeholder ?? "", attributes: attributes)

        

        //Setting Up for rounded Corners

        self.layer.cornerRadius = 20

        self.clipsToBounds = true

        self.layer.borderWidth = 0

        

        //Setting Up BackGround Color

        self.backgroundColor = UIColor.nuetralGray3

    }

    

    //Giving padding to placeHolder or after text change (When not in focus)

    override func textRect(forBounds bounds: CGRect) -> CGRect {

        let rect = super.textRect(forBounds: bounds)

        return rect.inset(by: textPadding)

    }

    

    //Giving padding to text (When in focus)

    override func editingRect(forBounds bounds: CGRect) -> CGRect {

        let rect = super.editingRect(forBounds: bounds)

        return rect.inset(by: textPadding)

    }

    

    //setting up textField whenever added or created through swift

    override init(frame: CGRect) {

        super.init(frame: frame)

        setup()

    }

    

    //setting up textField whenever added or created through Storyboard

    required init?(coder: NSCoder) {

        super.init(coder: coder)

        setup()

    }

    

}
