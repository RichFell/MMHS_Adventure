//
//  ThirdViewController.swift
//  MMHS_Adventure
//
//  Created by Richard Fellure on 7/15/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var name = String()
    var titleString = String()

    @IBOutlet var buttonOne: UIButton
    @IBOutlet var buttonTwo: UIButton
    @IBOutlet var textView: UITextView
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = "Erring towards caution \(name) decided to just head home and not investigate the eerie voice. On \(name)'s way home they ran into an old friend named Sam. Sam asked \(name) to go get some coffee and catch up... What does \(name) do? "

        navigationItem.title = titleString

    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        if segue.identifier == "Segue_ToEnding3"
        {
            let thirdEndingVC = segue.destinationViewController as EndingThreeViewController
            thirdEndingVC.name = name
            thirdEndingVC.titleString = buttonOne.titleLabel.text
        }
        else
        {
            let fourthEndingVC = segue.destinationViewController as EndingFourViewController
            fourthEndingVC.name = name
            fourthEndingVC.titleString = buttonTwo.titleLabel.text
        }
    }

}
