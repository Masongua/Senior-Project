//
//  HomeViewController.swift
//  Senior Project
//
//  Created by 11k on 12/1/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var noteSetCollectionView: UICollectionView!
    
    @IBOutlet weak var createNewCellButton: UIButton!
    
    private var numOfSets = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 300, height: 200)
        noteSetCollectionView.collectionViewLayout = layout
        
        // Set the scroll direction to horizontal
        let layout1 = noteSetCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout1.scrollDirection = .horizontal
        
        //paging enabled & centering
        noteSetCollectionView.isPagingEnabled = true
        layout1.sectionInset = UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 50)
        
        //setting stuff
        noteSetCollectionView.register(HomeNotesCollectionViewCell.nib(), forCellWithReuseIdentifier: HomeNotesCollectionViewCell.identifer)
        noteSetCollectionView.delegate = self
        noteSetCollectionView.dataSource = self
    }

    @IBAction func createNewCellButton(_ sender: Any) {
        print("Ok")
        
    }
    
}

extension HomeViewController:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        performSegue(withIdentifier: "ok", sender: nil)
    }
}

extension HomeViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numOfSets
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeNotesCollectionViewCell.identifer, for: indexPath) as! HomeNotesCollectionViewCell
        
        cell.configure(with: "k ", with: "By: G")
        
        return cell
    }
    
    
}
extension HomeViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 50
    
    }
    
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 200)
    }
    
    
}
