//
//  Team.swift
//  NBA_Virtual_GM
//
//  Created by Josh Kahl on 2/1/15.
//  Copyright (c) 2015 Josh Kahl. All rights reserved.
//

import UIKit

class Team: NSObject
{
  var team : String
  var roster : [Player]
  var cap : Float
  var assets : Bool//[String:AnyObject]  // "trade exceptions" : 3.4, .900
  var draftPicks : Bool//[String:AnyObject]
  
  init(team:String, roster:[Player], assets:Bool, draftPicks:Bool)
  {
    self.team = team
    self.roster = roster
    self.cap = 0.0//self.calculateCap()
    self.assets = assets
    self.draftPicks = draftPicks
  }
  
  //call to update the teams cap after a transaction is made
  func calculateCap()
  {
    //reset cap
    self.cap = 0
    //update cap for roster
    for player in self.roster
    {
      self.cap += player.contract
    }
  }
  
  // html parser ? = func buildTeam
}
