//
//  LibraryController.swift
//  music-service
//
//  Created by Artur Luis on 19/06/21.
//

import Foundation
import UIKit

struct LibraryController {
    static func listCollections() -> [MusicCollection] {
        do {
            let musicService = try MusicService()
            return musicService.loadLibrary()
        } catch {
            return []
        }
    }
    static func findCollectionCover(id: String) -> UIImage? {
        do {
            let musicService = try MusicService()
            return musicService.getCoverImage(forItemIded: id)
        } catch {
            return nil
        }
    }
}
