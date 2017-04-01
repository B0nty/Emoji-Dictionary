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
    
    var emojis = ["😃", "😁", "😅", "😂", "😎", "😇","💪"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiTable.dataSource = self
        emojiTable.delegate = self
     
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "showEmoji", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let VC = segue.destination as! EmojiDetails
        
        VC.emoji = sender as! String
    }

}

