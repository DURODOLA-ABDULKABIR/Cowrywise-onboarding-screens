//
//  HeaderView.swift
//  CowrywiseApp
//
//  Created by Decagon on 11.5.21.
//

import UIKit

class TableHeader: UITableViewHeaderFooterView{
    static let identifier = "TableHeader"
    private let segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl (items: ["Personal","Security","Behaviour"])
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.tintColor = #colorLiteral(red: 0, green: 0.4058344364, blue: 0.9598671794, alpha: 1)
        segmentedControl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return segmentedControl
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "image1")
        imageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        return imageView
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        segmentedControl.anchorWithConstantsToTop(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 20, leftConstant: 20, bottomConstant: 0, rightConstant: 20)
        imageView.anchorWithConstantsToTop(top: segmentedControl.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 50, leftConstant: 20, bottomConstant: 0, rightConstant: 20)
        segmentedControl.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    
    override init(reuseIdentifier: String?){
        super.init(reuseIdentifier: reuseIdentifier)
        contentView.addSubview(segmentedControl)
        contentView.addSubview(imageView)
        contentView.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

