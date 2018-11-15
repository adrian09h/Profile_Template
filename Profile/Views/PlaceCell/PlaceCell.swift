//
//  PlaceCell.swift
//  Profile
//
//  Created by Mobile on 11/15/18.
//  Copyright © 2018 Mobile. All rights reserved.
//

import UIKit

class PlaceCell: UITableViewCell {

    @IBOutlet weak var placeImageV: UIImageView!
    
    @IBOutlet weak var spotsLabel: UILabel!
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var cityLogoImageV: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var place: Place? {
        didSet {
            
            // Safety check
            guard let place = place else {
                return
            }
            
            if let cityName = place.cityName {
                cityNameLabel.text = cityName
            }
            
            if let cityLogoImageName = place.cityLogoImageName {
                cityLogoImageV.image = UIImage(named: cityLogoImageName)
            }
            
            if let cityImageName = place.cityImageName {
                placeImageV.image = UIImage(named: cityImageName)
            }
            
            if let spotsCount = place.spotsCount{
                spotsLabel.text = "\(spotsCount) spots"
            }
        }
    }
    
}
