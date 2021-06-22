//
//  CollectionEditorViewController.swift
//  music-service
//
//  Created by Artur Luis on 19/06/21.
//

import UIKit
import Foundation

class CollectionEditorViewController: UIViewController {
    @IBOutlet var titleNavigationItem: UINavigationItem!
    @IBOutlet var musicsTableView: UITableView!
    @IBOutlet var albumCoverImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var albumLabel: UILabel!
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var releaseDateLabel: UILabel!
    //musicsTableViewCell
    
    
    
    var collection: MusicCollection?
    var musicsTableViewDataSource: MusicsTableViewDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleNavigationItem.title = collection?.title ?? ""
        if let titleNavigationItem = titleNavigationItem.leftBarButtonItem {
            titleNavigationItem.target = self
            titleNavigationItem.action = #selector(goToCollectionsDetails(_:))
        }
        self.musicsTableViewDataSource = MusicsTableViewDataSource(musicsTableView:self.musicsTableView, musics: self.collection?.musics ?? [])
        musicsTableView.dataSource = self.musicsTableViewDataSource
        
        
        //title navigation item
        //        titleNavigationItem.title = self.collection?.title ?? ""
        //album text
        self.titleLabel.text = self.collection?.title
        
        //album cover image
        self.albumCoverImage.image = CollectionEditorController.getAlbumImage(self.collection?.id
        )
        
        //album label
        self.albumLabel.text = "Album by \(self.collection?.mainPerson ?? "")"
        
        //count label
        self.countLabel.text = "\(self.collection?.musics.count ?? 0) Song\(self.collection?.musics.count ?? 0 > 0 ? "s": "")"
        
        //reference date
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "MMM dd,yyyy"
        if let rawDate = self.collection?.referenceDate  {
            let date = dateFormater.string(from: rawDate)
            self.releaseDateLabel.text = "Released \(date)"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "libraryToCollectionEditor", let collection = sender as? MusicCollection {
            let destination = segue.destination as! CollectionEditorViewController
            destination.collection = collection
        }
    }
    
    @IBAction func goToCollectionsDetails(_ sender: Any) {
        performSegue(withIdentifier: "ToCollectionsDetailsSegue", sender: self.collection)
    }
}
