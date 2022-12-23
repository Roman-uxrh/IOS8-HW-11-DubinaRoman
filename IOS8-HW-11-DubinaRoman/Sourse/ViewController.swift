//
//  ViewController.swift
//  IOS8-HW-11-DubinaRoman
//
//  Created by admin on 23.12.2022.
//

import UIKit
import SnapKit

fileprivate enum Constans {
    enum String {
        static let labelLogin = "Login"
        
    }
}

class ViewController: UIViewController {
    
    // MARK: - UI Elements
    
    private lazy var labelLogin = {
        let labelLogin = UILabel()
        labelLogin.text = Constans.String.labelLogin
        labelLogin.textColor = .white
        labelLogin.font = UIFont.boldSystemFont(ofSize: 40)
        labelLogin.textAlignment = .center
        return labelLogin
    }()
    
    private lazy var userName: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .left
        textField.placeholder = "Your name"
        textField.font = UIFont(name: "Inter-Regular", size: 14)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.setLeftIcon(UIImage(systemName: "person"))
        textField.setRightIcon(UIImage(systemName: "checkmark.circle.fill"))
        textField.shadowSetting(textField)
        return textField
    }()
    
    private lazy var paswordName: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .left
        textField.placeholder = "Your name"
        textField.font = UIFont(name: "Inter-Regular", size: 14)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.setLeftIcon(UIImage(systemName: "lock"))
        textField.shadowSetting(textField)
        return textField
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
        view.addSubview(userName)
        view.addSubview(paswordName)
    }
    
    private func setupLayout() {
        
        labelLogin.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view).offset(100)
        }
        
        userName.snp.makeConstraints { make in
            make.top.equalTo(labelLogin.snp.bottom).offset (50)
            make.height.equalTo(50)
            make.left.equalTo (view).offset(40)
            make.right.equalTo(view).offset(-40)
        }
        
        paswordName.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.bottom)
        }
    }
    
    // MARK: - Actions
}

