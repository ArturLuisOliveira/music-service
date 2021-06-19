//
//  CollectionsTableViewDataSource.swift
//  music-service
//
//  Created by Artur Luis on 19/06/21.
//

import Foundation
import UIKit


class CollectionTableViewDataSource: NSObject,UITableViewDataSource {
    var collections: [MusicCollection]
    var CollectionsTableView: UITableView
    
    init(outlet:UITableView, collections: [MusicCollection]){
        self.CollectionsTableView = outlet
        self.collections = collections
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        collections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CollectionsTableView.dequeueReusableCell(withIdentifier: "CollectionCellIdentifier", for: indexPath)
        let collection = self.collections[indexPath.row]
        
        cell.imageView?.image = LibraryController.findCollectionCover(id: collection.id)
        cell.textLabel?.text = collection.title
        cell.detailTextLabel?.text = "\(collection.type.rawValue) - \(collection.mainPerson)"
        
        return cell
    }
    
    
}
