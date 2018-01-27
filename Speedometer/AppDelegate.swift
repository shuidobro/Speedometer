//
//  AppDelegate.swift
//  Speedometer
//
//  Created by Mark DiFranco on 4/3/17.
//  Copyright © 2017 Mark DiFranco. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {


    

}

private extension AppDelegate {
    
}

extension AppDelegate: UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        if ProcessInfo.processInfo.arguments.contains("UITests") {
            UIApplication.shared.keyWindow?.layer.speed = 100
        }

        
        return true
    }
}

extension AppDelegate: SPDLocationAuthorizationDelegate {
    
    func authorizationDenied(for locationAuthorization: SPDLocationAuthorization) {
        let alertController = UIAlertController(title: "Permission Denied", message: "Speedometer needs access to your location to function.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)

    }
}
