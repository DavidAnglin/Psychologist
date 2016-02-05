//
//  TextViewController.swift
//  Psychologist
//
//  Created by David Anglin on 2/5/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

import UIKit

class TextViewController: UIViewController
{
    
    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.text = text
        }
    }
    
    var text: String = "" {
        didSet {
            textView?.text = text
        }
    }

    override var preferredContentSize: CGSize {
    get{
        if textView != nil && presentingViewController != nil {
            return textView.sizeThatFits(presentingViewController!.view.bounds.size)
        } else {
            return super.preferredContentSize
        }
    }
    set {super.preferredContentSize = newValue}
}
}
