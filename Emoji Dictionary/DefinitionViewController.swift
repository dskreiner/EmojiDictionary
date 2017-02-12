//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Scott Kreiner on 2/11/17.
//  Copyright © 2017 Scott Kreiner. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!

    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🤡" {
            definitionLabel.text = "A scary clown!"
        }
    
        definitionLabel.text = "Hello"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
