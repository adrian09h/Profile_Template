//
//  PageMenuViewController.swift
//  Profile
//
//  Created by Mobile on 11/15/18.
//  Copyright © 2018 Mobile. All rights reserved.
//

import UIKit

class PageMenuViewController: UIViewController {
    
    var pageMenu : CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var controllerArray : [UIViewController] = []
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let placesController : PlacesViewController = storyboard.instantiateViewController(withIdentifier: "PlacesViewController") as! PlacesViewController
        controllerArray.append(placesController)
        let favoriteController : FavoritesViewController = storyboard.instantiateViewController(withIdentifier: "FavoritesViewController") as! FavoritesViewController
        controllerArray.append(favoriteController)
        let friendsController : FriendsViewController = storyboard.instantiateViewController(withIdentifier: "FriendsViewController") as! FriendsViewController
        controllerArray.append(friendsController)
        
        let pageMenuOptions :[CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .menuHeight(0),
            .useMenuLikeSegmentedControl(false),
            .menuItemSeparatorPercentageHeight(0.1)
        ]
       
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: self.view.frame, pageMenuOptions: pageMenuOptions)
        self.view.addSubview(pageMenu!.view)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
