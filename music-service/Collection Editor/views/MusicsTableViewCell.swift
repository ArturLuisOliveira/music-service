//
//  MusicsTableViewCell.swift
//  music-service
//
//  Created by Artur Luis on 21/06/21.
//

import UIKit


class MusicsTableViewCell: UITableViewCell {
    
    
    @IBOutlet var favoriteButton: UIButton!
    @IBOutlet var musicTitleLabel: UILabel!
    @IBOutlet var coverImageView: UIImageView!
    @IBOutlet var musicArtistLabel: UILabel!
    
    var music: Music?
    var isFavorite: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.contentView.isUserInteractionEnabled = true
        self.bringSubviewToFront(self.favoriteButton)
        self.isFavorite = CollectionEditorController.isFavorite(music: music)
        coverImageView.image = CollectionEditorController.getAlbumImage(music?.id)
        musicTitleLabel.text = music?.title
        musicArtistLabel.text = music?.artist
    }
    
    @IBAction func toggleFavorite(_ sender: UIButton) {
        CollectionEditorController.toggleFavorite(music: self.music) {
            isFavorite in self.isFavorite = isFavorite
        }
    }
   

}
