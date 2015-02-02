//
//  TeamSelectionVC.swift
//  NBA_Virtual_GM
//
//  Created by Josh Kahl on 1/31/15.
//  Copyright (c) 2015 Josh Kahl. All rights reserved.
//

import UIKit

class TeamSelectionVC: UITableViewController
{
  var selectedTeam0 : Team!
  
  var teamsQueuedForTrade = [Team]()
  
  @IBOutlet weak var teamsInTradeView: UIView!
  
  
  @IBOutlet weak var team0: UIButton!
  @IBAction func team0Remove(sender: UIButton)
  {
    self.team0.imageView?.image = UIImage(named: "ball")
    self.team0.alpha = 0.3
   println("team0 selected")
  }
  
  
  @IBOutlet weak var team1: UIButton!
  @IBAction func team1Remove(sender: UIButton)
  {
    println("team1 selected")
  }

  @IBOutlet weak var team2: UIButton!
  @IBAction func team2Remove(sender: UIButton)
  {
    println("team2 selected")
  }
  
  @IBOutlet weak var team3: UIButton!
  @IBAction func team3Remove(sender: UIButton)
  {
    println("team3 selected")
  }
  
  
  //outlets for all teams
  
  @IBOutlet weak var boston: UIButton!
  @IBAction func bostonClicked(sender: UIButton)
  {
    println("boston selected")
    self.selectedTeam0 = NetworkController.sharedNetworkController.fetchTeam("Boston Celtics")
    println(self.selectedTeam0.roster[0].name)
    self.boston.hidden = true
    self.teamsInTradeView.hidden = false
  }
  
  @IBOutlet weak var brooklyn: UIButton!
  @IBAction func brooklynClicked(sender: UIButton)
  {
    println("brooklyn selected")
  }
  
  @IBOutlet weak var ny: UIButton!
  @IBAction func nyClicked(sender: UIButton)
  {
    println("ny selected")
  }

  
  @IBOutlet weak var philadelphia: UIButton!
  @IBAction func philadelphiaClicked(sender: UIButton)
  {
    println("philadelphia selected")
  }

  
  @IBOutlet weak var toronto: UIButton!
  @IBAction func torontoClicked(sender: UIButton)
  {
    println("toronto selected")
  }
  
  
  //action for all teams
  
  //forward declrations
  
  // this array will store the selected teams - maybe i should only init the teams here - 
  //var teamsInDeal = [Team]()
  
  //this will store the team image of the currently selected team - set to nil after team icon is moved
  var selectedTeam:UIImage!

  
  
  
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    self.teamsInTradeView.hidden = true
    
  }

  
  override func didReceiveMemoryWarning()
  {
      super.didReceiveMemoryWarning()
  }
}
