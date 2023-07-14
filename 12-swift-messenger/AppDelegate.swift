//
//  AppDelegate.swift
//  12-swift-messenger
//
//  Created by Liu Ziyi on 14/7/23.
//

import Foundation
import UIKit
import Firebase

class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
      [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
      FirebaseApp.configure()

    return true
  }
}
