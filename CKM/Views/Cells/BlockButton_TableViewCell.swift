//
//  BlockButton_TableViewCell.swift
//  RegisterAndLogIn
//
//  Created by huchunbo on 15/10/26.
//  Copyright © 2015年 TIDELAB. All rights reserved.
//

import UIKit

class BlockButton_TableViewCell: UITableViewCell {

    @IBOutlet weak var blockButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = UITableViewCellSelectionStyle.None
        
        blockButton.backgroundColor = ViewConstants.Style.mainColor
        blockButton.layer.cornerRadius = ViewConstants.cellBlockButtonCornerRadius
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
