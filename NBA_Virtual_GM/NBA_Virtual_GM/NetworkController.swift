//
//  NetworkController.swift
//  NBA_Virtual_GM
//
//  Created by Josh Kahl on 2/1/15.
//  Copyright (c) 2015 Josh Kahl. All rights reserved.
//

import UIKit

class NetworkController
{
  class var sharedNetworkController : NetworkController
  {
    struct Static
    {
      static let instance:NetworkController = NetworkController()
    }
    return Static.instance
  }

  //test method for populating a team via creating player objects
  
  func fetchTeam(team:String) -> Team
  {
    var localTeam : Team!
    var players  = [Player]()
    let position = ["PG","SG","SF","PF","C"]
    let contract = [3.3, 5.5, 2.3]
    let per = [22.9, 11.8, 5.6, 22.3]
    
    
    // create player objects
    for(var i:Int = 0; i < 12; i++)
    {
      let name = "p\(i)"
      
      let player = Player(name: name, position: "PF", contract: 4.4, noTrade: false, per: 22.1)
      
      players.append(player)
    }
    // create team object and populate with players
    
     localTeam = Team(team: team, roster: players, assets: false, draftPicks: false)
    
    return localTeam
  }
  
  
  
  
  
  
  
  
}
