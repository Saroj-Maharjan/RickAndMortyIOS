//
//  ViewController.swift
//  RickAndMorty
//
//  Created by saroj maharjan on 14/5/2023.
//

import UIKit


/// Controller to house tabs and route tab controller
class RMTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpTabs()
    }
    
    private func setUpTabs(){
        let charactersVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let characterNav = UINavigationController(rootViewController: charactersVC)
        let locationNav = UINavigationController(rootViewController: locationVC)
        let episodeNav = UINavigationController(rootViewController: episodeVC)
        let settingsNav = UINavigationController(rootViewController: settingsVC)
        
        characterNav.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        locationNav.tabBarItem = UITabBarItem(title: "Location", image: UIImage(systemName: "globe"), tag: 2)
        episodeNav.tabBarItem = UITabBarItem(title: "Episode", image: UIImage(systemName: "tv"), tag: 3)
        settingsNav.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [characterNav, locationNav, episodeNav, settingsNav]{
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [characterNav, locationNav, episodeNav, settingsNav],
            animated: true
        )
    }

}

