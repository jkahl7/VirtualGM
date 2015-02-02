//
//  Player.swift
//  NBA_Virtual_GM
//
//  Created by Josh Kahl on 2/1/15.
//  Copyright (c) 2015 Josh Kahl. All rights reserved.
//

import UIKit

class Player: NSObject
{
  var name : String
  var position : String  // FGC? or PGSGSFPFC
  var contract : Float
  var noTrade : Bool
  var per : Float

  init(name:String, position:String, contract:Float, noTrade:Bool, per:Float)
  {
    self.name = name
    self.position = position
    self.contract = contract
    self.noTrade = noTrade
    self.per = per
  }
}
