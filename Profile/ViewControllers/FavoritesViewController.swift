//
//  FavoritesViewController.swift
//  Profile
//
//  Created by Mobile on 11/14/18.
//  Copyright © 2018 Mobile. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    @IBOutlet var noFavoriteView: UIView!
    @IBOutlet weak var tableView: UITableView!
    var favoritePlaces : [Place] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "PlaceCell", bundle: nil), forCellReuseIdentifier: "PlaceCell")
        tableView.backgroundView = noFavoriteView
    }
}

// MARK: - TableView DataSource
extension FavoritesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        noFavoriteView.isHidden = favoritePlaces.count != 0
        return favoritePlaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath) as! PlaceCell
        
        return cell
    }
}
