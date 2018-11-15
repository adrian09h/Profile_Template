//
//  Place.swift
//  Profile
//
//  Created by Mobile on 11/15/18.
//  Copyright © 2018 Mobile. All rights reserved.
//

import UIKit

class Place : NSObject{
    var cityName: String?
    var cityLogoImageName: String?
    var cityImageName: String?
    var spotsCount: Int?
}

extension Place{
    convenience init(cityName: String?, cityLogoImageName: String?, cityImageName: String?, spotsCount: Int?) {
        self.init()
        self.cityName = cityName
        self.cityLogoImageName = cityLogoImageName
        self.cityImageName = cityImageName
        self.spotsCount = spotsCount
    }
    class func generatePlaces() ->[Place]{
        var placeArray : [Place] = []
        
        let placeParis = Place.init(cityName: "Paris", cityLogoImageName: "ParisLogo", cityImageName: "Paris", spotsCount: 3)
        placeArray.append(placeParis)
        
        let placeTokyo = Place.init(cityName: "Tokyo", cityLogoImageName: "TokyoLogo", cityImageName: "Tokyo", spotsCount: 5)
        placeArray.append(placeTokyo)
        
        let placeNewyork = Place.init(cityName: "New York", cityLogoImageName: "NewyorkLogo", cityImageName: "Newyork", spotsCount: 4)
        placeArray.append(placeNewyork)
        
        let placeLos = Place.init(cityName: "Los Angeles", cityLogoImageName: "LosangelesLogo", cityImageName: "Losangeles", spotsCount: 4)
        placeArray.append(placeLos)
        return placeArray
    }
}
