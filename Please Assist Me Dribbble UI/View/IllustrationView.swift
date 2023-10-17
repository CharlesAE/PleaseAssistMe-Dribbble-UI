//
//  IllustrationView.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import UIKit

class IllustrationView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(named:"grayBG")
        configViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    var title: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "mainColor")
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = .boldSystemFont(ofSize: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var subtitle: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "mainColor")
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.font = .preferredFont(forTextStyle: .body)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let titleStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 3
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var illustration: UIImageView = {
        var img = UIImageView()
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    func configViews(){
        layer.cornerRadius = 20
        addSubview(titleStackView)
        titleStackView.addArrangedSubview(title)
        titleStackView.addArrangedSubview(subtitle)
        addSubview(illustration)
    }
        
    func configConstraints(){
        NSLayoutConstraint.activate([
            titleStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 4),
            titleStackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 3),
            illustration.centerYAnchor.constraint(equalTo: titleStackView.centerYAnchor),
            bottomAnchor.constraint(equalToSystemSpacingBelow: illustration.bottomAnchor, multiplier: 0),
            trailingAnchor.constraint(equalToSystemSpacingAfter: illustration.trailingAnchor, multiplier: 0)
        ])
    }
}
