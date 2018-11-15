//
//  UIView+Extensions.swift
//  Profile
//
//  Created by Mobile on 11/15/18.
//  Copyright © 2018 Mobile. All rights reserved.
//

import UIKit

extension UIView{
    
    func round_Corner(radius : Float = 10){
        self.layer.cornerRadius = CGFloat(radius)
        self.clipsToBounds = true
    }
    
    func update_DotStateFor(isSelected : Bool){
        if isSelected {
            backgroundColor = UIColor.ProfileViewColors.menuDotSelected
        }else{
            backgroundColor = UIColor.ProfileViewColors.menuDotDeselected
        }
    }    
}
