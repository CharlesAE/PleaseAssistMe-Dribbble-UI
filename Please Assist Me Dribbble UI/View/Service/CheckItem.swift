//
//  CheckItem.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import Foundation
import UIKit


class CheckItem: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configViews()
        configConstraints()
        }
    
    let pickupLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Save $3 per Home Refresh (normally $35 per visit)"
        lb.textColor = UIColor(named: "mainColor")
        lb.numberOfLines = 2
        lb.lineBreakMode = .byWordWrapping
        lb.font = .systemFont(ofSize: 20.0, weight: .medium)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    let checkMark : UIImageView = {
        var iv = UIImageView()
        iv.image =  UIImage(systemName: "checkmark.circle.fill")
        iv.tintColor =  UIColor(named: "mainColor")
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
        
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configViews(){
        
        addSubview(checkMark)
        addSubview(pickupLabel)
    }
    func configConstraints(){
        NSLayoutConstraint.activate([
            checkMark.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 0),
            checkMark.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 0),
            pickupLabel.centerYAnchor.constraint(equalTo: checkMark.centerYAnchor),
            pickupLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: checkMark.trailingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: pickupLabel.trailingAnchor, multiplier: 0)
        ])
        
    }
}
