//
//  SearchScreenView.swift
//  GitHubApp
//
//  Created by Liliana Porto Abdala on 01/02/23.
//

import UIKit

class SearchScreenView: BaseView {
    
    lazy var gitImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "github")
        return imageView
    }()
    
    lazy var labelSearch: UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .white
        lbl.layer.cornerRadius = 10
        lbl.layer.borderWidth = 1
        lbl.layer.masksToBounds = true
        return lbl
    }()
    
    lazy var searchTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = " Username"
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 10
        textField.autocapitalizationType = .none
        return textField
    }()
    
    lazy var searchButton: UIButton = {
        let button = UIButton()
        button.setTitle("Search", for: .normal)
        button.backgroundColor = UIColor.init(rgb: 0xe5e5e5)
        button.layer.cornerRadius = 10
        return button
    }()
    
    override func addSubviews() {
        backgroundColor = UIColor.black
        addSubview(gitImageView)
        addSubview(labelSearch)
        addSubview(searchTextField)
        addSubview(searchButton)
    }
    
    override func setConstraints() {
        
        gitImageView.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 80, left: 0, bottom: 0, right: 0),
            size: .init(width: 200, height: 200))
        
        gitImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        searchTextField.anchor(
            top: gitImageView.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 80, left: 16, bottom: 0, right: 16),
            size: .init(width: 333, height: 40))
        
        searchTextField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        searchButton.anchor(
            top: searchTextField.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 100, left: 0, bottom: 0, right: 0),
            size: .init(width: 180, height: 40))
        
        searchButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        labelSearch.anchor(
            top: gitImageView.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 80, left: 16, bottom: 0, right: 16),
            size: .init(width: 333, height: 40))
        
        labelSearch.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
