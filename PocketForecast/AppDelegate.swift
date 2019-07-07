////////////////////////////////////////////////////////////////////////////////
//
//  TYPHOON FRAMEWORK
//  Copyright 2013, Jasper Blues & Contributors
//  All Rights Reserved.
//
//  NOTICE: The authors permit you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////


import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    @objc var window: UIWindow?
    @objc var cityDao: CityDao?
    @objc var rootViewController: RootViewController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        ICLoader.setImageName("cloud_icon.png")
        ICLoader.setLabelFontName(UIFont.applicationFontOfSize(size: 10).fontName)
        
        UIApplication.shared.setStatusBarStyle(.lightContent, animated: true)
        UINavigationBar.appearance().titleTextAttributes = [
            NSAttributedString.Key.font : UIFont.applicationFontOfSize(size: 20),
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = self.rootViewController
        self.window?.makeKeyAndVisible()
        
        let selectedCity : String! = cityDao!.loadSelectedCity()
        if selectedCity == nil {
            rootViewController?.showCitiesListController()
        }
        
                
        return true
    }
    

    
}

