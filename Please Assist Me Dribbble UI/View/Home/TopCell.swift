//
//  TopCell.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import UIKit

class TopCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        configViews()
        configConstraints()
        configData()
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var topIllustration: IllustrationView = {
        let top = IllustrationView()
        top.translatesAutoresizingMaskIntoConstraints = false
        return top
    }()
    
    func configViews(){
        addSubview(topIllustration)
        
        
    }
    func configConstraints(){
        NSLayoutConstraint.activate([
            topIllustration.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 0),
            
            topIllustration.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            trailingAnchor.constraint(equalToSystemSpacingAfter: topIllustration.trailingAnchor, multiplier: 2),
        ])
        
    }
    
    func configData(){
        topIllustration.title.text = "September\nBundle Special"
        topIllustration.subtitle.text = "Get $10 off your\nfirst bundle visit"
        topIllustration.illustration.image = UIImage(named: "cleaning")
    }
}
