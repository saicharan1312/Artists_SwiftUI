//
//  Model.swift
//  Artists_SwiftUI
//
//  Created by Sai Charan Thummalapudi on 7/8/24.
//

import Foundation
struct ArtistsData: Codable {
    var results:[Artist]
}
struct Artist: Codable {
    var artworkUrl60: String?
    var collectionName: String?
    var artistName: String?
}

struct Artist1: Codable {
    var artistImage: String
    var albumName: String
    var artistName: String
}

//let artistArr = [Artist1(artistImage: "Nevermind", albumName: "Nevermind", artistName: "Red Hot Chilli Peppers"),
//                 Artist1(artistImage: "Anthony", albumName: "Anthony Kiedis", artistName: "Remi Wolf"),
//                 Artist1(artistImage: "Ladygaga", albumName: "I Love Lady Gaga", artistName: "77 Bombay Street"),
//                 Artist1(artistImage: "Anthony", albumName: "Anthony Kiedis", artistName: "Remi Wolf"),
//                 Artist1(artistImage: "Nevermind", albumName: "Nevermind", artistName: "Red Hot Chilli Peppers"),
//                 Artist1(artistImage: "Anthony", albumName: "Anthony Kiedis", artistName: "Remi Wolf"),
//                 Artist1(artistImage: "Ladygaga", albumName: "I Love Lady Gaga", artistName: "77 Bombay Street"),
//                 Artist1(artistImage: "Anthony", albumName: "Anthony Kiedis", artistName: "Remi Wolf"),
//                 Artist1(artistImage: "Nevermind", albumName: "Nevermind", artistName: "Red Hot Chilli Peppers"),
//                 Artist1(artistImage: "Anthony", albumName: "Anthony Kiedis", artistName: "Remi Wolf"),
//                 Artist1(artistImage: "Ladygaga", albumName: "I Love Lady Gaga", artistName: "77 Bombay Street"),
//                 Artist1(artistImage: "Anthony", albumName: "Anthony Kiedis", artistName: "Remi Wolf")]
