//
//  ViewController.swift
//  RippleEffectPOC
//
//  Created by Joyce Rosario Batista on 19/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addRippleEffect()
        yellowView.layer.cornerRadius = 100
        yellowView.addRippleEffect(.red)
        blueView.layer.cornerRadius = 50
        blueView.addRippleEffect()
    }
}

