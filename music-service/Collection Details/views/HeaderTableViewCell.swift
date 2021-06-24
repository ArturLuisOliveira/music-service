//
//  HeaderTableViewCell.swift
//  music-service
//
//  Created by Artur Luis on 23/06/21.
//

import UIKit

class CollectionDetailsHeaderTableViewCell: UITableViewCell {
    @IBOutlet var coverImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var artistLabel: UILabel!
    @IBOutlet var albumInfoLabel: UILabel!
    @IBOutlet var releaseLabel: UILabel!
    var collection: MusicCollection?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        if let collection = collection {
            if let image = ColllectionDetailsController.getCollectionImage(id: collection.id) {
                coverImageView.image = image
            }
            titleLabel.text = collection.title
            artistLabel.text = "Album by \(collection.mainPerson)"
            albumInfoLabel.text = "\(collection.musics.count) songs, \(DateService.formatDuration(duration: collection.length))"
            releaseLabel.text = "Released in \(DateService.formatDate(date: collection.referenceDate))"
        }
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
