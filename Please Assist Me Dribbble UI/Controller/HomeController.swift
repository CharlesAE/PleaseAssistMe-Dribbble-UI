//
//  MainController.swift
//  Please Assist Me Dribbble UI
//
//  Created by Charles Edwards on 10/17/23.
//

import UIKit

class HomeController: UICollectionViewController {
    
    let cellTitles = "CellTitles"
    let topCell = "TopCell"
    let servicesCell = "ServicesCell"
    let recommendationsCell = "RecommendationsCell"
    let recommendations = Illustration.recommendations
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(CellTitles.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: cellTitles)
        
        collectionView.register(TopCell.self, forCellWithReuseIdentifier: topCell)
        collectionView.register(ServicesCell.self, forCellWithReuseIdentifier: servicesCell)
        collectionView.register(RecommendationsCell.self, forCellWithReuseIdentifier: recommendationsCell)
        
        
    }
    init() {
        let layout = UICollectionViewCompositionalLayout {
            (sectionNumber, _) -> NSCollectionLayoutSection? in
            if sectionNumber == 0 {
                return Layouts.shared.headerSection()
            }
            else if sectionNumber == 1 {
                return Layouts.shared.servicesSection()
            }
            else {
                return Layouts.shared.recommendationsSection()
            }
        }
        super.init(collectionViewLayout: layout)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: cellTitles, for: indexPath) as! CellTitles
        var title: String?
        if indexPath.section == 1 {
            title = "Services"
        } else if indexPath.section == 2 {
            title = "Recommended"
        }
        header.label.text = title
        return header
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let service = ServiceDetailController()
        if indexPath.section == 0 {
            navigationController?.pushViewController(service, animated: true)
        }
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        3
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else if section == 1 {
            return 1
        }
        else {
            return 2
        }
    }
        
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: topCell, for: indexPath) as! TopCell
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: servicesCell, for: indexPath) as! ServicesCell
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: recommendationsCell, for: indexPath) as! RecommendationsCell
            cell.recommendations = recommendations[indexPath.row]
                return cell
         }
    }
}
