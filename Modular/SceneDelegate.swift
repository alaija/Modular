//
//  SceneDelegate.swift
//  Modular
//
//  Created by Alan Kochev on 05.10.2019.
//  Copyright © 2019 Alan Kochev. All rights reserved.
//

import SwiftUI
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        if let windowScene = scene as? UIWindowScene {
            let contentView = ContentView()
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
