//
//  DetailViewController.swift
//  car
//
//  Created by Leo on 26/06/2017.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    
    var carTitle:String!

    @IBOutlet weak var DetailLbn: UILabel!
    @IBOutlet weak var showCarView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
               navigationItem.title = carTitle
        
       let url = Bundle.main.url(forResource: carTitle, withExtension: "txt")
       let content = try? String(contentsOf: url!)
        
        let array = content!.components(separatedBy: "\n ")   //以換行＋空白來區分
        
        DetailLbn.text = array[0]
        
        if  carTitle == "911 GTS" {
            showCarView.image = UIImage(named:"911")    //以標題來顯示對應的照片

        }else if carTitle == "Macan" {
            
            showCarView.image = UIImage(named:"macan")
            
        }else{
            
            showCarView.image = UIImage(named:"718")
        }
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
