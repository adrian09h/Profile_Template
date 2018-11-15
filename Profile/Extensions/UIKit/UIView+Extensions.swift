//
//  UIView+Extensions.swift
//  Profile
//
//  Created by Mobile on 11/15/18.
//  Copyright © 2018 Mobile. All rights reserved.
//

import UIKit

extension UIView{   
    
    
    func update_DotStateFor(isSelected : Bool){
        if isSelected {
            backgroundColor = UIColor.ProfileSection.menuDotSelected
        }else{
            backgroundColor = UIColor.ProfileSection.menuDotDeselected
        }
    }    
}
