//
//  Q5ViewController.swift
//  KlossysKloset
//
//  Created by Jessi Guo on 2022-07-21.
//

import UIKit

class Q5ViewController: UIViewController {

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
    
    var cheapTrendy = 0
    var midTrendy = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ansQ5(_ sender: UIButton) {
        if sender.titleLabel!.text == "1"{
            if priceid == 0{
                cheapVintage += 1
            }
            else if priceid == 1{
                midVintage += 1
            }
            else{
                highVintage += 1
            }
        }
        else if sender.titleLabel!.text == "2"{
            if priceid == 0{
                cheapCasual += 1
            }
            else if priceid == 1{
                midCasual += 1
            }
            else{
                highCasual += 1
            }
        }
        else if sender.titleLabel!.text == "3"{
            if priceid == 0{
                cheapTrendy += 1
            }
            else if priceid == 1{
                midTrendy += 1
            }
            else{
                highTrendy += 1
            }
        }
        else{
            if priceid == 0{
                cheapFancy += 1
            }
            else if priceid == 1{
                midFancy += 1
            }
            else{
                highFancy += 1
            }
        }
        
        performSegue(withIdentifier: "goToNext", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let next = segue.destination as? resultViewController{
            next.cheapFancy = cheapFancy
            next.cheapCasual = cheapCasual
            next.cheapVintage = cheapVintage
            next.midVintage = midVintage
            next.midCasual = midCasual
            next.midFancy = midFancy
            next.highCasual = highCasual
            next.highFancy = highFancy
            next.highVintage = highVintage
            next.cheapTrendy = cheapTrendy
            next.midTrendy = midTrendy
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
