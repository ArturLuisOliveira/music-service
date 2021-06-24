//
//  CollectionDetailsViewController.swift
//  music-service
//
//  Created by Artur Luis on 21/06/21.
//

import UIKit


class CollectionDetailsViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    @IBAction func doneBarButtonItem(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    var collection: MusicCollection?
    var tableViewDataSource: UITableViewDataSource?
    
    override func viewDidLoad() {
        tableView.dataSource = self
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
}

extension CollectionDetailsViewController:UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        collection?.type == .album ? 2 : 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.section == 0 {
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "Header") as! CollectionDetailsHeaderTableViewCell
            cell.collection = self.collection
            cell.awakeFromNib()
            return cell
        } else {
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "Content") as! CollectionDetailsContentTableViewCell
            cell.collection = self.collection
            cell.awakeFromNib()
            return cell
        }
        
    }
}
