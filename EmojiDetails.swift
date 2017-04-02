//
//  EmojiDetails.swift
//  Emoji Dictionary
//
//  Created by Jernej Hartman on 02/04/2017.
//  Copyright © 2017 Jernej Hartman. All rights reserved.
//

import UIKit

class EmojiDetails: UIViewController {

    @IBOutlet weak var emojiPic: UILabel!
    @IBOutlet weak var emojiDesc: UILabel!
    
    var emoji:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

      emojiPic.text = emoji
      
        if emoji == "😃" {
            emojiDesc.text = "happy face"
        }
      
    }

}
