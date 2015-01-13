//
//  GameScene.swift
//  LineTower
//
//  Created by Patrick Sullivan on 1/6/15.
//  Copyright (c) 2015 SullyGames. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var level: Level!
    
    let TileWidth: CGFloat = 36.0
    let TileHeight: CGFloat = 36.0
    
    let gameLayer = SKNode()
    let towersLayer = SKNode()
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder) is not used in this app")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        addChild(gameLayer)
        
        let layerPosition = CGPoint(
            x: -TileWidth * CGFloat(NumColumns) / 2,
            y: -TileHeight * CGFloat(NumRows) / 2)
        
        towersLayer.position = layerPosition
        gameLayer.addChild(towersLayer)
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        //let background = SKSpriteNode(imageNamed: "Background")
        //addChild(background)
    }
    func addSpritesForCookies(towers: Set<Tower>) {
        for tower in towers {
            let sprite = SKSpriteNode(imageNamed: tower.towerType.spriteName)
            sprite.position = pointForColumn(tower.column, row:tower.row)
            towersLayer.addChild(sprite)
            tower.sprite = sprite
        }
    }
    
    func pointForColumn(column: Int, row: Int) -> CGPoint {
        return CGPoint(
            x: CGFloat(column)*TileWidth + TileWidth/2,
            y: CGFloat(row)*TileHeight + TileHeight/2)
    }
}
