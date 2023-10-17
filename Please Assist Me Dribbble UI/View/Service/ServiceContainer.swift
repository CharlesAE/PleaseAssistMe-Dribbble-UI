//
//  ServicesContainer.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import UIKit

class ServiceContainer: UIView {

    var iconName: String? {
                didSet{
                    configData()
                }
            }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        configViews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var bodyLabel:UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textColor = UIColor(named: "mainColor")
        label.font = .preferredFont(forTextStyle: .headline)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var icon : UIImageView = {
        var iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    
    func configViews(){
        layer.cornerRadius = 20
        addSubview(bodyLabel)
        addSubview(icon)
        
            }
    func configConstraints(){
        NSLayoutConstraint.activate([
            
            bodyLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 4),
            bodyLabel.trailingAnchor.constraint(equalToSystemSpacingAfter: icon.leadingAnchor, multiplier: 4),
            bottomAnchor.constraint(equalToSystemSpacingBelow: bodyLabel.bottomAnchor, multiplier: 3),
            
            
            
            icon.heightAnchor.constraint(equalToConstant: 28),
            icon.widthAnchor.constraint(equalToConstant: 28),
            icon.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 3),
            icon.leadingAnchor.constraint(equalToSystemSpacingAfter: bodyLabel.trailingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: icon.trailingAnchor, multiplier: 3),
            
            
        ])
            }
    func configData(){
        guard let iconName = iconName else {return}
        icon.image = UIImage(systemName: iconName)?.withRenderingMode(.alwaysTemplate)
    }
    
}
