//
//  Q2TableViewController.swift
//  KlossysKloset
//
//  Created by Jessi Guo on 2022-07-20.
//

import UIKit

class Q2TableViewController: UIViewController {

    var cheapVintage = 0
    var cheapCasual = 0
    var cheapFancy = 0
    
    var midVintage = 0
    var midCasual = 0
    var midFancy = 0
    
    var highVintage = 0
    var highCasual = 0
    var highFancy = 0
    var highTrendy = 0
    
    var priceid = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sizeButton(_ sender: UIButton) {
        if sender.titleLabel!.text == "XXS - S"{
            if priceid == 0{
                cheapFancy += 1
            }
            else if priceid == 1{
                midVintage += 1
            }
            else if priceid == 2{
                highCasual += 1 //I made this up
            }
        }
        else if sender.titleLabel!.text == "L - XXL"{
            if priceid == 0{
                cheapFancy += 1
            }
            else if priceid == 1{
                midVintage += 1
            }
            else if priceid == 2{
                highCasual += 1
            }
        }

    }
    

}
