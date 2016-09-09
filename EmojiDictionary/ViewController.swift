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
    
    
    var emojis = ["😀","💩","🐬","🦂","🦄","🐿"]
    
    
    var emojid:  [[String:String]] = [
        [
            "firstName": "Michael",
            "lastName":  "Cruz",
            "url": "http://www.google.com"
        ],
        [
            "firstName": "Vanessa",
            "lastName":  "Setton",
            "url": "http://www.google.com"
        ]
    ]
    
    //var emojiNames: [String] = []
    
    /*
 for person in emojid {
        if let firstName = person["firstName"] {
            if let lastName = person["lastName"] {
                let fullName = "\(firstName) \(lastName)"
                emojiNames.append(fullName)
            }
        }
    }
    
   */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        theTableView.dataSource = self
        theTableView.delegate = self
        
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojid.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let data = emojid[indexPath.row]
        
            cell.textLabel?.text = data["firstName"]!
            //cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
                let emoji = emojid[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji["lastName"])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
            defVC.emoji = sender as! String
            //print(sender!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

