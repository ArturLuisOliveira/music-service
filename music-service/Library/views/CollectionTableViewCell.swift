//
//  CollectionTableViewCell.swift
//  music-service
//
//  Created by Artur Luis on 24/06/21.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var collectionImageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    
    var collection: MusicCollection?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if let collection = collection {
            collectionImageView.image = LibraryController.findCollectionCover(id: collection.id)
            titleLabel.text = collection.title
            descriptionLabel.text = "\(collection.type.rawValue) - \(collection.mainPerson)"
            
        }
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
