//
//  ProfileTableViewCell.swift
//  CowrywiseApp
//
//  Created by Decagon on 11.5.21.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    let profileLabel: UILabel = {
        let tv = UILabel(frame: CGRect(x: 20, y: 6, width: 120, height: 40))
        tv.textAlignment = .left
        return tv
    }()
    
    let placeHolderLabel: UILabel = {
        let tv = UILabel(frame: CGRect(x: 230, y: 6, width: 120, height: 40))
        tv.textAlignment = .right
        tv.textColor = .systemGray
        return tv
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addSubview(profileLabel)
        addSubview(placeHolderLabel)
    }
    
}
