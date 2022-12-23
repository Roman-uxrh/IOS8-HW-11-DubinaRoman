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
        static let userName = "Your name"
        static let password = "Password"
        static let forgotPasswordButton = "Forgot your password?"
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
        textField.placeholder = Constans.String.userName
        textField.font = UIFont(name: "Inter-Regular", size: 14)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.setLeftIcon(UIImage(systemName: "person"))
        textField.setRightIcon(UIImage(systemName: "checkmark.circle.fill"))
        textField.shadowSetting(textField)
        return textField
    }()
    
    private lazy var pasword: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .left
        textField.placeholder = Constans.String.password
        textField.font = UIFont(name: "Inter-Regular", size: 14)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.setLeftIcon(UIImage(systemName: "lock"))
        textField.shadowSetting(textField)
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle(Constans.String.labelLogin, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Inter-Bold", size: 16)
        button.layer.cornerRadius = 25
        button.backgroundColor = .systemIndigo
        button.shadowSetting(button)
        return button
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle(Constans.String.forgotPasswordButton, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Inter-Bold", size: 16)
        button.layer.cornerRadius = 25
        button.backgroundColor = .blue
        return button
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
        view.addSubview(pasword)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
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
        
        pasword.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.bottom).offset(20)
            make.height.equalTo(50)
            make.left.equalTo (view).offset(40)
            make.right.equalTo(view).offset(-40)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(pasword.snp.bottom).offset(50)
            make.height.equalTo(50)
            make.left.equalTo (view).offset(40)
            make.right.equalTo(view).offset(-40)
        }
        
        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(20)
            make.height.equalTo(20)
            make.left.equalTo (view).offset(85)
            make.right.equalTo(view).offset(-85)
        }
    }
    
    // MARK: - Actions
}

