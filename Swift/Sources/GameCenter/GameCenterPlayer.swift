//
//  GameCenterPlayer.swift
//  GameCenter
//
//  Created by ZT Pawer on 12/26/24.
//

import GameKit
import SwiftGodot

@Godot
class GameCenterPlayer: Object {
    @Export var alias: String = ""
    @Export var displayName: String = ""
    
    @Export var gamePlayerID: String = ""
    @Export var teamPlayerID: String = ""
    
    @Export var isInvitable: Bool = false
    
    @Export var profilePicture: Image?
    
    /// Deprecated, use gamePlayerID instead. This is however needed for backwards compatibility
    @Export var playerID: String = ""
    
    convenience init(_ player: GKPlayer) {
        self.init()
        
        alias = player.alias
        displayName = player.displayName
        gamePlayerID = player.gamePlayerID
        teamPlayerID = player.teamPlayerID
        isInvitable = player.isInvitable
        
        playerID = player.playerID
    }
    
}
