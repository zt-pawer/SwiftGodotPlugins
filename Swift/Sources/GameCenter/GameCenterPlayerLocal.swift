//
//  GameCenterPlayerLocal.swift
//  SwiftGodotIosPlugins
//
//  Created by ZT Pawer on 12/26/24.
//

import GameKit
import SwiftGodot

@Godot
class GameCenterPlayerLocal: Object {
    
    @Export var alias: String = ""
    @Export var displayName: String = ""

    @Export var gamePlayerID: String = ""
    @Export var teamPlayerID: String = ""

    @Export var isUnderage: Bool = false
    @Export var isMultiplayerGamingRestricted: Bool = false
    @Export var isPersonalizedCommunicationRestricted: Bool = false

    convenience init(_ player: GKLocalPlayer) {
        self.init()

        alias = player.alias
        displayName = player.displayName
        gamePlayerID = player.gamePlayerID
        teamPlayerID = player.teamPlayerID
        isUnderage = player.isUnderage
        isMultiplayerGamingRestricted = player.isMultiplayerGamingRestricted
        isPersonalizedCommunicationRestricted =
            player.isPersonalizedCommunicationRestricted
    }
}
