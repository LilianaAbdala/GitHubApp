//
//  ProfileScreenView.swift
//  GitHubApp
//
//  Created by Liliana Porto Abdala on 01/02/23.
//
import UIKit

class ProfileScreenView: BaseView {
    
    lazy var labelBackground: UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .white
        lbl.layer.cornerRadius = 10
        lbl.layer.borderWidth = 1
        lbl.layer.masksToBounds = true
        return lbl
    }()
        
    }
    override func addSubviews() {
        
    }
    
    override func setConstraints() {
        
    }
}
