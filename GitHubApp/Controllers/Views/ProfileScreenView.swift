//
//  ProfileScreenView.swift
//  GitHubApp
//
//  Created by Liliana Porto Abdala on 01/02/23.
//
import UIKit

class ProfileScreenView: BaseView {
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "github")
        return imageView
    }()
    
    lazy var nameUserLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "User"
        lbl.backgroundColor = .white
        lbl.layer.cornerRadius = 10
        lbl.layer.borderWidth = 1
        lbl.layer.masksToBounds = true
        return lbl
    }()
    
    lazy var labelBackground: UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .white
        lbl.layer.cornerRadius = 20
        lbl.layer.borderWidth = 1
        lbl.layer.masksToBounds = true
        return lbl
    }()
        
    override func addSubviews() {
        backgroundColor = UIColor.black
        addSubview(profileImageView)
        addSubview(nameUserLabel)
        addSubview(labelBackground)
        
    }
    
    override func setConstraints() {
        
        profileImageView.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 40, left: 0, bottom: 0, right: 0),
            size: .init(width: 100, height: 100))
        
        profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        nameUserLabel.anchor(
            top: profileImageView.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 45, left: 16, bottom: 0, right: 16),
            size: .init(width: 130, height: 40))
        
        nameUserLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        labelBackground.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 250, left: 0, bottom: 0, right: 0),
            size: .init(width: 375, height: 600))
        
        labelBackground.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
    }
}
