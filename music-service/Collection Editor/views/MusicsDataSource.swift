//
//  MusicsDataSource.swift
//  music-service
//
//  Created by Artur Luis on 21/06/21.
//

import UIKit

class MusicsTableViewDataSource: NSObject,UITableViewDataSource {
 
    
    var musicsTableView: UITableView
    var musics: [Music]
    
    init(musicsTableView:UITableView, musics: [Music]){
        self.musics = musics
        self.musicsTableView = musicsTableView
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.musics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.musicsTableView.dequeueReusableCell(withIdentifier: "musicsTableViewCell", for: indexPath) as! MusicsTableViewCell
        
        cell.music = self.musics[indexPath.row]
        cell.awakeFromNib()
        return cell
    }
}
