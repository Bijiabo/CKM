//
//  PasswordFieldWithLabel_TableViewCell.swift
//  RegisterAndLogIn
//
//  Created by huchunbo on 15/10/26.
//  Copyright © 2015年 TIDELAB. All rights reserved.
//

import UIKit

class PasswordFieldWithLabel_TableViewCell: TextFieldTableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var passwordField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        passwordField.delegate = self
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
