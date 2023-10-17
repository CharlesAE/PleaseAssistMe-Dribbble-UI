//
//  ServiceSegment.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import Foundation
import UIKit

class ServiceSegment: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configViews()
        configConstraints()
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let serviceStack: UIStackView = {
        let stack = UIStackView()
        let cgColor = CGColor(srgbRed: 199/255, green: 199/255, blue: 204/255, alpha: 1)
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .equalSpacing
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.layer.borderColor = cgColor
        
        stack.layer.borderWidth = 1
        stack.layer.cornerRadius = 20
        return stack
    }()
    
    let bundleLabel: PaddingLabel = {
        let lb = PaddingLabel(withInsets: 8, 8, 12, 12)
        lb.text = "Bundle Benefits"
        lb.textColor = .white
        lb.textAlignment = .center
        lb.backgroundColor = UIColor(named: "mainColor")
        lb.layer.cornerRadius = 20
        lb.clipsToBounds = true
        lb.font = .systemFont(ofSize: 20.0, weight: .medium)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    let includeLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Include"
        lb.textColor = .systemGray2
        lb.font = .systemFont(ofSize: 20.0, weight: .medium)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
        
    let addOnLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Add-on"
        lb.textColor = .systemGray2
        lb.font = .systemFont(ofSize: 20.0, weight: .medium)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    
    
    func configViews(){
        addSubview(serviceStack)
        [bundleLabel, includeLabel, addOnLabel].forEach {
            serviceStack.addArrangedSubview($0)
        }
    }
    func configConstraints(){
        NSLayoutConstraint.activate([
            serviceStack.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 0),
            serviceStack.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 0),
            trailingAnchor.constraint(equalToSystemSpacingAfter: serviceStack.trailingAnchor, multiplier: 0),
            bottomAnchor.constraint(equalToSystemSpacingBelow: serviceStack.bottomAnchor, multiplier: 0),
            serviceStack.heightAnchor.constraint(equalToConstant: 40),
            
            bundleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: serviceStack.leadingAnchor, multiplier: 0),
            trailingAnchor.constraint(equalToSystemSpacingAfter: addOnLabel.trailingAnchor, multiplier: 2)
            
        ])
        
    }
}
