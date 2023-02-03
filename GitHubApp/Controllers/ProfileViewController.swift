//
//  ProfileViewController.swift
//  GitHubApp
//
//  Created by Liliana Porto Abdala on 01/02/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    typealias CustomView = ProfileScreenView
    let customView = ProfileScreenView()
    
    override func loadView() {
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
