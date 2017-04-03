//
//  EmojiDetails.swift
//  Emoji Dictionary
//
//  Created by Jernej Hartman on 02/04/2017.
//  Copyright © 2017 Jernej Hartman. All rights reserved.
//

import UIKit

class EmojiDetails: UIViewController {

    @IBOutlet weak var categoryLbl: UILabel!
    @IBOutlet weak var emojiPic: UILabel!
    @IBOutlet weak var emojiDesc: UILabel!
    @IBOutlet weak var birthYearLbl: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

      emojiPic.text = emoji.stringEmoji
      birthYearLbl.text = "Birth Year: \(emoji.birthYear)"
      categoryLbl.text = "Category \(emoji.category)"
      emojiDesc.text = emoji.definition

    }
}
