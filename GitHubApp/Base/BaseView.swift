//
//  BaseView.swift
//  GitHubApp
//
//  Created by Liliana Porto Abdala on 03/02/23.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        //  do Nothing
    }
    
    func setConstraints() {
        // do Nothing
    }
}

