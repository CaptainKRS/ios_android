//
//  Level.swift
//  LineTower
//
//  Created by Patrick Sullivan on 1/6/15.
//  Copyright (c) 2015 SullyGames. All rights reserved.
//

import Foundation

let NumColumns = 9
let NumRows = 9

class Level {
    var towers = Array2D<Tower>(columns: NumColumns, rows: NumRows)
    func towerAtColumn(column: Int, row: Int) -> Tower? {
        assert(column >= 0 && column < NumColumns)
        assert(row >= 0 && row < NumRows)
        return towers[column, row]
    }
    func shuffle() -> Set<Tower> {
        return createInitialTowers()
    }
    
    private func createInitialTowers() -> Set<Tower> {
        var set = Set<Tower>()
        
        // 1
        for row in 0..<NumRows {
            for column in 0..<NumColumns {
                
                // 2
                var towerType = TowerType.random()
                
                // 3
                let tower = Tower(column: column, row: row, towerType: towerType)
                towers[column, row] = tower
                
                // 4
                set.addElement(tower)
            }
        }
        return set
    }
}
