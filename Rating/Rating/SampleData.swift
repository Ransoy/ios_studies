//
//  SampleData.swift
//  Rating
//
//  Created by FDC Yongbo on 19/03/2018.
//  Copyright © 2018 FDC Yongbo. All rights reserved.
//

import Foundation

final class SampleData {
    static func generatePlayersData() -> [Player] {
        return [
            Player(name: "Bill Evans", game: "tic-tact-toe", rating: 4),
            Player(name: "Oscar Peterson", game: "Spin the bottle", rating: 5),
            Player(name: "Dave Brubeck", game: "Texas Hold 'em Poker", rating: 2),
        ]
    }
}
