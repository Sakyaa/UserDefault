//
//  ViewController.swift
//  UserDefault
//
//  Created by Sakya on 2018/2/22.
//  Copyright © 2018年 Sakya. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let userDefaults = UserDefaults.standard
        
        // Test data.
        var launchAtLogin = true
        var launchCount = 10
        var userInfo: UserInfo? = UserInfo(id: 123, name: "Fox")
        
        // Write preference.
        Preferences[.launchAtLogin] = launchAtLogin
        Preferences[.launchCount] = launchCount
        Preferences[.userInfo] = userInfo
        
        // Read preference.
        launchAtLogin = Preferences[.launchAtLogin]
        launchCount = Preferences[.launchCount]
        userInfo = Preferences[.userInfo]
        
        // Check preferences.
        for (key, value) in userDefaults.dictionaryRepresentation() {
            print("\(key): \(value)")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




