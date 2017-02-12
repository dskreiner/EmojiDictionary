//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Scott Kreiner on 2/11/17.
//  Copyright © 2017 Scott Kreiner. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {


    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthyearLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthyearLabel.text = "Created in: \(emoji.birthYear)"
        definitionLabel.text = emoji.definition
        categoryLabel.text = "Category: \(emoji.category)"
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
