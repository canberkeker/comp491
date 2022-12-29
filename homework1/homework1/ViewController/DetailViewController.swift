//
//  DetailViewController.swift
//  homework1
//
//  Created by Canberk Eker on 19.11.2022.
//

import UIKit

class DetailViewController: UIViewController {

  
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    
    var itemIdentifier: Int?
    let itemDataSource = ItemDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if
            let itemIdentifier = itemIdentifier,
            let item = itemDataSource.getItem(for: itemIdentifier) {
            itemImageView.image = UIImage(named: item.imageName)
            itemNameLabel.text = item.name
            self.title = item.name
        } else {
            itemImageView.image = nil
            itemNameLabel.text = "Not Found"
            self.title = "Item Not Found"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
