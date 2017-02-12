//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Scott Kreiner on 2/10/17.
//  Copyright © 2017 Scott Kreiner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emViewControl: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emViewControl.dataSource = self
        emViewControl.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "MoveSegue", sender: emoji)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.category = "Smiley"
        emoji1.birthYear = 2000
        emoji1.definition = "A happy emoji."
 
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.category = "Smiley"
        emoji2.birthYear = 2001
        emoji2.definition = "A cool dude."

        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤡"
        emoji3.category = "Smiley"
        emoji3.birthYear = 1999
        emoji3.definition = "A scary clown!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🐕"
        emoji4.category = "Animal"
        emoji4.birthYear = 2000
        emoji4.definition = "A cute dog."
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🦉"
        emoji5.category = "Animal"
        emoji5.birthYear = 2004
        emoji5.definition = "Who's there?"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🍺"
        emoji6.category = "Food & Drink"
        emoji6.birthYear = 2000
        emoji6.definition = "A refreshing beverage!"
     
        return[emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }


}

