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
    
    private lazy var userNameTF: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.textAlignment = .left
        textField.placeholder = "Your name"
        textField.font = UIFont(name: "Inter-Regular", size: 14)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 25
        textField.setLeftIcon(UIImage(systemName: "person")!)
        textField.setRightIcon(UIImage(systemName: "checkmark.circle.fill")!)
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
        view.addSubview(userNameTF)
    }
    
    private func setupLayout() {
        
        labelLogin.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view).offset(100)
        }
        
        userNameTF.snp.makeConstraints { make in
            make.top.equalTo(labelLogin.snp.bottom).offset (50)
            make.height.equalTo(50)
            make.left.equalTo (view).offset(40)
            make.right.equalTo(view).offset(-40)
        }
    }
    
    // MARK: - Actions
}

extension UITextField {
    
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 40, y: 5, width: 20, height: 20))
        iconView.image = image
        iconView.tintColor = .systemGray2
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 80, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 40, y: 5, width: 20, height: 20))
        iconView.image = image
        iconView.tintColor = .systemGreen
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 80, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
    
}
