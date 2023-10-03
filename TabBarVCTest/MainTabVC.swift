//
//  MainTabVC.swift
//  TabBarVCTest
//
//  Created by DA MAC M1 157 on 2023/10/03.
//

import UIKit

class MainTabVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }

    func setupUI() {
        
        let home = UINavigationController(rootViewController: HomeVC())
        let goals = UINavigationController(rootViewController: GoalsVC())
        let letsgo = UINavigationController(rootViewController: LetsGo())
        let news = UINavigationController(rootViewController: NewsFeedVC())
        let profile = UINavigationController(rootViewController: Profile())
        
        home.title = "Home"
        goals.title = "Goals"
        letsgo.title = "Let's go"
        news.title = "News"
        profile.title = "Profile"
        
        home.tabBarItem.title = "Homes"
        home.tabBarItem.image = UIImage(systemName: "homekit")
        goals.tabBarItem.image = UIImage(systemName: "chart.bar.xaxis")
        letsgo.tabBarItem.image = UIImage(systemName: "flame.fill")
        news.tabBarItem.image = UIImage(systemName: "list.bullet.rectangle")
        profile.tabBarItem.image = UIImage(systemName: "person.fill")
        
        UITabBar.appearance().backgroundColor = UIColorFromRGB(rgbValue: 0xFFF2D8)
        UITabBar.appearance().tintColor = UIColorFromRGB(rgbValue: 0x113946)
        
        setViewControllers([home, goals, letsgo, news, profile], animated: true)
    }
    

}



private extension MainTabVC {
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
