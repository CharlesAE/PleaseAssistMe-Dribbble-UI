//
//  MainTabController.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import Foundation
import UIKit

class MainTabController: UITabBarController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configViews()
        configTabBar()
        configConstraints()
        
    }
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    let searchIcon: UIButton = {
        var button = UIButton()
        let config = UIImage.SymbolConfiguration(pointSize: 20, weight: .light, scale: .large)
        let image = UIImage(systemName: "magnifyingglass", withConfiguration: config)
        button.setImage(image, for: .normal)
        button.tintColor = UIColor(named: "mainColor")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let notificationButton: UIButton = {
        var button = UIButton()
        let config = UIImage.SymbolConfiguration(pointSize: 20, weight: .light, scale: .large)
        let image = UIImage(systemName: "bell.badge", withConfiguration: config)
        button.setImage(image, for: .normal)
        button.tintColor = UIColor(named: "mainColor")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    
    let homeBtn: UIButton = {
        var btn = UIButton()
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .light, scale: .large)
        let image = UIImage(systemName: "house.fill", withConfiguration: config)
        btn.setImage(image, for: .normal)
        
        btn.tintColor = UIColor(named: "mainColor")
        btn.layer.cornerRadius = 20
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    let bagBtn : UIButton = {
        var btn = UIButton()
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .light, scale: .large)
        let image = UIImage(systemName: "note.text", withConfiguration: config)
        btn.setImage(image, for: .normal)
        btn.backgroundColor = .clear
        btn.tintColor = .gray
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let heartBtn : UIButton = {
        let btn = UIButton()
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .light, scale: .large)
        let image = UIImage(systemName: "message.badge", withConfiguration: config)
        btn.setImage(image, for: .normal)
        btn.backgroundColor = .clear
        btn.tintColor = .gray
        btn.translatesAutoresizingMaskIntoConstraints = false
            return btn
        }()
    
    let userBtn : UIButton = {
        let btn = UIButton()
        let config = UIImage.SymbolConfiguration(pointSize: 16, weight: .light, scale: .large)
        let image = UIImage(systemName: "person", withConfiguration: config)
        btn.setImage(image, for: .normal)
        btn.backgroundColor = .clear
        btn.tintColor = .gray
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
        }()
    
    let buttonStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        return stackView
    }()

    func configViews(){
        view.addSubview(topView)
        topView.addSubview(searchIcon)
        topView.addSubview(notificationButton)
        
        
    }
    func configTabBar(){
        
        viewControllers = [HomeController()]
        
        tabBar.barTintColor = .white
        tabBar.addSubview(buttonStackView)
        [homeBtn, bagBtn,heartBtn,userBtn].forEach {
            buttonStackView.addArrangedSubview($0)
        }
        
    }
    func configConstraints(){
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 0),
            topView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.safeAreaLayoutGuide.leadingAnchor, multiplier: 0),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: topView.trailingAnchor, multiplier: 0),
            
            notificationButton.topAnchor.constraint(equalToSystemSpacingBelow: topView.topAnchor, multiplier: 0),
            notificationButton.leadingAnchor.constraint(equalToSystemSpacingAfter: searchIcon.trailingAnchor, multiplier: 2),
            searchIcon.centerYAnchor.constraint(equalTo: notificationButton.centerYAnchor),
            topView.trailingAnchor.constraint(equalToSystemSpacingAfter: notificationButton.trailingAnchor, multiplier: 3),
            topView.bottomAnchor.constraint(equalToSystemSpacingBelow: notificationButton.bottomAnchor, multiplier: 1),
            
        
            buttonStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 6),
            
            
            homeBtn.widthAnchor.constraint(equalToConstant: 40),
            homeBtn.heightAnchor.constraint(equalToConstant: 40),
            
            
            bagBtn.widthAnchor.constraint(equalToConstant: 40),
            bagBtn.heightAnchor.constraint(equalToConstant: 40),
            
            
            heartBtn.widthAnchor.constraint(equalToConstant: 40),
            heartBtn.heightAnchor.constraint(equalToConstant: 40),
            userBtn.widthAnchor.constraint(equalToConstant: 40),
            userBtn.heightAnchor.constraint(equalToConstant: 40),
            
            
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: buttonStackView.trailingAnchor, multiplier: 6)
            
        ])
       
    }
    
}

