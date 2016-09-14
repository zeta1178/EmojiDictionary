//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Michael Cruz on 9/9/16.
//  Copyright © 2016 MIchael Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var theTableView: UITableView!
    
    var json_data_url = "http://cruzy.co/data.json"
    var image_base_url = "http://cruzy.co/images/"
    
    //var emojis = ["😀","💩","🐬","🦂","🦄","🐿"]
    
    var emojis : [EmojiC] = []
    
    
    var emojid : [DataC] = []
    
    /*
    var emojid = [
        [
            "firstName": "Michael",
            "lastName":  "Cruz",
            "url": "Bambi.jpg"
        ],
        [
            "firstName": "Vanessa",
            "lastName":  "Setton",
            "url": "http://www.google.com"
        ]
    ]
    */

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        theTableView.dataSource = self
        theTableView.delegate = self
        emojis = makeEmojiArray()
        emojid = makeDataArray()
        
        // get_data_from_url(json_data_url)
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
            //let data = emojid[indexPath.row]
        
            //cell.textLabel?.text = data["firstName"]!
            //cell.otherLabel?.text = data["lastName"]!
        
            //cell.imageView?.image = UIImage(named: data["url"]!) ;
        
            cell.textLabel?.text = emoji.stringEmoji
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
            //let emoji = emojid[indexPath.row]
            let emoji = emojis[indexPath.row]
        //performSegue(withIdentifier: "moveSegue", sender: emoji["lastName"])
        performSegue(withIdentifier: "moveSegue", sender: emoji)
        print(emojid[indexPath.row].firstName!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
            defVC.emoji = sender as! EmojiC
            //print(sender!)
    }
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

        
    func makeEmojiArray() -> [EmojiC] {
        
        let emoji1 = EmojiC()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face"
        
        
        let emoji2 = EmojiC()
        emoji2.stringEmoji = "💩"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "A poo face"
        
        let emoji3 = EmojiC()
        emoji3.stringEmoji = "🐬"
        emoji3.birthYear = 2012
        emoji3.category = "Animal"
        emoji3.definition = "A dolphin face"
        
        let emoji4 = EmojiC()
        emoji4.stringEmoji = "🦂"
        emoji4.birthYear = 2013
        emoji4.category = "Animal"
        emoji4.definition = "A scorpion face"
        
        let emoji5 = EmojiC()
        emoji5.stringEmoji = "🦄"
        emoji5.birthYear = 2014
        emoji5.category = "Animal"
        emoji5.definition = "A unicorn face"
        
        let emoji6 = EmojiC()
        emoji6.stringEmoji = "🐿"
        emoji6.birthYear = 2015
        emoji6.category = "Animal"
        emoji6.definition = "A squirrel face"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
    
}

