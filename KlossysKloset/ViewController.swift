//
//  ViewController.swift
//  KlossysKloset
//
//  Created by Jessi Guo on 2022-07-19.
//

import UIKit

class ViewController: UIViewController {
    var labeltext = ""

    @IBOutlet weak var ansLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ansLabel.text = labeltext
        
    }


}

