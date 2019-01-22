//
//  DesireVC.swift
//  Swoosh App
//
//  Created by Admin on 1/22/19.
//  Copyright © 2019 NanoSoft. All rights reserved.
//

import UIKit
class DesireVC: UIViewController {
     var player:Player!
    @IBOutlet weak var NextBtn: borderButton!
    
    
    override func loadView() {
        player=Player()
        super.loadView()
        NextBtn.isHidden=true
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
    
    // MARK: - segue method
    func desiredleagueSelected(yourleague:String){
        player.desireLeague=yourleague
        NextBtn.isEnabled=true
        NextBtn.isHidden=false
        print(player.desireLeague!)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SkillVc=segue.destination as? finishVcViewController
        {
            SkillVc.player=player
            print("the desire league is : "+player.desireLeague!)     }
    }
    
    
}
