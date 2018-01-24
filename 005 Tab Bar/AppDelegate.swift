//
//  AppDelegate.swift
//  005 Tab Bar
//
//  Created by Aaron Brethorst on 1/24/18.
//  Copyright © 2018 Quickbytes. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let tabBarController = UITabBarController.init()
    let tab1 = UIViewController.init()
    let tab2 = UIViewController.init()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        tab1.view.backgroundColor = UIColor.green
        tab1.title = "Green"

        tab2.view.backgroundColor = UIColor.red
        tab2.title = "Red"

        tabBarController.viewControllers = [tab1, tab2]

        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        return true
    }
}
