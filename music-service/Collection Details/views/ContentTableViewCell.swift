//
//  ContentTableViewCell.swift
//  music-service
//
//  Created by Artur Luis on 23/06/21.
//

import UIKit

class CollectionDetailsContentTableViewCell: UITableViewCell {

    @IBOutlet var artistLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var collection: MusicCollection?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        if let artist = collection?.mainPerson, let description = collection?.albumArtistDescription {
            artistLabel.text = artist
            descriptionLabel.text = description
        }
    }
}
