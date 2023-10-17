//
//  ServicesCell.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import Foundation
import UIKit

class ServicesCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configViews()
        configConstraints()
        
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var topServices: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillProportionally
        stack.axis = .horizontal
        stack.spacing = 12
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    var bottomServices: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillProportionally
        stack.axis = .horizontal
        stack.spacing = 12
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    var servicesView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let cleaningService: ServiceContainer = {
        let service = ServiceContainer()
        service.bodyLabel.text = "Cleaning\nServices \n& Bundles"
        service.backgroundColor = UIColor(named:"greenBG")
        service.icon.tintColor = UIColor(named:"greenColor")?.resolvedColor(with: UITraitCollection(userInterfaceStyle: .dark))
        service.iconName = "lamp.desk"
        return service
    }()
    
    let errandsService: ServiceContainer = {
        let service = ServiceContainer()
        service.bodyLabel.text = "Errands\n& Chores"
        service.backgroundColor = UIColor(named:"orangeBG")
        service.icon.tintColor = UIColor(named:"orangeColor")?.resolvedColor(with: UITraitCollection(userInterfaceStyle: .dark))
        service.iconName = "bag"
        return service
    }()
    
    let requestsService: ServiceContainer = {
        let service = ServiceContainer()
        service.bodyLabel.text = "Special\nRequests"
        service.iconName = "bell"
        service.backgroundColor = UIColor(named:"yellowBG")
        service.icon.tintColor = UIColor(named:"yellowColor")?.resolvedColor(with: UITraitCollection(userInterfaceStyle: .dark))
        return service
    }()
    
    let partnerService: ServiceContainer = {
        let service = ServiceContainer()
        service.bodyLabel.text = "Partner\nServices"
        service.iconName = "person.2"
        service.backgroundColor = UIColor(named:"grayBG")
        service.icon.tintColor = UIColor(named:"grayColor")?.resolvedColor(with: UITraitCollection(userInterfaceStyle: .dark))
        return service
    }()
    
    func configViews(){
        /*addSubview(servicesView)
        [cleaningService, errandsService, requestsService, partnerService].forEach { servicesView.addSubview($0)
        }*/
        addSubview(topServices)
        addSubview(bottomServices)
        [cleaningService, errandsService]
            .forEach { topServices.addArrangedSubview($0)
            }
        
        [requestsService, partnerService]
            .forEach { bottomServices.addArrangedSubview($0)
            }
    }
    func configConstraints(){
        
        NSLayoutConstraint.activate([
            topServices.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 0),
            topServices.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            trailingAnchor.constraint(equalToSystemSpacingAfter: topServices.trailingAnchor, multiplier: 2),
        
            bottomServices.topAnchor.constraint(equalToSystemSpacingBelow: topServices.bottomAnchor, multiplier: 2),
            bottomServices.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            trailingAnchor.constraint(equalToSystemSpacingAfter: bottomServices.trailingAnchor, multiplier: 2),
            
            
            cleaningService.leadingAnchor.constraint(equalToSystemSpacingAfter: topServices.leadingAnchor, multiplier: 0),
            cleaningService.heightAnchor.constraint(equalToConstant: 130),
            
            errandsService.heightAnchor.constraint(equalToConstant: 130),
            errandsService.centerYAnchor.constraint(equalTo: topServices.centerYAnchor),
            topServices.trailingAnchor.constraint(equalToSystemSpacingAfter: errandsService.trailingAnchor, multiplier: 0),
            
            
            requestsService.leadingAnchor.constraint(equalToSystemSpacingAfter: bottomServices.leadingAnchor, multiplier: 0),
            requestsService.heightAnchor.constraint(equalToConstant: 130),
            
            
            partnerService.heightAnchor.constraint(equalToConstant: 130),
            partnerService.centerYAnchor.constraint(equalTo: requestsService.centerYAnchor),
            bottomServices.trailingAnchor.constraint(equalToSystemSpacingAfter: partnerService.trailingAnchor, multiplier: 0)
        
            
        ])
        
    }
}
