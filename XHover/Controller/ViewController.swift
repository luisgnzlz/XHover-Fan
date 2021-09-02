//
//  ViewController.swift
//  XHover
//
//  Created by Luis Gonzalez on 6/10/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let layoutProducts = UICollectionViewFlowLayout()
    let productPage = ProductInfoViewController()
    var collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout.init())
    let logoImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setUpView()
    }
    
    func setUpView() {
        
        logoImage.image = UIImage(named: "logo")
        logoImage.contentMode = .scaleAspectFit
        
        layoutProducts.itemSize = CGSize(width: (view.frame.width-22)/2, height: view.frame.height/5)
        layoutProducts.minimumLineSpacing = 1
        layoutProducts.minimumInteritemSpacing = 1
        
        self.collectionView = UICollectionView(frame: .zero, collectionViewLayout: layoutProducts)
        self.collectionView.isScrollEnabled = true
        self.collectionView.backgroundColor = .clear
        self.collectionView.register(ProductsCollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        self.collectionView.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier)
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        view.addConstrainedSubviews(collectionView, logoImage)

        NSLayoutConstraint.activate([
            
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            logoImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2),
            logoImage.heightAnchor.constraint(equalToConstant: 50),
           
            collectionView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 10),
            collectionView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            collectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                          
            ])
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! ProductsCollectionViewCell
        
        if indexPath.section == 0 {
            collectionCell.TopItemPicture.image = UIImage(named: "frame\(indexPath.row+1)")
            collectionCell.itemInfo.text = "\(topSellerList[indexPath.row])"
        }
        
        return collectionCell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.identifier, for: indexPath) as! HeaderCollectionReusableView
        
        header.configure()
        
        if indexPath.section == 1 {
            header.headerLabel.text = "  New Products"
        }
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: (view.frame.width)/2, height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCell = collectionView.cellForItem(at: indexPath) as! ProductsCollectionViewCell
        productPage.info.image.image = selectedCell.TopItemPicture.image
        productPage.info.topLabel.text = selectedCell.itemInfo.text
        productPage.info.prodLabel.text = "\(discriptionList[indexPath.row])\n\n\nIncludes:\n\(includeList[0])"
        present(productPage, animated: true, completion: nil)
    }

}

