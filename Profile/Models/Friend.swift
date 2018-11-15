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
    var userName: String?
    var isFollowing: Bool?
}

extension Friend{
    convenience init(fullName: String?, avatarImageName: String?, userName: String?, isFollowing: Bool?) {
        self.init()
        self.fullName = fullName
        self.avatarImageName = avatarImageName
        self.userName = userName
        self.isFollowing = isFollowing
    }
    
    class func generateFriends() -> [Friend]{
        var friendArray : [Friend] = []
        let landon = Friend.init(fullName: "Landon Clark", avatarImageName: "Avatar1", userName: "@landon", isFollowing: true)
        friendArray.append(landon)
        
        let felix = Friend.init(fullName: "Felix Hamilton", avatarImageName: "Avatar2", userName: "@felix", isFollowing: false)
        friendArray.append(felix)
        
        let josh = Friend.init(fullName: "Josh Ranger", avatarImageName: "Avatar3", userName: "@josh_24", isFollowing: false)
        friendArray.append(josh)
        
        let niki = Friend.init(fullName: "Niki McDuffie", avatarImageName: "Avatar4", userName: "@Duffie", isFollowing: false)
        friendArray.append(niki)
        
        let elisa = Friend.init(fullName: "Elisa Finch", avatarImageName: "Avatar5", userName: "@efinch", isFollowing: false)
        friendArray.append(elisa)
        
        let ian = Friend.init(fullName: "Ian Brooom", avatarImageName: "Avatar6", userName: "@ianbr", isFollowing: false)
        friendArray.append(ian)
        
        let alyssa = Friend.init(fullName: "Alyssa Coke", avatarImageName: "Avatar7", userName: "@ianbr", isFollowing: false)
        friendArray.append(alyssa)
        
        let danish = Friend.init(fullName: "Danish Dhamani", avatarImageName: "Avatar8", userName: "@danish", isFollowing: false)
        friendArray.append(danish)
        
        let paritosh = Friend.init(fullName: "Paritosh Gupta", avatarImageName: "Avatar9", userName: "@paritosh", isFollowing: false)
        friendArray.append(paritosh)
        
        let asim = Friend.init(fullName: "Aasim Sani", avatarImageName: "Avatar10", userName: "@asani", isFollowing: false)
        friendArray.append(asim)        
        
        return friendArray
    }
}
