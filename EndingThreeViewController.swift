//
//  EndingThreeViewController.swift
//  MMHS_Adventure
//
//  Created by Richard Fellure on 7/15/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class EndingThreeViewController: UIViewController {

    @IBOutlet var textView: UITextView

    var name = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = "It turns out that Sam wanted to talk about a new business opportunity. Being smart \(name) took this opportunity. Today \(name) enjoys being one of the youngest billionaires in the world"

    }

}
