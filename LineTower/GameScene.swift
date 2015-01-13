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
    let tilesLayer = SKNode()
    let p1grid = SKNode()
    let p2grid = SKNode()

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder) is not used in this app")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        addChild(gameLayer)
        
        let layerPosition = CGPoint(
            x: -TileWidth * CGFloat(NumColumns)/2 - (3.5 * TileWidth),
            y: -TileHeight * CGFloat(NumRows)/2)
        
        let layerPosition2 = CGPoint(
            x: -TileWidth * CGFloat(NumColumns)/2 + (3.5 * TileWidth),
            y: -TileHeight * CGFloat(NumRows) / 2
        )
        p1grid.position = layerPosition;
        p2grid.position = layerPosition2;
        
        //tilesLayer.position = layerPosition
        //gameLayer.addChild(tilesLayer)
        
        gameLayer.addChild(p1grid)
        gameLayer.addChild(p2grid)

        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        //let background = SKSpriteNode(imageNamed: "Background")
        //addChild(background)
    }
    func addSpritesForP1(tiles: Set<Tile>) {
        for tile in tiles {
            let sprite = SKSpriteNode(imageNamed: tile.tileType.tileName)
            sprite.position = pointForColumn(tile.column, row:tile.row)
            p1grid.addChild(sprite)
            tile.sprite = sprite
        }
    }
    func addSpritesForP2(tiles: Set<Tile>) {
        for tile in tiles {
            let sprite = SKSpriteNode(imageNamed: tile.tileType.tileName)
            sprite.position = pointForColumn2(tile.column, row:tile.row)
            p2grid.addChild(sprite)
            tile.sprite = sprite
        }
    }
    func pointForColumn(column: Int, row: Int) -> CGPoint {
        return CGPoint(
            x: CGFloat(column)*(TileWidth + TileWidth)/2
            ,
            y: CGFloat(row)*TileHeight + TileHeight/2)
    }
    func pointForColumn2(column: Int, row: Int) -> CGPoint {
        return CGPoint(
            x: CGFloat(column)*TileWidth + TileWidth/2,
            y: CGFloat(row)*TileHeight + TileHeight/2)
    }
}
