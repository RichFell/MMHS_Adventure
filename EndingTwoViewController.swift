//
//  EndingTwoViewController.swift
//  MMHS_Adventure
//
//  Created by Richard Fellure on 7/15/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class EndingTwoViewController: UIViewController {

    var name = String()
    var titleString = String()

    @IBOutlet var textView: UITextView

    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = "Bad karma is never a good thing. After leaving the poor injured bird \(name) slipped on some wet concrete and broke their leg. "
        navigationItem.title = titleString
    }

}
