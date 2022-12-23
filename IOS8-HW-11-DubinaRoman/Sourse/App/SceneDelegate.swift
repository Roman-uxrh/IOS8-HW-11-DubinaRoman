//
//  SceneDelegate.swift
//  IOS8-HW-11-DubinaRoman
//
//  Created by admin on 23.12.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let viewController = ViewController()
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }
}

