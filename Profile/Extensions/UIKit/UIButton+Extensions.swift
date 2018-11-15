//
//  UIButton+Extensions.swift
//  Profile
//
//  Created by Mobile on 11/15/18.
//  Copyright © 2018 Mobile. All rights reserved.
//

import UIKit

extension UIButton{
    func update_ProfileMenuStateFor(isSelected : Bool){
        if isSelected {
            setTitleColor(UIColor.ProfileViewColors.menuItemSelected, for: .normal)
        }else{
           setTitleColor(UIColor.ProfileViewColors.menuItemDeselected, for: .normal)
        }
    }
}
