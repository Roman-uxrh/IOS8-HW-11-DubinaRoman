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
    
    private lazy var pasword: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .left
        textField.placeholder = "Password"
        textField.font = UIFont(name: "Inter-Regular", size: 14)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.setLeftIcon(UIImage(systemName: "lock"))
        textField.shadowSetting(textField)
        return textField
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Inter-Bold", size: 14)
        button.layer.cornerRadius = 25
        button.backgroundColor = .systemIndigo
        button.shadowSetting(button)
        return button
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Inter-Bold", size: 14)
        button.layer.cornerRadius = 25
        button.backgroundColor = UIColor(red: 0.7, green: 0.8, blue: 1, alpha: 1)
        return button
    }()
    
    private lazy var labelConnect: UILabel = {
        let labelLogin = UILabel()
        labelLogin.text = "or connect with"
        labelLogin.textColor = .white
        labelLogin.font = UIFont.boldSystemFont(ofSize: 14)
        labelLogin.textAlignment = .center
        return labelLogin
    }()
    
    private lazy var stripeLeftView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 25
        return view
    }()
    
    private lazy var stripeRightView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 25
        return view
    }()
    
    private lazy var faceBookButton: UIButton = {
        let button = UIButton()
        button.setTitle("FaceBook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Inter-Bold", size: 14)
        button.layer.cornerRadius = 15
        button.backgroundColor = .systemBlue
        button.shadowSetting(button)
        return button
    }()
    
    private lazy var faceBookImage: UIImageView = {
        let image = UIImage(named: "images")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Inter-Bold", size: 14)
        button.layer.cornerRadius = 15
        button.backgroundColor = .blue
        button.shadowSetting(button)
        return button
    }()
    
    private lazy var twitterImage: UIImageView = {
        let image = UIImage(named: "twitter")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var labelAccount: UILabel = {
        let labelLogin = UILabel()
        labelLogin.text = "Dont have account?"
        labelLogin.textColor = .white
        labelLogin.font = UIFont.boldSystemFont(ofSize: 14)
        labelLogin.textAlignment = .center
        return labelLogin
    }()
    
    private lazy var signButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = UIFont(name: "Inter-Bold", size: 14)
        button.layer.cornerRadius = 25
        button.backgroundColor = UIColor(red: 0.7, green: 0.8, blue: 1, alpha: 1)
        return button
    }()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
        addTapGestureToHideKeyboard()
    }
    
    // MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = UIColor(red: 0.7, green: 0.8, blue: 1, alpha: 1)
    }
    
    private func setupHierarchy() {
        [labelLogin, userName, pasword, loginButton, forgotPasswordButton, labelConnect, stripeLeftView, stripeRightView, faceBookButton, faceBookImage, twitterButton, twitterImage, labelAccount, signButton].forEach { view.addSubview($0) }
    }
    
    func addTapGestureToHideKeyboard() {
           let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
           view.addGestureRecognizer(tapGesture)
       }
    
    private func setupLayout() {
        
        labelLogin.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view).offset(60)
        }
        
        userName.snp.makeConstraints { make in
            make.top.equalTo(labelLogin.snp.bottom).offset (40)
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
        
        labelConnect.snp.makeConstraints { make in
            make.bottom.equalTo(view).offset(-140)
            make.centerX.equalTo(view)
        }
        
        stripeLeftView.snp.makeConstraints { make in
            make.right.equalTo(labelConnect.snp.left).offset(-7)
            make.bottom.equalTo(view).offset(-147)
            make.height.equalTo(1)
            make.width.equalTo(150)
        }
        
        stripeRightView.snp.makeConstraints { make in
            make.left.equalTo(labelConnect.snp.right).offset(7)
            make.bottom.equalTo(view).offset(-147)
            make.height.equalTo(1)
            make.width.equalTo(150)
        }
        
        faceBookButton.snp.makeConstraints { make in
            make.top.equalTo(labelConnect.snp.bottom).offset(20)
            make.height.equalTo(30)
            make.left.equalTo (view).offset(20)
            make.centerX.equalTo(view).offset(-100)
        }
        
        faceBookImage.snp.makeConstraints { make in
            make.top.equalTo(stripeLeftView.snp.bottom).offset(35)
            make.height.equalTo(15)
            make.width.equalTo(15)
            make.left.equalTo(faceBookButton.snp.left).offset(10)
        }
        
        twitterButton.snp.makeConstraints { make in
            make.top.equalTo(labelConnect.snp.bottom).offset(20)
            make.height.equalTo(30)
            make.centerX.equalTo(view).offset(100)
            make.right.equalTo(view).offset(-20)
        }
        
        twitterImage.snp.makeConstraints { make in
            make.top.equalTo(stripeRightView.snp.bottom).offset(35)
            make.height.equalTo(15)
            make.width.equalTo(15)
            make.left.equalTo(twitterButton.snp.left).offset(10)
        }
        
        labelAccount.snp.makeConstraints { make in
            make.top.equalTo(faceBookButton.snp.bottom).offset(10)
            make.centerX.equalTo(view).offset(-15)
        }
        
        signButton.snp.makeConstraints { make in
            make.top.equalTo(faceBookButton.snp.bottom).offset(10)
            make.left.equalTo(labelAccount.snp.right).offset(5)
            make.height.equalTo(10)
        }
    }
}

