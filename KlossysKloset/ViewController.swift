//
//  ViewController.swift
//  KlossysKloset
//
//  Created by Jessi Guo on 2022-07-19.
//

import UIKit

var answer = ""

class ViewController: UIViewController {


    @IBOutlet weak var ansLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ansLabel.text = answer
        
    }


}

