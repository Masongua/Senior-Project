//
//  CreateNewDeckCollectionViewCell.swift
//  Senior Project
//
//  Created by 11k on 12/6/22.
//

import UIKit

class CreateNewDeckCollectionViewCell: UICollectionViewCell {
    
    static let idenitifier = "CreateNewDeckCollectionViewCell"
    
    @IBOutlet var key:UITextView!
    @IBOutlet var chain:UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static func nib()->UINib{
        return UINib(nibName: idenitifier, bundle: nil)
    }
    
    
}
