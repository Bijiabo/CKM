//
//  TextFieldWithLabelFullWidth_TableViewCell.swift
//  RegisterAndLogIn
//
//  Created by huchunbo on 15/10/26.
//  Copyright © 2015年 TIDELAB. All rights reserved.
//

import UIKit

class TextFieldWithLabelFullWidth_TableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    var delegate: MainTableViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        textField.delegate = self
        selectionStyle = UITableViewCellSelectionStyle.None
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        delegate?.activeTextField = textField
    }

}
