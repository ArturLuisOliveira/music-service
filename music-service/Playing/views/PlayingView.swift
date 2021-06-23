//
//  FavoritesView.swift
//  music-service
//
//  Created by Giovani Nícolas Bettoni on 22/06/21.
//

import UIKit

class PlayingView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var playPauseButton: UIButton!
    
    class func instanceFromNib() -> PlayingView {
        let view = UINib(nibName: "PlayingView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! PlayingView
        return view
    }
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}
