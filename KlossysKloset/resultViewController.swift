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
    

    @IBOutlet weak var resultLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLable.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resButton(_ sender: UIButton) {
        if priceid == 0{
            if cheapVintage > cheapCasual && cheapVintage > cheapFancy && cheapVintage > cheapTrendy{
                resultLable.text = "H&M, Pacsun"
            }
            else if cheapCasual > cheapVintage && cheapCasual > cheapFancy && cheapCasual > cheapTrendy{
                resultLable.text = "Uniqlo, Bluenotes, Garage"
            }
            else if cheapFancy > cheapCasual && cheapFancy > cheapVintage && cheapFancy > cheapTrendy{
                resultLable.text = "Zara"
            }
            else if cheapTrendy > cheapFancy && cheapTrendy > cheapCasual && cheapTrendy > cheapVintage{
                resultLable.text = "Cotton:On, Forever 21 (large size inclusive)"
            }
            
            else if cheapVintage == cheapCasual{
                resultLable.text = "H&M, Pacsun, Uniqlo, Bluenotes, Garage"
            }
            else if cheapVintage == cheapFancy{
                resultLable.text = "H&M, Pacsun, Zara"
            }
            else if cheapCasual == cheapFancy{
                resultLable.text = "Uniqlo, Bluenotes, Garage, Zara"
            }
            else if cheapTrendy == cheapFancy{
                resultLable.text = "Zara, Cotton:On, Forever 21 (large size inclusive)"
            }
            else if cheapTrendy == cheapCasual{
                resultLable.text = "Uniqlo, Bluenotes, Garage, Cotton:On, Forever 21 (large size inclusive)"
            }
            else if cheapTrendy == cheapVintage{
                resultLable.text = "H&M, Pacsun, Cotton:On, Forever 21 (large size inclusive)"
            }
        }
        else if priceid == 1{ //still needs trendy brands
            if midVintage > midCasual && midVintage > midFancy{
                resultLable.text = "Urban Outfitters, Brandy Melville (small size inclusive)"
            }
            else if midCasual > midVintage && midCasual > midFancy{
                resultLable.text = "Levi's, Abercrombie & Fitch, Lululemon"
            }
            else if midFancy > midCasual && midFancy > midVintage{
                resultLable.text = "& other stories, Express"
            }
            else if midVintage == midCasual{
                resultLable.text = "Urban Outfitters, Brandy Melville (small size inclusive), Levi's, Abercrombie & Fitch, Lululemon"
            }
            else if midVintage == midFancy{
                resultLable.text = "Urban Outfitters, Brandy Melville (small size inclusive), & other stories, Express"
            }
            else if midCasual == midFancy{
                resultLable.text = "Levi's, Abercrombie & Fitch, Lululemon, & other stories, Express"
            }
        }
        else{
            if highVintage > highCasual && highVintage > highFancy && highVintage > highTrendy{
                resultLable.text = "The Vintage Bohemian, Proenza Schouler White Label"
            }
            else if highCasual > highVintage && highCasual > highFancy && highCasual > highTrendy{
                resultLable.text = "Raey, Agolde"
            }
            else if highFancy > highCasual && highFancy > highVintage && highFancy > highTrendy{
                resultLable.text = "Banana Republic, Reformation, The Frankie Shop"
            }
            else if highTrendy > highFancy && highTrendy > highCasual && highTrendy > highVintage{
                resultLable.text = "Nordstrom, Anthropologie"
            }
            
            else if highVintage == highCasual{
                resultLable.text = "Raey, Agolde, The Vintage Bohemian, Proenza Schouler White Label"
            }
            else if highVintage == highFancy{
                resultLable.text = "The Vintage Bohemian, Proenza Schouler White Label, Banana Republic, Reformation, The Frankie Shop"
            }
            else if highCasual == highFancy{
                resultLable.text = "Banana Republic, Reformation, The Frankie Shop, Raey, Agolde"
            }
            else if highTrendy == highFancy{
                resultLable.text = "Banana Republic, Reformation, The Frankie Shop, Nordstrom, Anthropologie"
            }
            else if highTrendy == highCasual{
                resultLable.text = "Nordstrom, Anthropologie, Raey, Agolde"
            }
            else if highTrendy == highVintage{
                resultLable.text = "Nordstrom, Anthropologie, The Vintage Bohemian, Proenza Schouler White Label"
            }
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
