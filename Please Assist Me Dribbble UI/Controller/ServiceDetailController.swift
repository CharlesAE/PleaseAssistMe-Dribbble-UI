//
//  ServiceDetailController.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import Foundation
import UIKit

class ServiceDetailController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "grayBG")
        configViews()
        configConstraints()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
   }

   override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.isNavigationBarHidden = true
   }
    
    let cleanerImage : UIImageView = {
        var img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "bundle")
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    let backButton: UIButton = {
        var button = UIButton()
        let image = UIImage(systemName: "chevron.backward")
        button.setImage(image, for: .normal)
        button.backgroundColor = .white
        button.tintColor = UIColor(named: "mainColor")
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(handleBack), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let messageButton: UIButton = {
        var button = UIButton()
        let image = UIImage(systemName: "message")
        button.setImage(image, for: .normal)
        button.backgroundColor = .white
        button.tintColor = UIColor(named: "mainColor")
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let detailsView: ServiceDetailsView = {
       let view = ServiceDetailsView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    @objc func handleBack(){
    DispatchQueue.main.async {
                self.navigationController?.popViewController(animated: true)
    }
    }
    
    func configViews() {
        view.addSubview(backButton)
        view.addSubview(messageButton)
        view.addSubview(cleanerImage)
        view.addSubview(detailsView)
        
    }
    func configConstraints(){
        NSLayoutConstraint.activate([
            
             backButton.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 3),
            backButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 3),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            backButton.widthAnchor.constraint(equalToConstant: 40),
            messageButton.heightAnchor.constraint(equalToConstant: 40),
            messageButton.widthAnchor.constraint(equalToConstant: 40),
            messageButton.centerYAnchor.constraint(equalTo: backButton.centerYAnchor),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: messageButton.trailingAnchor, multiplier: 3),
            
            cleanerImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cleanerImage.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 2),
            
            
            detailsView.topAnchor.constraint(equalToSystemSpacingBelow: cleanerImage.bottomAnchor, multiplier: 0),
            detailsView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 0),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: detailsView.trailingAnchor, multiplier: 0),
            view.bottomAnchor.constraint(equalToSystemSpacingBelow: detailsView.bottomAnchor, multiplier: 0),
            
             
            
            
        
        ])
    }
}


