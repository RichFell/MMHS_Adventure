//
//  ViewController.swift
//  MMHS_Adventure
//
//  Created by Richard Fellure on 7/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

@objc(ViewController) class ViewController: UIViewController {
                            
    @IBOutlet var nameLabel: UILabel
    @IBOutlet var nameTextField: UITextField
    @IBOutlet var buttonOne: UIButton
    @IBOutlet var buttonTwo: UIButton
    @IBOutlet var textView: UITextView
    @IBOutlet var imageView: UIImageView
    var name = String()
    var titleString = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        textView.hidden = true
        buttonOne.hidden = true
        buttonTwo.hidden = true
        imageView.hidden = true
    }

    @IBAction func unwindSegue(segue:UIStoryboardSegue)
    {
        
    }

    @IBAction func onButtonPressedAddName(sender: AnyObject)
    {
        var button = sender as UIButton

        button.hidden = true
        name = nameTextField.text

        textView.text = "\(name) is walking home on a dark stormy evening and decides to take a shortcut through the cemetery. All of a sudden \(name) hears a eerie voice call to them from over near the catacombs... What does \(name) do next?"

        textView.hidden = false
        buttonTwo.hidden = false
        buttonOne.hidden = false
        imageView.hidden = false

        nameLabel.hidden = true
        nameTextField.hidden = true


    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        if segue.identifier == "Segue_scene1_1"
        {
            let secondVC = segue.destinationViewController as SecondViewController
            secondVC.name = name
            secondVC.titleString = buttonOne.titleLabel.text
        }
        else
        {
            let thirdVC = segue.destinationViewController as ThirdViewController
            thirdVC.name = name

            thirdVC.titleString = buttonTwo.titleLabel.text
        }
    }
}
