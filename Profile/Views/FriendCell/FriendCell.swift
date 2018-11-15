//
//  FriendCellTableViewCell.swift
//  Profile
//
//  Created by Mobile on 11/15/18.
//  Copyright © 2018 Mobile. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageV: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var followButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var friend: Friend? {
        didSet {
            
            // Safety check
            guard let friend = friend else {
                return
            }
            
            if let fullName = friend.fullName {
                fullNameLabel.text = fullName
            }
            if let userName = friend.userName {
                locationLabel.text = userName
            }
            if let avatarImageName = friend.avatarImageName {
                avatarImageV.image = UIImage(named: avatarImageName)
            }
            if let _ = friend.isFollowing{
                updateFollowButton()
            }
        }
    }
    
    func updateFollowButton(){
        if let isFollowing = self.friend?.isFollowing, isFollowing {
            followButton.cornerRadius = 2
            followButton.borderWidth = 1
            followButton.borderColor = UIColor.ProfileSection.activeGreen
            followButton.setTitle("Follow", for: .normal)
            followButton.setTitleColor(UIColor.ProfileSection.activeGreen, for: .normal)
        }else{
            followButton.borderWidth = 0
            followButton.cornerRadius = 0
            followButton.setTitle("Unfollow", for: .normal)
            followButton.setTitleColor(UIColor.ProfileSection.inactiveGray, for: .normal)
        }
    }
    
    @IBAction func clickedFollow(_ sender: Any) {
        if let isFollowing = self.friend?.isFollowing{
            self.friend?.isFollowing = !isFollowing
        }else{
            self.friend?.isFollowing = false
        }        
        updateFollowButton()
    }
}
