//
//  ViewController.swift
//  IOS8-HW-11-DubinaRoman
//
//  Created by admin on 23.12.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    // MARK: - UI Elements
    
    private lazy var labelLogin = {
        let labelLogin = UILabel()
        labelLogin.text = "Login"
        labelLogin.textColor = .white
        labelLogin.font = UIFont.boldSystemFont(ofSize: 40)
        labelLogin.textAlignment = .center
        return labelLogin
    }()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .blue
    }
    
    private func setupHierarchy() {
        view.addSubview(labelLogin)
    }
    
    private func setupLayout() {
        
        labelLogin.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view).offset(100)
        }
    }
    
    // MARK: - Actions
}

