//
//  CollectionViewController.swift
//  homework1
//
//  Created by Canberk Eker on 19.11.2022.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var itemListCollectionView: UICollectionView!
    
    private let itemDataSource = ItemDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if
            let cell = sender as? UICollectionViewCell,
            let indexPath = itemListCollectionView.indexPath(for: cell),
            let detailController = segue.destination as? DetailViewController {
            detailController.itemIdentifier = indexPath.item
        }
    }
    

}

extension CollectionViewController:UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemDataSource.getNumberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCollection", for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        if let item = itemDataSource.getItem(for: indexPath.row) {
            cell.itemImageView.image = UIImage(named: item.imageName)
        }
        
        return cell
    }
    
    
}
