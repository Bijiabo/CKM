//
//  TextFieldTableViewCell.swift
//  RegisterAndLogIn
//
//  Created by huchunbo on 15/10/26.
//  Copyright © 2015年 TIDELAB. All rights reserved.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell, UITextFieldDelegate {

    var delegate: MainTableViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.backgroundColor = UIColor.whiteColor()
        
        let viewDict = [
            "contentView": contentView
        ]
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|-contentMarginLeft-[contentView]-contentMarginRight-|", options: NSLayoutFormatOptions(rawValue: 0) , metrics: ViewConstants.cellMetrics , views: viewDict)
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-contentMarginTop-[contentView]-contentMarginBottom-|", options: NSLayoutFormatOptions(rawValue: 0) , metrics: ViewConstants.cellMetrics, views: viewDict)
        addConstraints(horizontalConstraints)
        addConstraints(verticalConstraints)
        
        contentView.layer.cornerRadius = ViewConstants.cellCornerRadius
        contentView.clipsToBounds = true
        
        selectionStyle = UITableViewCellSelectionStyle.None
        
        backgroundColor = UIColor.clearColor()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        delegate?.activeTextField = textField
    }

}
