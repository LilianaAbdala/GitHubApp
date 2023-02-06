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
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 80
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var nameUserLabel: UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .white
        lbl.layer.cornerRadius = 10
        lbl.layer.borderWidth = 1
        lbl.layer.masksToBounds = true
        return lbl
    }()
    
    lazy var reposUserLabel: UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .white
        lbl.layer.cornerRadius = 10
        lbl.layer.borderWidth = 1
        lbl.layer.masksToBounds = true
        return lbl
    }()
    
//    lazy var labelBackground: UILabel = {
//        let lbl = UILabel()
//        lbl.backgroundColor = .white
//        lbl.layer.cornerRadius = 20
//        lbl.layer.borderWidth = 1
//        lbl.layer.masksToBounds = true
//        return lbl
//    }()
        
    override func addSubviews() {
        backgroundColor = UIColor.black
        addSubview(profileImageView)
        addSubview(nameUserLabel)
        addSubview(reposUserLabel)
     //  addSubview(labelBackground)
        
    }
    
    override func setConstraints() {
        
        profileImageView.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 0, left: 70, bottom: 0, right: 0),
            size: .init(width: 150, height: 150))
        
        profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        nameUserLabel.anchor(
            top: profileImageView.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 45, left: 16, bottom: 0, right: 16),
            size: .init(width: 190, height: 40))
        
        nameUserLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        reposUserLabel.anchor(
            top: nameUserLabel.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 60, left: 16, bottom: 0, right: 16),
            size: .init(width: 190, height: 40))
        
        reposUserLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
//        labelBackground.anchor(
//            top: safeAreaLayoutGuide.topAnchor,
//            leading: nil,
//            bottom: nil,
//            trailing: nil,
//            padding: .init(top: 250, left: 0, bottom: 0, right: 0),
//            size: .init(width: 375, height: 600))
//
//        labelBackground.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//
//
    }
}

extension UIImageView {
    func load(urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

