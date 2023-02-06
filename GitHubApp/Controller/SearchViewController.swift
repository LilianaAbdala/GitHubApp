//
//  SearchViewController.swift
//  GitHubApp
//
//  Created by Liliana Porto Abdala on 01/02/23.
//

import UIKit

class SearchViewController: UIViewController {
    
    typealias CustomView = SearchScreenView
    let customView = SearchScreenView()
    var viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        customView.searchButton.addTarget(self, action: #selector(goProfile), for: .touchUpInside)
    }
    
    @objc func goProfile() {
        let profile = customView.searchTextField.text
        
        viewModel.api.getData(searchText: profile ?? "") { userData in
            print(userData)
            
            DispatchQueue.main.async {
                let userDetails = ProfileViewController(user: userData)
                self.navigationController?.pushViewController(userDetails, animated: true)
            }
        }
     }
 }
