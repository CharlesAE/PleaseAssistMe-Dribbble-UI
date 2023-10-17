//
//  pickupView.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import Foundation
import UIKit

class PickupView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configViews()
        configConstraints()
        }
    
    let pickupLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Pam pickup window"
        lb.textColor = .systemGray2
        lb.font = .systemFont(ofSize: 20.0, weight: .medium)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    let clockImage : UIImageView = {
        var iv = UIImageView()
        iv.image =  UIImage(systemName: "clock.fill")
        iv.tintColor =  .systemGray2
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
        
    let timeLabel: UILabel = {
        let lb = UILabel()
        lb.text = "9 AM - 5 PM"
        lb.textColor = UIColor(named: "mainColor")
        lb.font = .systemFont(ofSize: 20.0, weight: .medium)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configViews(){
        addSubview(pickupLabel)
        addSubview(clockImage)
        addSubview(timeLabel)
    }
    func configConstraints(){
        NSLayoutConstraint.activate([
            clockImage.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 0),
            clockImage.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 0),
            pickupLabel.centerYAnchor.constraint(equalTo: clockImage.centerYAnchor),
            pickupLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: clockImage.trailingAnchor, multiplier: 1),
            timeLabel.centerYAnchor.constraint(equalTo: clockImage.centerYAnchor),
            timeLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: pickupLabel.trailingAnchor, multiplier: 1)
        ])
        
    }
}
