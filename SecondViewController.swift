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

    @IBOutlet var textView: UITextView
    override func viewDidLoad()
    {
        super.viewDidLoad()

        textView.text = "\(name) never heard the expression 'Curiosity killed the cat', so \(name) decided to investigate the eerie voice. As \(name) got closer it became apparent that the voice belonged to an injured parate.. What does \(name) do next?"

    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        if segue.identifier == "Segue_ToEnding1"
        {
            let endingOneVC = segue.destinationViewController as EndingOneViewController

            endingOneVC.name = name
        }
        else
        {
            let endingTwoVC = segue.destinationViewController as EndingTwoViewController

            endingTwoVC.name = name
        }
    }
}
