//
//  FavoritesController.swift
//  music-service
//
//  Created by Giovani Nícolas Bettoni on 21/06/21.
//

import Foundation
import UIKit

class FavoritesController {
    
    private var musicService: MusicService?
    private var collections: [MusicCollection]?
    private var favoritesMusicList: [Music] = []
    private var favoriteMusics: [Music]? = []
    
    init() {
        saveFavorites()
        fetchFavorites()
    }
    
    func saveFavorites() {
        let m1: Music = Music(id: "6cefd031a54def8165de", title: "", artist: "", length: 123)
        let m2: Music = Music(id: "e1f66c09f889547da786", title: "", artist: "", length: 123)
        let m3: Music = Music(id: "7b4b11ae9f12f3b52e1a", title: "", artist: "", length: 123)
        let m4: Music = Music(id: "450e7efd696ed8378ec0", title: "", artist: "", length: 123)
        let m5: Music = Music(id: "f60749776c226c6acf03", title: "", artist: "", length: 123)
        let m6: Music = Music(id: "7c6d7327cd092d57ab92", title: "", artist: "", length: 123)
        
        
        favoritesMusicList.append(m1)
        favoritesMusicList.append(m2)
        favoritesMusicList.append(m3)
        favoritesMusicList.append(m4)
        favoritesMusicList.append(m5)
        favoritesMusicList.append(m6)
        
        UserDefaults.standard.setValue(favoritesMusicList.map(\.id), forKey: "favorite-musics-ids")
    }
    
    func fetchFavorites() {
        do {
            musicService = try MusicService()
            favoriteMusics = musicService?.favoriteMusics ?? favoritesMusicList
        } catch {
            print(error)
        }
    }
    
    public func getFavoritesCount() -> Int {
        return favoriteMusics?.count ?? 0
    }
    
    public func getTitleMusic(byIndexPath index: Int) -> String {
        guard let title = favoriteMusics?[index].title else { return "" }
        return title
    }
    
    public func getArtist(byIndexPath index: Int) -> String {
        guard let artist = favoriteMusics?[index].artist else { return "" }
        return artist
    }
    
    public func getCoverId(byIndexPath index: Int) -> String {
        guard let coverId = favoriteMusics?[index].id else { return "" }
        return coverId
    }
    
    public func getCover(byIndexPath index: Int) -> UIImage {
        guard let cover = musicService?.getCoverImage(forItemIded: getCoverId(byIndexPath: index)) else { return UIImage() }
        return cover
    }
    
}
