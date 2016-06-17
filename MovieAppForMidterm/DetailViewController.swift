//
//  DetailViewController.swift
//  MovieAppForMidterm
//
//  Created by YeouTimothy on 2016/6/17.
//  Copyright © 2016年 YeouTimothy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var movieDetail:(name:String, image:String, date:String, detail:String)?

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tiltleLable: UINavigationItem!
    @IBOutlet weak var detailLable: UILabel!
    @IBOutlet weak var movieDetailImage: UIImageView!
    
    @IBOutlet weak var scrollViewWidth: NSLayoutConstraint!
    @IBOutlet weak var textHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tiltleLable.title = movieDetail?.name
        detailLable.text = movieDetail?.detail
        movieDetailImage.image = UIImage(named: (movieDetail?.image)!)
        let scrollWidthCGFloat = scrollViewWidth.constant
        let totalHeight = textHeight.constant + CGFloat(integerLiteral: 50)
        scrollView.contentSize = CGSize(width: scrollWidthCGFloat, height: totalHeight)
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
