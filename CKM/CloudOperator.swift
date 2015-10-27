//
//  CloudOperator.swift
//  CKM
//
//  Created by huchunbo on 15/10/27.
//  Copyright © 2015年 TIDELAB. All rights reserved.
//

import Foundation
import CloudKit

class CloudOperator: NSObject {
    
    override init() {
        super.init()
    }
    
    
    
    //MARK:
    //MARK: - private
    var container:CKContainer {
        get {
            return CKContainer.defaultContainer()
        }
    }
}