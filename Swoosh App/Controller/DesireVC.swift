//
//  DesireVC.swift
//  Swoosh App
//
//  Created by Admin on 1/22/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit
class DesireVC: UIViewController {
    
    @IBOutlet weak var NextBtn: borderButton!
    
    
    override func loadView() {
        super.loadView()
    }
    
    
    
    @IBAction func nextAction(_ sender: Any)
    {
    self.performSegue(withIdentifier: "desireSegue", sender: self)
    }
    
    @IBAction func mensTaped(_ sender: Any) {
        desiredleagueSelected(yourleague: "men")
        
    }
    
    @IBAction func womansTaped(_ sender: Any) {
        desiredleagueSelected(yourleague: "Womans")
    }
    
    @IBAction func coedTaped(_ sender: Any) {
        desiredleagueSelected(yourleague: "coed")
    }
    
    
    func desiredleagueSelected(yourleague:String){
        var player:Player!
        player=Player()
        player.desireLeague=yourleague
        NextBtn.isEnabled=true
    }
    
    
}
