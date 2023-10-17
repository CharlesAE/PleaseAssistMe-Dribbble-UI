//
//  CellHeader.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import Foundation
import UIKit

class CellTitles: UICollectionReusableView {
    
    var label : UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "mainColor")
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
        configConstraints()
        //label.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configView(){
        addSubview(label)
    }
    func configConstraints(){
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 3),
            label.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 3)
        ])
    }
}
