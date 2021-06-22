//
//  FavoritesViewController.swift
//  music-service
//
//  Created by Giovani Nícolas Bettoni on 21/06/21.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    private var controller: FavoritesController?
    @IBOutlet weak var favoritesTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controller = FavoritesController()
        
        favoritesTableView.dataSource = self
        favoritesTableView.delegate = self
        
    }

}

extension FavoritesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let controller = self.controller else {return 1}
        return controller.getFavoritesCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FavoritesCell") as? FavoritesTableViewCell else {return UITableViewCell()}
        
        let musicIndex = indexPath.row
        guard let controller = self.controller else { return cell }
        cell.coverImageView.image = controller.getCover(byIndexPath: musicIndex)
        cell.titleLabel.text = controller.getTitleMusic(byIndexPath: musicIndex)
        cell.singerLabel.text = controller.getArtist(byIndexPath: musicIndex)
//        cell.coverImageView.image = controller.getCover(byIndexPath: musicIndex.)
        
        return cell
    }
    
    
}
