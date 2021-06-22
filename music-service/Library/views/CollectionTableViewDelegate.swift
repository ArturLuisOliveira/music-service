//
//  CollectionTableViewDelegate.swift
//  music-service
//
//  Created by Artur Luis on 19/06/21.
//

import UIKit

class CollectionTableViewDelegate: NSObject, UITableViewDelegate {
    var view: UIViewController
    var collections: [MusicCollection]
    init(view: UIViewController, collections: [MusicCollection]){
        self.view = view
        self.collections = collections
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let collection = self.collections[indexPath.row]
        self.view.performSegue(withIdentifier: "libraryToCollectionEditor", sender: collection)
    }
}
