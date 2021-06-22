//
//  LibraryViewController.swift
//  music-service
//
//  Created by Artur Luis on 19/06/21.
//

import UIKit

class LibraryViewController: UIViewController {
    @IBOutlet var CollectionsTableView: UITableView!
    
    var collections: [MusicCollection] = LibraryController.listCollections()
    var collectionDataSource: CollectionTableViewDataSource?
    var collectionsDelegate: CollectionTableViewDelegate?
    
    //CollectionCellIdentifier
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionsDelegate = CollectionTableViewDelegate(view: self, collections: collections)
        self.collectionDataSource = CollectionTableViewDataSource(outlet: CollectionsTableView, collections: collections)
        CollectionsTableView.dataSource = self.collectionDataSource
        CollectionsTableView.delegate = self.collectionsDelegate
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "libraryToCollectionEditor", let collection = sender as? MusicCollection {
            let destination = segue.destination as! CollectionEditorViewController
            destination.collection = collection
        }
    }
}
