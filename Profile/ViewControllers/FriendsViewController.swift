//
//  FriendsViewController.swift
//  Profile
//
//  Created by Mobile on 11/14/18.
//  Copyright © 2018 Mobile. All rights reserved.
//

import UIKit

class FriendsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var friendsArray : [Friend] = Friend.generateFriends()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "FriendCell", bundle: nil), forCellReuseIdentifier: "FriendCell")
    }

}

// MARK: - TableView DataSource
extension FriendsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendCell
        cell.friend = self.friendsArray[indexPath.row]
        return cell
    }
}

// MARK: - TableView Delegate
extension FriendsViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
