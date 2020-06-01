//
//  FlagPhoneNumberTextFieldDelegate.swift
//  FlagPhoneNumber
//
//  Created by Aurélien Grifasi on 06/08/2017.
//  Modified by Radu Ursache on 01/06/2020
//  Copyright (c) 2017 Aurélien Grifasi. All rights reserved.
//

import UIKit

@objc
public protocol FPNTextFieldDelegate: UITextFieldDelegate {
    func fpnDidSelectCountry(name: String, dialCode: String, code: String)
    func fpnDidValidatePhoneNumber(textField: FPNTextField, isValid: Bool)

    @objc optional func fpnDisplayCountryList()
}
