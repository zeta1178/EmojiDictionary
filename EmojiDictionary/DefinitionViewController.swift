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
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    var emoji = EmojiC()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "BirthYear: \(emoji.birthYear!)"
        categoryLabel.text = "Category: \(emoji.category!)"
        definitionLabel.text = emoji.definition
        
        //print(emoji)
        
       // "😀","💩","🐬","🦂","🦄","🐿"
        
        /*
        if emoji == "Cruz" {
            definitionLabel.text = "🦂"
        }
        if emoji == "Setton" {
            definitionLabel.text = "🦄"
        }
        */
        
        
        
        
        /*
        if emoji == "😀" {
            definitionLabel.text = "Hello"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2010"
        }
        if emoji == "💩" {
            definitionLabel.text = "Poo"
            categoryLabel.text = "Category: Smiley"
            birthYearLabel.text = "BirthYear: 2011"
        }
        if emoji == "🐬" {
            definitionLabel.text = "Dolphin"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "BirthYear: 2012"
        }
        if emoji == "🦂" {
            definitionLabel.text = "Scorpion"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "BirthYear: 2013"
        }
        if emoji == "🦄" {
            definitionLabel.text = "Unicorn"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "BirthYear: 2014"
        }
        if emoji == "🐿" {
            definitionLabel.text = "Squirrel"
            categoryLabel.text = "Category: Animal"
            birthYearLabel.text = "BirthYear: 2015"
        }
        */
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
