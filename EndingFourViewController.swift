//
//  EndingFourViewController.swift
//  MMHS_Adventure
//
//  Created by Richard Fellure on 7/15/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class EndingFourViewController: UIViewController {

    @IBOutlet var textView: UITextView
    var name = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = "Seeing as how \(name) is not an outgoing person, and never wants to leave their comfort zone they will enjoy living the rest of their life living with their 25 cats and working a job that they hate."
    }

}
