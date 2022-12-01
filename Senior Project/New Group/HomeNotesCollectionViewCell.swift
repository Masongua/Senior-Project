//
//  HomeNotesCollectionViewCell.swift
//  Senior Project
//
//  Created by 11k on 12/5/22.
//

import UIKit

class HomeNotesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var setLabelName: UILabel!
    @IBOutlet var userLabelName: UILabel!
    
    static let identifer = "HomeNotesCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    public func configure(with label:String, with user:String){
        setLabelName.text = label
        userLabelName.text = user
    }
    
    static func nib()->UINib{
        return UINib(nibName: identifer, bundle: nil)
    }
}
