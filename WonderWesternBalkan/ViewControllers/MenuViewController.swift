//
//  MenuViewController.swift
//  WonderWesternBalkan
//
//  Created by Kin+Carta on 8.12.23.
//

//import UIKit

/*
class MenuViewController: UIViewController, UIGestureRecognizerDelegate {
    @IBOutlet weak var menuView: UIView!
    
    var smallMenu = 0.0
    
    var menu: Bool = true
    
    var menuItems: [menuItem] = [menuItem(imageName: "Cities"), menuItem(imageName: "Beach"), menuItem(imageName: "Mountains"), menuItem(imageName: "Night Life")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSizes()
        addElementsToMenu()
        menuView.frame = CGRect(x: self.view.frame.width - menuView.frame.width, y: 0, width: smallMenu, height: self.view.frame.height)
    }
    
    func setupSizes() {
        smallMenu = self.view.frame.width * 0.2
        menuView.frame = CGRect(x: self.view.frame.width, y: 0, width: smallMenu, height: self.view.frame.height)
    }
    
    func showMenu() {
        menuView.frame = CGRect(x: self.view.frame.width - menuView.frame.width, y: 0, width: smallMenu, height: self.view.frame.height)
    }
    
    func hideMenu() {
        menuView.frame = CGRect(x: self.view.frame.width, y: 0, width: 0, height: self.view.frame.height)
    }
    
    @IBAction func menuButtonPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            self.showMenu()
        }
    }
    
    @IBAction func screenTapped(_ sender: Any) {
//        UIView.animate(withDuration: 0.5) {
//            self.hideMenu()
//        }
    }
    
}

extension MenuViewController {
    func addElementsToMenu() {
        let logo = UIImageView()
        let size = menuView.frame.width - 30
        logo.frame = CGRect(x: 15, y: 55, width: size, height: size)
        print(menuView.frame.width)
        logo.image = UIImage(named: "Logo")
        
        let holderView = UIView()
        let logoAreaSize = 55 + size + 45
        holderView.frame = CGRect(x: 15, y: logoAreaSize, width: size, height: self.view.frame.height - logoAreaSize)
        
        for i in 0...menuItems.count - 1 {
            let item = UIImageView()
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
            
            item.frame = CGRect(x: 0, y: CGFloat(i) * size + 25 * CGFloat(i), width: size, height: size)
            item.image = UIImage(named: menuItems[i].imageName)
            
            tapGesture.delegate = self
            tapGesture.isEnabled = true
            tapGesture.view?.isUserInteractionEnabled = true
            
            holderView.addSubview(item)
            item.addGestureRecognizer(tapGesture)
            
        }
        
        menuView.addSubview(holderView)
        menuView.addSubview(logo)
        
    }
    
    @objc func handleTap() {
        didTap(index: 1)
    }
    
    func didTap(index: Int) {
        switch index {
        case 0:
            print("cities")
        case 1:
            print("beaches")
        case 2:
            print("mountains")
        case 3:
            print("nightlife")
        default:
            print("ERROR")
        }
    }
}

class menuItem {
    var imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
    }
}
 */


//ChatCHPT
import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Assuming you have an array of menu items or some data model
        let menuItems = ["Cities", "Beaches", "Mountains", "Nightlife"]

        // Create and layout menu items
        for (index, menuItem) in menuItems.enumerated() {
            let menuItemView = createMenuItemView(withTitle: menuItem)
            view.addSubview(menuItemView)

            // Add a tap gesture recognizer to each menu item
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
            menuItemView.addGestureRecognizer(tapGesture)

            // Set a unique tag for each menu item to identify its index
            menuItemView.tag = index

            // Auto layout code to position the menu items
            menuItemView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                menuItemView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                menuItemView.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(index) * 50.0 + 100.0),
                menuItemView.widthAnchor.constraint(equalToConstant: 200),
                menuItemView.heightAnchor.constraint(equalToConstant: 40) // Adjust height as needed
            ])
        }
    }

    func createMenuItemView(withTitle title: String) -> UIView {
        let menuItemView = UIView()
        menuItemView.backgroundColor = .lightGray // Set a background color for visibility
        let label = UILabel()
        label.text = title
        label.textColor = .black
        label.textAlignment = .center
        menuItemView.addSubview(label)

        // Auto layout code for the label
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: menuItemView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: menuItemView.centerYAnchor)
        ])

        // Additional styling for the menu item view if needed
        menuItemView.layer.cornerRadius = 8.0
        menuItemView.layer.masksToBounds = true

        return menuItemView
    }

    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        if let textVC = storyboard?.instantiateViewController(withIdentifier: "CountryViewController") as? CountryViewController {
            if let index = sender.view?.tag {
                textVC.itemTapped = index + 1
                print(index + 1)
                // You can perform further actions based on the index
                navigationController?.pushViewController(textVC, animated: true)
            }
        }
        
    }
}
