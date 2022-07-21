//
//  resultViewController.swift
//  KlossysKloset
//
//  Created by Jessi Guo on 2022-07-21.
//

import UIKit

class resultViewController: UIViewController {
    
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
    
    var labeltext = ""
    

    @IBOutlet weak var resultLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLable.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resButton(_ sender: UIButton) {
        if priceid == 0{
            if cheapVintage > cheapCasual && cheapVintage > cheapFancy && cheapVintage > cheapTrendy{
                labeltext = "H&M, Pacsun"
            }
            else if cheapCasual > cheapVintage && cheapCasual > cheapFancy && cheapCasual > cheapTrendy{
                labeltext = "Uniqlo, Bluenotes, Garage"
            }
            else if cheapFancy > cheapCasual && cheapFancy > cheapVintage && cheapFancy > cheapTrendy{
                labeltext = "Zara"
            }
            else if cheapTrendy > cheapFancy && cheapTrendy > cheapCasual && cheapTrendy > cheapVintage{
                labeltext = "Cotton:On, Forever 21 (large size inclusive)"
            }
            
            else if cheapVintage == cheapCasual{
                labeltext = "H&M, Pacsun, Uniqlo, Bluenotes, Garage"
            }
            else if cheapVintage == cheapFancy{
                labeltext = "H&M, Pacsun, Zara"
            }
            else if cheapCasual == cheapFancy{
                labeltext = "Uniqlo, Bluenotes, Garage, Zara"
            }
            else if cheapTrendy == cheapFancy{
                labeltext = "Zara, Cotton:On, Forever 21 (large size inclusive)"
            }
            else if cheapTrendy == cheapCasual{
                labeltext = "Uniqlo, Bluenotes, Garage, Cotton:On, Forever 21 (large size inclusive)"
            }
            else if cheapTrendy == cheapVintage{
                labeltext = "H&M, Pacsun, Cotton:On, Forever 21 (large size inclusive)"
            }
        }
        else if priceid == 1{ //still needs trendy brands
            if midVintage > midCasual && midVintage > midFancy{
                labeltext = "Urban Outfitters, Brandy Melville (small size inclusive)"
            }
            else if midCasual > midVintage && midCasual > midFancy{
                labeltext = "Levi's, Abercrombie & Fitch, Lululemon"
            }
            else if midFancy > midCasual && midFancy > midVintage{
                labeltext = "& other stories, Express"
            }
            else if midVintage == midCasual{
                labeltext = "Urban Outfitters, Brandy Melville (small size inclusive), Levi's, Abercrombie & Fitch, Lululemon"
            }
            else if midVintage == midFancy{
                labeltext = "Urban Outfitters, Brandy Melville (small size inclusive), & other stories, Express"
            }
            else if midCasual == midFancy{
                labeltext = "Levi's, Abercrombie & Fitch, Lululemon, & other stories, Express"
            }
        }
        else{
            if highVintage > highCasual && highVintage > highFancy && highVintage > highTrendy{
                labeltext = "The Vintage Bohemian, Proenza Schouler White Label"
            }
            else if highCasual > highVintage && highCasual > highFancy && highCasual > highTrendy{
                labeltext = "Raey, Agolde"
            }
            else if highFancy > highCasual && highFancy > highVintage && highFancy > highTrendy{
                labeltext = "Banana Republic, Reformation, The Frankie Shop"
            }
            else if highTrendy > highFancy && highTrendy > highCasual && highTrendy > highVintage{
                labeltext = "Nordstrom, Anthropologie"
            }
            
            else if highVintage == highCasual{
                labeltext = "Raey, Agolde, The Vintage Bohemian, Proenza Schouler White Label"
            }
            else if highVintage == highFancy{
                labeltext = "The Vintage Bohemian, Proenza Schouler White Label, Banana Republic, Reformation, The Frankie Shop"
            }
            else if highCasual == highFancy{
                labeltext = "Banana Republic, Reformation, The Frankie Shop, Raey, Agolde"
            }
            else if highTrendy == highFancy{
                labeltext = "Banana Republic, Reformation, The Frankie Shop, Nordstrom, Anthropologie"
            }
            else if highTrendy == highCasual{
                labeltext = "Nordstrom, Anthropologie, Raey, Agolde"
            }
            else if highTrendy == highVintage{
                labeltext = "Nordstrom, Anthropologie, The Vintage Bohemian, Proenza Schouler White Label"
            }
            resultLable.text = labeltext
        }
        performSegue(withIdentifier: "goToNext", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let next = segue.destination as? ViewController{
            next.labeltext = labeltext
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
