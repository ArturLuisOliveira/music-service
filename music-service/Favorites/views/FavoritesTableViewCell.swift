//
//  FavoritesTableViewCell.swift
//  music-service
//
//  Created by Giovani Nícolas Bettoni on 21/06/21.
//

import UIKit

class FavoritesTableViewCell: UITableViewCell {

    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    private var controller: FavoritesController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        controller = FavoritesController()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    @IBAction func toggleFavorite(_ sender: Any) {
        print("Remover dos favoritos")
    }
    
}

