////
////  Tile.swift
////  LineTower
////
////  Created by Patrick Sullivan on 1/13/15.
////  Copyright (c) 2015 SullyGames. All rights reserved.
////
//
//enum TileType: Int, Printable {
//    case Unknown = 0, Archer, Cannon
//    var tileName: String {
//        let tileNames = [
//            "combine-grass-outer"
//        ]
//        
//        return tileNames[rawValue - 1]
//    }
//    var description: String {
//        return tileName
//    }
//    
//    var highlightedTileName: String {
//        return tileName + "-Highlighted"
//    }
//    static func random() -> TileType {
//        return TileType(rawValue: Int(arc4random_uniform(1)) + 1)!
//    }
//}
//
//class Tile: Printable, Hashable {
//    var description: String {
//        return "type:\(tileType) square:(\(column),\(row))"
//    }
//    var hashValue: Int {
//        return row*10 + column
//    }
//    var column: Int
//    var row: Int
//    let tileType: TileType
//    var sprite: SKSpriteNode?
//    
//    init(column: Int, row: Int, tileType: TileType) {
//        self.column = column
//        self.row = row
//        self.tileType = tileType
//    }
//}
//func ==(lhs: Tile, rhs: Tile) -> Bool {
//    return lhs.column == rhs.column && lhs.row == rhs.row
//}