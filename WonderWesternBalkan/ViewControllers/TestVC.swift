//
//  TestVC.swift
//  WonderWesternBalkan
//
//  Created by Kin+Carta on 8.12.23.
//

import UIKit

class testVC: UIViewController {
    var itemTapped = 0
    
    @IBOutlet weak var text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if itemTapped == 0 {
            text.text = "Cities"
        } else if itemTapped == 1 {
            text.text = "Beaches"
        } else if itemTapped == 2 {
            text.text = "Mountains"
        } else {
            text.text = "Nightlife"
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
