//
//  CollectionEditorController.swift
//  music-service
//
//  Created by Artur Luis on 21/06/21.
//

import Foundation
import UIKit

struct CollectionEditorController {
    static func getAlbumImage(_ id: String?) -> UIImage? {
        do {
            let musicService = try MusicService()
            return musicService.getCoverImage(forItemIded: id ?? "")
        } catch {
            return nil
        }
    }
    static func addToFavorite(music:Music) {
        do {
            let musicService = try MusicService()
            musicService.toggleFavorite(music: music, isFavorite: false)
        } catch {
            print("Add to favorite function error.")
        }
    }
    
    static func isFavorite(music:Music?) -> Bool {
        do {
            let musicService = try MusicService()
            guard  let music = music else {
                return false
            }
            print(musicService.favoriteMusics)
            return musicService.favoriteMusics.contains(music)
            
        } catch {
            print("Is favorite function error.")
            return false
        }
    }
    
    static func toggleFavorite(music: Music?, handler: (_ newValue: Bool)-> Void) {
        do {
            guard let music = music else { return }
            let musicService = try MusicService()
            
            let favorite = CollectionEditorController.isFavorite(music: music)
            musicService.toggleFavorite(music: music, isFavorite: favorite)
            handler(!favorite)
        } catch {
            print("Toggle favorite function error.")
        }
    }
}
