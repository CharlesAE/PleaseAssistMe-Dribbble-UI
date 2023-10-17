//
//  RecommendationsCell.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import Foundation
import UIKit

class RecommendationsCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        configViews()
        configConstraints()
    }
    
    var recommendations: Illustration? {
                didSet{
                    configData()
                }
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
        guard let recommendation = recommendations else { return }
        topIllustration.title.text = recommendation.title
        topIllustration.subtitle.text = recommendation.subtitle
        topIllustration.illustration.image = UIImage(named: recommendation.image)?.withRenderingMode(.alwaysOriginal)
        }
    
}
