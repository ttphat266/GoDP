//
//  AppDelegate.swift
//  GoDP
//
//  Created by Phat Tran on 9/20/20.
//  Copyright © 2020 Phat Tran. All rights reserved.
//

import UIKit


@UIApplicationMain


class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var firstTabNavigationController : UINavigationController!
    var secondTabNavigationController : UINavigationController!
    var thirdTabNavigationController : UINavigationController!
    var fourthTabNavigationControoller : UINavigationController!
    var fifthTabNavigationControoller : UINavigationController!
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        creatTabbar()
        return true
    }
    
    func creatTabbar() {
        
         self.window = UIWindow(frame: UIScreen.main.bounds)
         
         let tabBarController = UITabBarController()
         
         firstTabNavigationController   = UINavigationController.init(rootViewController: HomeViewController())
         secondTabNavigationController   = UINavigationController.init(rootViewController: SearchViewController())
         thirdTabNavigationController   = UINavigationController.init(rootViewController: MapsViewController())
         fourthTabNavigationControoller   = UINavigationController.init(rootViewController: FavoriteViewController())
         fifthTabNavigationControoller   = UINavigationController.init(rootViewController: ProfileViewController())
         
         
         tabBarController.viewControllers = [firstTabNavigationController, secondTabNavigationController,thirdTabNavigationController, fourthTabNavigationControoller, fifthTabNavigationControoller ]
         
         let item1 = UITabBarItem(title: "Home",
                                  image: UIImage(named: "home"),
                                  selectedImage: UIImage(named: "homefilled"))
         let item2 = UITabBarItem(title: "Search",
                                 image: UIImage(named: "search"),
                                 selectedImage: UIImage(named: "searchfilled"))
         let item3 = UITabBarItem(title: "Map",
                                 image: UIImage(named: "map"),
                                 selectedImage: UIImage(named: "mapfilled"))
         let item4 = UITabBarItem(title: "Fav",
                                 image: UIImage(named: "favorite"),
                                 selectedImage: UIImage(named: "favoritefilled"))

         let item5 = UITabBarItem(title: "Profile",
                                  image: UIImage(named: "profile"),
                                  selectedImage: UIImage(named: "profilefilled"))
         
         firstTabNavigationController.tabBarItem   = item1
         secondTabNavigationController.tabBarItem   = item2
         thirdTabNavigationController.tabBarItem   = item3
         fourthTabNavigationControoller.tabBarItem   = item4
         fifthTabNavigationControoller.tabBarItem   = item5
         
        
         UITabBar.appearance().tintColor = UIColor(red: 53/255.0, green: 116/255.0, blue: 135/255.0, alpha: 1.0)
         
         UINavigationBar.appearance().barTintColor = UIColor(red: 136/255.0, green: 187/255.0, blue: 156/255.0, alpha: 1.0)
         UINavigationBar.appearance().tintColor = UIColor.white
         UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
         UINavigationBar.appearance().isTranslucent = false
         
         self.window?.rootViewController = LoginViewController()
         window?.makeKeyAndVisible()
    }

}

