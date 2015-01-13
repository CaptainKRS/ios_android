//
//  Tower.swift
//  LineTower
//
//  Created by Patrick Sullivan on 1/6/15.
//  Copyright (c) 2015 SullyGames. All rights reserved.
//

import SpriteKit

enum TowerType: Int, Printable {
    case Unknown = 0,Archer, Cannon
    var spriteName: String {
        let spriteNames = [
            "combine-grass-outer"
            ]
        
        return spriteNames[rawValue - 1]
    }
    var description: String {
        return spriteName
    }
    
    var highlightedSpriteName: String {
        return spriteName + "-Highlighted"
    }
    static func random() -> TowerType {
        return TowerType(rawValue: Int(arc4random_uniform(1)) + 1)!
    }
}

class Tower: Printable, Hashable {
    var description: String {
        return "type:\(towerType) square:(\(column),\(row))"
    }
    var hashValue: Int {
        return row*10 + column
    }
    var column: Int
    var row: Int
    let towerType: TowerType
    var sprite: SKSpriteNode?
    
    init(column: Int, row: Int, towerType: TowerType) {
        self.column = column
        self.row = row
        self.towerType = towerType
    }
}
func ==(lhs: Tower, rhs: Tower) -> Bool {
    return lhs.column == rhs.column && lhs.row == rhs.row
}