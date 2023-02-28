//
//  TabBarController.swift
//  MessageView
//
//  Created by 김기현 on 2023/03/01.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setConfigure()
            }

            private func setConfigure() {
                let vc1 = UINavigationController(rootViewController: ViewController())
                vc1.tabBarItem.image = UIImage(systemName: "square.and.pencil")
                vc1.title = ""
                setViewControllers([vc1], animated: true)
            }
        }

