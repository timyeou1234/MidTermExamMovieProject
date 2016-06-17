//
//  SignPageViewController.swift
//  MovieAppForMidterm
//
//  Created by YeouTimothy on 2016/6/17.
//  Copyright © 2016年 YeouTimothy. All rights reserved.
//

import UIKit

class SignPageViewController: UIViewController {
    
    var point = 1
    
    @IBOutlet weak var name3: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var signInput: UITextField!
    @IBAction func enterNameButton(sender: AnyObject) {
        if signInput.text! == ""{
        }else{
            switch point {
            case 1:
                name1.text = signInput.text!
                signInput.text = ""
                point += 1
            case 2:
                name2.text = signInput.text!
                signInput.text = ""
                point += 1
            case 3:
                name3.text = signInput.text!
                signInput.text = ""
                point += 1
            default:
                break
            }
            
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appdelegate.shouldSupportAllOrientation = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
