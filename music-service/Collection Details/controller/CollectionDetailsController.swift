//
//  CollectionDetailsController.swift
//  music-service
//
//  Created by Artur Luis on 22/06/21.
//

import Foundation
import UIKit

protocol Collectable: UITableViewCell {
    var collection: MusicCollection? { get set }
}
