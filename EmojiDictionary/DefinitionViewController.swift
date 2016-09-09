//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Michael Cruz on 9/9/16.
//  Copyright © 2016 MIchael Cruz. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    
    var emoji = "No Emoji"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
       // "😀","💩","🐬","🦂","🦄","🐿"
        
        if emoji == "😀" {
            definitionLabel.text = "Happy"
        }
        if emoji == "💩" {
            definitionLabel.text = "Poo"
        }
        if emoji == "🐬" {
            definitionLabel.text = "Dolphin"
        }
        if emoji == "🦂" {
            definitionLabel.text = "Scorpion"
        }
        if emoji == "🦄" {
            definitionLabel.text = "Unicorn"
        }
        if emoji == "🐿" {
            definitionLabel.text = "Squirrel"
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
