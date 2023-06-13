//
//  SetupNavBar.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 12.6.23.
//

import Foundation
import UIKit

class NavigationHelper {
    static func hideNavigationBar(_ viewController: UIViewController) {
        viewController.navigationController?.setNavigationBarHidden(true, animated: false)
        viewController.navigationItem.hidesBackButton = true
    }
}
