//
//  ChooseProjectViewController.swift
//  Digita11y
//
//  Created by Christopher Reed on 2/23/16.
//  Copyright © 2016 Roundware. All rights reserved.
//

import UIKit
class ChooseProjectViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO get projects from plist
        //TODO populate buttons
        //TODO link segue events
        //TODO make stackview scrollable
        //var projects = ["Peabody Essex Museum", "Baltimore Museum of Art", "Smithsonian Museum"]
        super.view.addBackground("bg-blue.png")
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //TODO set project
        if segue.identifier == "ProjectSegue" {
            //TODO model logic
            //player = Player(name: nameTextField.text!, game: "Chess", rating: 1)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}