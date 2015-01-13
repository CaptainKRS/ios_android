//
//  Level.swift
//  LineTower
//
//  Created by Patrick Sullivan on 1/6/15.
//  Copyright (c) 2015 SullyGames. All rights reserved.
//

import Foundation

let NumColumns = 6
let NumRows = 5

class Level {
    var p1grid = Array2D<Tile>(columns: NumColumns, rows: NumRows)
    var p2grid = Array2D<Tile>(columns: NumColumns, rows: NumRows)
    var tiles = Array2D<Tile>(columns: NumColumns, rows: NumRows)

    func tileAtColumn(column: Int, row: Int) -> Tile? {
        assert(column >= 0 && column < NumColumns)
        assert(row >= 0 && row < NumRows)
        return tiles[column, row]
    }
    func shuffle() -> Set<Tile> {
        return createInitialTiles()
    }
    
    private func createInitialTiles() -> Set<Tile> {
        var set = Set<Tile>()
        
        // 1
        for row in 0..<NumRows {
            for column in 0..<NumColumns {
                
                // 2
                var tileType = TileType.random()
                
                // 3
                let tile = Tile(column: column, row: row, tileType: tileType)
                tiles[column, row] = tile
                
                // 4
                set.addElement(tile)
            }
        }
        return set
    }
}
