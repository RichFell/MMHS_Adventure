//
//  ViewController.swift
//  MMHS_Adventure
//
//  Created by Richard Fellure on 7/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var nameLabel: UILabel
    @IBOutlet var nameTextField: UITextField
    @IBOutlet var buttonOne: UIButton
    @IBOutlet var buttonTwo: UIButton
    @IBOutlet var textView: UITextView
    var name = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.hidden = true
        buttonOne.hidden = true
        buttonTwo.hidden = true
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

        nameLabel.hidden = true
        nameTextField.hidden = true


    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        if segue.identifier == "Segue_scene1_1"
        {
            var secondVC = segue.destinationViewController as SecondViewController
            secondVC.name = name
        }
        else
        {
            
        }
    }

}

