//
//  Q1TableViewController.swift
//  KlossysKloset
//
//  Created by Jessi Guo on 2022-07-20.
//

import UIKit

class Q1TableViewController: UIViewController {

    //defines scores for each group
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
    
    //identification value, 0 for low, 1 for mid, 2 for high
    var priceid = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func priceRangeLow(_ sender: UIButton) {
        if sender.titleLabel!.text == "$0 - $50"{
            priceid = 0

        }
        else if sender.titleLabel!.text == "$50 - $150"{
            priceid = 1
 
        }
        else{
            priceid = 2

        }
        
        performSegue(withIdentifier: "goToNext", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let next = segue.destination as? Q2TableViewController{
            next.priceid = priceid
        }
    }

}
