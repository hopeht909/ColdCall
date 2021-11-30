//
//  ViewController.swift
//  ColdCall
//
//  Created by admin on 29/11/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var buttonCall: UIButton!
    
    let nameList: [String] = ["Uyanga", "Courtny" ,"Jay" , "Bryant", "Jimmy" , "Cody", "Ryota"]
    
    var currentName = Int.random(in: 0...6)
    
    @IBAction func buttonCallPressed(_ sender: UIButton) {
        if(currentName < nameList.count - 1){
                   currentName += 1
               }
              
               else{
                   currentName = Int.random(in: 0...6)
               }
               updateLable()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLable()
    }
    func updateLable(){
        nameLabel.text = nameList[currentName]
    }
}

