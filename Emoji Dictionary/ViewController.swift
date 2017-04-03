//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Jernej Hartman on 02/04/2017.
//  Copyright © 2017 Jernej Hartman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTable: UITableView!
    
    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiTable.dataSource = self
        emojiTable.delegate = self
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
        performSegue(withIdentifier: "showEmoji", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VC = segue.destination as! EmojiDetails
        
       VC.emoji = sender as! Emoji
    }
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smily Emoji"
        emoji1.definition = "A Smily face emoji"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😁"
        emoji2.birthYear = 2011
        emoji2.category = "Smily Emoji"
        emoji2.definition = "A big smile face emoji"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😅"
        emoji3.birthYear = 2012
        emoji3.category = "Smily Emoji"
        emoji3.definition = "A Smily face emoji with...."
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😂"
        emoji4.birthYear = 2013
        emoji4.category = "Smily Emoji"
        emoji4.definition = "Smily crying emoji"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😎"
        emoji5.birthYear = 2014
        emoji5.category = "Smily Emoji"
        emoji5.definition = "Dude with sunglasses"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😇"
        emoji6.birthYear = 2015
        emoji6.category = "Angel Emoji"
        emoji6.definition = "An agel emoji"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "💪"
        emoji7.birthYear = 2016
        emoji7.category = "Hands Emoji"
        emoji7.definition = "Wining fist"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }

}

