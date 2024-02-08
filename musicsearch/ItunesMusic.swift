//
//  ItunesMusic.swift
//  musicsearch
//
//  Created by Amelie Baimukanova on 08.02.2024.
//

import Foundation
import SwiftyJSON

struct ItunesMusic {
    var artistName = ""
    var artworkUrl100 = ""
    var trackName = ""
    var previewUrl = ""
   
    init () {
        
    }
    init (json: JSON) {
        if let item = json["artistName"].string {
            artistName = item
        }
        if let item = json["artworkUrl100"].string {
            artworkUrl100 = item
        }
        if let item = json["trackName"].string {
            trackName = item
        }
        if let item = json["previewUrl"].string {
            previewUrl = item
        }
    }
}
