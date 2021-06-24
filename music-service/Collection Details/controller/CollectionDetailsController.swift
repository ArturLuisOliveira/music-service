//
//  CollectionDetailsController.swift
//  music-service
//
//  Created by Artur Luis on 22/06/21.
//

import Foundation
import UIKit

struct ColllectionDetailsController {
    static func getCollectionImage(id: String) -> UIImage? {
        do {
            let musicService = try MusicService()
            let image = musicService.getCoverImage(forItemIded: id)
            return image
        } catch {
            print("Error getting image.")
        }
        return nil
    }
}
