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
    var homeData: UserData?
    
    init(user: UserData){
        super.init(nibName: "ProfileViewController", bundle: nil)
        self.homeData = user
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        labelData()

    }
    
    func labelData() {
        
        customView.profileImageView.load(urlString: String(homeData?.avatarUrl ?? ""))
        customView.nameUserLabel.text = " \(String(homeData?.name ?? ""))"
        customView.reposUserLabel.text = "Repositores \(String(homeData?.publicRepos ?? 0))"
    }
}
