//
//  ProfileViewController.swift
//  Profile
//
//  Created by Mobile on 11/14/18.
//  Copyright © 2018 Mobile. All rights reserved.
// #B5B5B5 , #2D3A4B, #00CCB3, #EAEAEA

import UIKit

class ProfileViewController: UIViewController, CAPSPageMenuDelegate {
    
    @IBOutlet weak var avatarImgV: UIImageView!
    
    @IBOutlet weak var placesBtn: UIButton!
    @IBOutlet weak var friendsBtn: UIButton!
    @IBOutlet weak var favoritesBtn: UIButton!
    
    @IBOutlet weak var placesDotView: UIView!
    @IBOutlet weak var favoritesDotView: UIView!
    @IBOutlet weak var friendsDotView: UIView!
    
    @IBOutlet weak var fakePageMenu: UIView!
    
    
    var pageMenu : CAPSPageMenu?

    override func viewDidLoad() {
        super.viewDidLoad()

        // initialize
        initViews()
        configurePageMenu()
        /* ------ */
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }
    
    // MARK: - Initialize
    
    func initViews(){
        
    }
    func configurePageMenu(){
        var controllerArray : [UIViewController] = []
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let placesController : PlacesViewController = storyboard.instantiateViewController(withIdentifier: "PlacesViewController") as! PlacesViewController
        controllerArray.append(placesController)
        let favoriteController : FavoritesViewController = storyboard.instantiateViewController(withIdentifier: "FavoritesViewController") as! FavoritesViewController
        controllerArray.append(favoriteController)
        let friendsController : FriendsViewController = storyboard.instantiateViewController(withIdentifier: "FriendsViewController") as! FriendsViewController
        controllerArray.append(friendsController)
        
        let param :[CAPSPageMenuOption] = [
            .menuItemSeparatorWidth(4.3),
            .menuHeight(0),
            .useMenuLikeSegmentedControl(false),
            .menuItemSeparatorPercentageHeight(0.1)
        ]
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: .zero, pageMenuOptions: param)
        pageMenu?.delegate = self
        
        // Need to set false to activate Autolayout
        pageMenu!.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(pageMenu!.view)
        
        pageMenu?.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 12).isActive = true
        pageMenu?.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -12).isActive = true
        pageMenu?.view.topAnchor.constraint(equalTo: self.placesDotView.bottomAnchor, constant: 12).isActive = true
        pageMenu?.view.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -12).isActive = true
        
    }
    
    //MARK: - UIActions
    
    @IBAction func clickedPlaces(_ sender: Any) {
        pageMenu?.moveToPage(0)
    }
    
    @IBAction func clickedFavorites(_ sender: Any) {
        pageMenu?.moveToPage(1)
    }
    
    @IBAction func clickedFriends(_ sender: Any) {
        pageMenu?.moveToPage(2)
    }
    
    // MARK: - Page Menu Delegate
    
    func willMoveToPage(_ controller: UIViewController, index: Int) {
        print(index)
        // Update views
        if index == 0 {
            placesBtn.update_ProfileMenuStateFor(isSelected: true)
            favoritesBtn.update_ProfileMenuStateFor(isSelected: false)
            friendsBtn.update_ProfileMenuStateFor(isSelected: false)
            
            placesDotView.update_DotStateFor(isSelected: true)
            favoritesDotView.update_DotStateFor(isSelected: false)
            friendsDotView.update_DotStateFor(isSelected: false)
        }else if index == 1 {
            placesBtn.update_ProfileMenuStateFor(isSelected: false)
            favoritesBtn.update_ProfileMenuStateFor(isSelected: true)
            friendsBtn.update_ProfileMenuStateFor(isSelected: false)
            
            placesDotView.update_DotStateFor(isSelected: false)
            favoritesDotView.update_DotStateFor(isSelected: true)
            friendsDotView.update_DotStateFor(isSelected: false)
        }else if index == 2 {
            placesBtn.update_ProfileMenuStateFor(isSelected: false)
            favoritesBtn.update_ProfileMenuStateFor(isSelected: false)
            friendsBtn.update_ProfileMenuStateFor(isSelected: true)
            
            placesDotView.update_DotStateFor(isSelected: false)
            favoritesDotView.update_DotStateFor(isSelected: false)
            friendsDotView.update_DotStateFor(isSelected: true)
        }
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
