//
//  ProfileScreenView.swift
//  GitHubApp
//
//  Created by Liliana Porto Abdala on 01/02/23.
//
import UIKit

class ProfileScreenView: BaseView {
    
    lazy var imageViewLogo: UIImageView = {
        let image  = UIImageView(frame:CGRect(x: 100, y: 80, width: 200, height: 300));
        image.image = UIImage(named:"lampada.png")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var buttonRegister: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastrar Matéria", for: .normal)
        button.backgroundColor = UIColor.init(rgb: 0x003566)
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 100, y: 605, width: 200, height: 50)
        button.layer.cornerRadius = 20
        return button
    }()
    
    lazy var buttonList: UIButton = {
        let button = UIButton()
        button.setTitle("Ver Lista", for: .normal)
        button.backgroundColor = UIColor.init(rgb: 0xffc300)
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 100, y: 670, width: 200, height: 50)
        button.layer.cornerRadius = 20
        return button
    }()
    
    override func addSubviews() {
        backgroundColor = UIColor.init(rgb: 0xe5e5e5)
        addSubview(buttonRegister)
        addSubview(buttonList)
        addSubview(imageViewLogo)
    }
    
}
