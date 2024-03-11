//
//  SceneDelegate.swift
//  Navigation
//
//  Created by V Nieto on 11.03.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        
       
        let tabBarController = UITabBarController()
        
      
        let feedNavController = UINavigationController()
        feedNavController.tabBarItem = UITabBarItem(title: "Лента", image: UIImage(systemName: "house"), tag: 0)
        let feedViewController = FeedViewController()
        feedNavController.viewControllers = [feedViewController]
        
        
        let profileNavController = UINavigationController()
        profileNavController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person.circle"), tag: 1)
        let profileViewController = ProfileViewController()
        profileNavController.viewControllers = [profileViewController]
        
        
        tabBarController.viewControllers = [feedNavController, profileNavController]
        
        
        window.rootViewController = tabBarController
        
     
        window.makeKeyAndVisible()
    }
    
    
}
