//
//  DetailsView.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import Foundation
import UIKit

class ServiceDetailsView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        configViews()
        configConstraints()
        }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        roundCorners(corners: [.topLeft, .topRight], radius: 48)
    }
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        //scrollView.isScrollEnabled = true
        scrollView.alwaysBounceVertical = true
        //scrollView.delegate = self
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let scrollViewContainer: UIView = {
        let view = UIView()

        
        //view.spacing = 10

        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let titleLabel: UILabel = {
        let title = UILabel()
        title.text = "Home Refresh\nBundle"
        title.numberOfLines = 2
        title.lineBreakMode = .byWordWrapping
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = .systemFont(ofSize: 34.0, weight: .heavy)
        title.textColor = UIColor(named: "mainColor")
        return title
    }()
    
    let paragraph: UILabel = {
        let para = UILabel()
        para.numberOfLines = 0
        para.lineBreakMode = .byWordWrapping
        para.textColor = UIColor(named: "mainColor")
        para.text = "Our home refresh bundle sets your home on autopilot. Enjoy either a weekly or bi-weekly home refresh along with waived fees for any of our errand or chore services on the day of your visit."
        para.font = .systemFont(ofSize: 20.0, weight: .medium)
        para.translatesAutoresizingMaskIntoConstraints = false
        return para
    }()
    
    let pickupViewOne: PickupView = {
        let pickup = PickupView()
        pickup.translatesAutoresizingMaskIntoConstraints = false
        return pickup
    }()
    
    let pickupViewTwo: PickupView = {
        let pickup = PickupView()
        pickup.translatesAutoresizingMaskIntoConstraints = false
        return pickup
    }()
    let serviceSegment: ServiceSegment = {
        let segment = ServiceSegment()
        segment.translatesAutoresizingMaskIntoConstraints = false
        return segment
    }()
    
    let checkList: CheckItem = {
       let item = CheckItem()
        item.translatesAutoresizingMaskIntoConstraints = false
        return item
    }()
    
    
    var nextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Next", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.tintColor = .red
        btn.backgroundColor = UIColor(named: "buttonColor")
        btn.layer.cornerRadius = 25
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configViews(){
        addSubview(scrollView)
        scrollView.addSubview(scrollViewContainer)
        scrollViewContainer.addSubview(titleLabel)
        scrollViewContainer.addSubview(pickupViewOne)
        scrollViewContainer.addSubview(pickupViewTwo)
        scrollViewContainer.addSubview(paragraph)
        scrollViewContainer.addSubview(serviceSegment)
        scrollViewContainer.addSubview(checkList)
        scrollViewContainer.addSubview(nextButton)
    }
    func configConstraints(){
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 3),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),

            
            scrollViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            scrollViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            scrollViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor),
            scrollViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            scrollViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            scrollViewContainer.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
            
               
            titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: scrollViewContainer.topAnchor, multiplier: 1),
            titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: scrollViewContainer.leadingAnchor, multiplier: 3),
            
            
            pickupViewOne.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 3),
            pickupViewOne.leadingAnchor.constraint(equalToSystemSpacingAfter: scrollViewContainer.leadingAnchor, multiplier: 3),
            pickupViewOne.heightAnchor.constraint(equalToConstant: 30),
            
            
            pickupViewTwo.topAnchor.constraint(equalToSystemSpacingBelow: pickupViewOne.bottomAnchor, multiplier: 1),
            pickupViewTwo.leadingAnchor.constraint(equalToSystemSpacingAfter: scrollViewContainer.leadingAnchor, multiplier: 3),
            pickupViewTwo.heightAnchor.constraint(equalToConstant: 30),
            
            
            paragraph.topAnchor.constraint(equalToSystemSpacingBelow: pickupViewTwo.bottomAnchor, multiplier: 3),
            paragraph.leadingAnchor.constraint(equalToSystemSpacingAfter: scrollViewContainer.leadingAnchor, multiplier: 3),
            scrollViewContainer.trailingAnchor.constraint(equalToSystemSpacingAfter: paragraph.trailingAnchor, multiplier: 4),
            
            
            serviceSegment.topAnchor.constraint(equalToSystemSpacingBelow: paragraph.bottomAnchor, multiplier: 3),
            serviceSegment.leadingAnchor.constraint(equalToSystemSpacingAfter: scrollViewContainer.leadingAnchor, multiplier: 2),
            scrollViewContainer.trailingAnchor.constraint(equalToSystemSpacingAfter: serviceSegment.trailingAnchor, multiplier: 2),
            
            
            checkList.topAnchor.constraint(equalToSystemSpacingBelow: serviceSegment.bottomAnchor, multiplier: 4),
            checkList.leadingAnchor.constraint(equalToSystemSpacingAfter: scrollViewContainer.leadingAnchor, multiplier: 3),
            checkList.heightAnchor.constraint(equalToConstant: 40),
            scrollViewContainer.trailingAnchor.constraint(equalToSystemSpacingAfter: checkList.trailingAnchor, multiplier: 1),
            
            
            nextButton.topAnchor.constraint(equalToSystemSpacingBelow: checkList.bottomAnchor, multiplier: 2),
            nextButton.leadingAnchor.constraint(equalToSystemSpacingAfter: scrollViewContainer.leadingAnchor, multiplier: 3),
            scrollViewContainer.trailingAnchor.constraint(equalToSystemSpacingAfter: nextButton.trailingAnchor, multiplier: 3),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            
            
        ])
        
    }
}
extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
