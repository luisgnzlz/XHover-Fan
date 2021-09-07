//
//  UserInfoViewController.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/2/21.
//

import UIKit

class UserInfoViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let layoutProducts = UICollectionViewFlowLayout()
    var collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout.init())
    
    let userView = UserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        constrain()
    }
    
    func constrain() {
        layoutProducts.itemSize = CGSize(width: (view.frame.width), height: view.frame.height/5)
        layoutProducts.minimumLineSpacing = 1
        layoutProducts.minimumInteritemSpacing = 1
        
        self.collectionView = UICollectionView(frame: .zero, collectionViewLayout: layoutProducts)
        self.collectionView.isScrollEnabled = true
        self.collectionView.backgroundColor = .white
        self.collectionView.register(RecentlyPurchasedCollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        self.collectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier)
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        view.addConstrainedSubviews(userView, collectionView)
        
        NSLayoutConstraint.activate([
        
            userView.topAnchor.constraint(equalTo: view.topAnchor),
            userView.heightAnchor.constraint(equalToConstant: 500),
            userView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            collectionView.topAnchor.constraint(equalTo: userView.bottomAnchor, constant: 10),
            collectionView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20),
            collectionView.heightAnchor.constraint(equalToConstant: 200),
            collectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! RecentlyPurchasedCollectionViewCell
        
            collectionCell.TopItemPicture.image = UIImage(named: "frame\(indexPath.row+1)")
            collectionCell.itemInfo.text = "\(topSellerList[indexPath.row])"
        
        return collectionCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: (view.frame.width), height: 40)
    }
    
}
