//
//  ChooseProjectViewController.swift
//  Digita11y
//
//  Created by Christopher Reed on 2/23/16.
//  Copyright © 2016 Roundware. All rights reserved.
//

import UIKit
class ChooseProjectViewController: UIViewController, UIScrollViewDelegate {
    let projects        = sharedProjects

    @IBOutlet weak var ProjectsScrollView: UIScrollView!
    @IBAction func selectedThis(sender: UIButton) {
        let projectName = sender.titleLabel?.text
        let project = projects[projects.indexOf({$0.name == projectName})!]
        print("Selected project: \(project.name)")
        currentProject = project
        self.performSegueWithIdentifier("ProjectSegue", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.addBackground("bg-blue.png")
        ProjectsScrollView.delegate = self
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()

        // populate buttons
        let buttonHeight    = 54 //     button.intrinsicContentSize()
        let buttonWidth     = 306 //     button.intrinsicContentSize()
        let buttonMarginX   = 0
        let buttonMarginY   = 21
        for index in 0..<projects.count {
            let project = projects[index]
            let frame = CGRect(x: buttonMarginX, y: index * (buttonMarginY + buttonHeight), width: buttonWidth, height: buttonHeight )
            let button  = UIButtonBorder(type: UIButtonType.System) as UIButton
            
            button.frame = frame
            button.setTitle(project.name, forState: .Normal)
            button.addTarget(self, action: "selectedThis:", forControlEvents: UIControlEvents.TouchUpInside)
            ProjectsScrollView.addSubview(button)
        }
        
        // set scroll view
        ProjectsScrollView.contentSize.width = CGFloat((buttonWidth) + 2)
        ProjectsScrollView.contentSize.height = CGFloat((buttonHeight + buttonMarginY)*projects.count)
        let newContentOffsetX = (ProjectsScrollView.contentSize.width/2) - (ProjectsScrollView.bounds.size.width/2)
        ProjectsScrollView.contentOffset = CGPointMake(newContentOffsetX, 0)
        
        //TODO debug for multipel runs
        //print(ProjectsScrollView.contentSize.width)
        //print(ProjectsScrollView.bounds.size.width)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}