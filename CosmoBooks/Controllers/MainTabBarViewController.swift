//
//  MaintTabBarViewController.swift
//  CosmoBooks
//
//  Created by Wesley Osborne on 7/6/21.
//

import UIKit

class MainTabBarViewController: UITabBarController, UITabBarControllerDelegate {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    view.backgroundColor = .white
    
    setupViewControllers()
  }
  
  private func setupViewControllers() {
    // Home Tab
    let homeNavController = templateNavController(unselectedImage: UIImage(named: "home"), selectedImage: UIImage(named: "home"), rootViewController: HomeViewController(), title: "Home")
    
    // Cash Flow Tab
    let cashFlowNavController = templateNavController(unselectedImage: UIImage(named: "money-bag"), selectedImage: UIImage(named: "money-bag"), rootViewController: CashFlowViewController(), title: "Cash Flow")
    
    // Contacts Tab
    let contactsNavController = templateNavController(unselectedImage: UIImage(named: "contacts"), selectedImage: UIImage(named: "contacts"), rootViewController: ContactsCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()), title: "Clients")
    // More Tab
    let moreNavController = templateNavController(unselectedImage: UIImage(named: "menu"), selectedImage: UIImage(named: "menu"), rootViewController: MoreCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()), title: "More")
    
    viewControllers = [homeNavController, cashFlowNavController, contactsNavController, moreNavController]
  }
 
  private func templateNavController(unselectedImage: UIImage?, selectedImage: UIImage?, rootViewController: UIViewController = UIViewController(), title: String) -> UINavigationController {
    let viewController = rootViewController
    let navController = UINavigationController(rootViewController: viewController)
    navController.tabBarItem.image = unselectedImage
    navController.tabBarItem.selectedImage = selectedImage
    navController.title = title
    return navController
  }
  
}
