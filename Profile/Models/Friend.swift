//
//  Friend.swift
//  Profile
//
//  Created by Mobile on 11/15/18.
//  Copyright © 2018 Mobile. All rights reserved.
//

import UIKit

class Friend: NSObject {
    var fullName : String?
    var avatarImageName: String?
    var locationName: String?
    var isFollowing: Bool?
}

extension Friend{
    convenience init(fullName: String?, avatarImageName: String?, locationName: String?, isFollowing: Bool?) {
        self.init()
        self.fullName = fullName
        self.avatarImageName = avatarImageName
        self.locationName = locationName
        self.isFollowing = isFollowing
    }
    
    class func generateFriends() -> [Friend]{
        var friendArray : [Friend] = []
        let landon = Friend.init(fullName: "Landon Clark", avatarImageName: "Avatar1", locationName: "@landon", isFollowing: true)
        friendArray.append(landon)
        
        let felix = Friend.init(fullName: "Felix Hamilton", avatarImageName: "Avatar2", locationName: "@felix", isFollowing: true)
        friendArray.append(felix)
        
        let josh = Friend.init(fullName: "Josh Ranger", avatarImageName: "Avatar3", locationName: "@josh_24", isFollowing: true)
        friendArray.append(josh)
        
        let niki = Friend.init(fullName: "Niki McDuffie", avatarImageName: "Avatar4", locationName: "@Duffie", isFollowing: true)
        friendArray.append(niki)
        
        let elisa = Friend.init(fullName: "Elisa Finch", avatarImageName: "Avatar5", locationName: "@efinch", isFollowing: true)
        friendArray.append(elisa)
        
        friendArray.append(landon)
        friendArray.append(felix)
        friendArray.append(josh)
        friendArray.append(niki)
        friendArray.append(elisa)
        
        return friendArray
    }
}
