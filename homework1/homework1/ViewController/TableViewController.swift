//
//  TableViewController.swift
//  homework1
//
//  Created by Canberk Eker on 19.11.2022.
//

import UIKit

class TableViewController: UIViewController {
    @IBOutlet weak var itemListTableView: UITableView!
    
    private let itemDataSource = ItemDataSource()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Items"

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let cell = sender as? UITableViewCell,
           let indexPath = itemListTableView.indexPath(for: cell),
           let detailController = segue.destination as? DetailViewController {
            detailController.itemIdentifier = indexPath.row
        }
    }
    

}

extension TableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemDataSource.getNumberOfItems()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as? TableViewCell else {
            return UITableViewCell()
        }
        if let item = itemDataSource.getItem(for: indexPath.row) {
            cell.itemImageView.image = UIImage(named: item.imageName)
            cell.itemNameLabel.text = item.name
        }
        
        return cell
    }
    
   
    
}
