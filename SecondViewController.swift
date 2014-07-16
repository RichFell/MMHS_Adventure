//
//  SecondViewController.swift
//  MMHS_Adventure
//
//  Created by Richard Fellure on 7/15/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var name = String()
    var titleString = String()

    @IBOutlet var buttonOne: UIButton
    @IBOutlet var buttonTwo: UIButton
    @IBOutlet var textView: UITextView
    override func viewDidLoad()
    {
        super.viewDidLoad()

        textView.text = "\(name) never heard the expression 'Curiosity killed the cat', so \(name) decided to investigate the eerie voice. As \(name) got closer it became apparent that the voice belonged to an injured parrot.. What does \(name) do next?"

        navigationItem.title = titleString

    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        if segue.identifier == "Segue_ToEnding1"
        {
            let endingOneVC = segue.destinationViewController as EndingOneViewController

            endingOneVC.name = name
            endingOneVC.titleString = buttonOne.titleLabel.text
        }
        else
        {
            let endingTwoVC = segue.destinationViewController as EndingTwoViewController

            endingTwoVC.name = name
            endingTwoVC.titleString = buttonTwo.titleLabel.text
        }
    }
}
