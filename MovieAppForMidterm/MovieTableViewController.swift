//
//  MovieTableViewController.swift
//  MovieAppForMidterm
//
//  Created by YeouTimothy on 2016/6/17.
//  Copyright © 2016年 YeouTimothy. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var movieList:[(name:String, image:String, date:String, detail:String)] = [("惡鄰纏身2", "movie1", "2015-05-06", "2014年最受歡迎原創喜劇《惡鄰纏身》回來了！原班人馬塞斯羅根、柴克艾弗隆與蘿絲拜恩於《惡鄰纏身2》再度攜手惡整，這次還加入了超殺女克蘿伊摩蕾茲當「好厝邊」。尼可拉斯史托勒回鍋執導演筒，看看好父母槓上姊妹淘會有什麼超乎想像的後果。麥克（塞斯羅根 飾）和凱莉萊納（蘿絲拜恩 飾）即將迎接第二個寶寶，夫妻倆做出成人的重大決定：搬到郊區。他們以為自己早已收服惡鄰，在這個社區把房子賣掉不成問題，卻發現隔壁新搬來的姊妹會比當初泰迪（柴克艾弗隆 飾）的兄弟會更加無法無天。搞叛逆的卡芭妞姊妹會受夠了性別歧視和管很嚴的學校，決定搬到外面可以讓她們肆無忌憚的大鬧特鬧。雪碧（克蘿伊摩蕾茲 飾）與她的姊妹淘貝絲（凱爾西克萊蒙 飾）和諾拉（比妮費爾德斯坦 飾）在校園附近找到了完美地點，就算這間房子位於安靜的社區也擋不了她們要跟男生一樣瘋狂開趴的決心。大難臨頭下，萊納夫妻與死黨吉米（伊克巴林霍茲 飾）和寶拉（卡拉嘉洛 飾）不得不借助前鄰居泰迪的力量，希望他的性感魅力能成為扳倒新惡鄰的祕密武器。如果泰迪能滲透姊妹會，把一票女生迷倒，這群30多歲的成年人便可如願以償鬥垮卡芭妞；但如果他們以為對方會乖乖屈服那就大錯特錯了，年輕人不按牌理出牌的搞怪行徑將讓他們難以招架。"), ("阿公歐買尬", "movie2", "2016-01-22", "傑森（柴克艾弗隆 飾）是位一板一眼做事總是拘謹的準新郎，過著正經八百的無趣生活，每天被重度控制狂未婚妻使喚，而就在結婚前夕，他被精心「設計」去載剛經歷喪偶的爺爺迪克（勞勃狄尼洛 飾）到佛羅里達度假散心。讓傑森意外的是，爺爺生性好色又輕浮，不僅喪禮隔天就搭上幼齒小辣妹，還答應一同去…放浪過春假？！而傑森就這樣半推半就地踏上這段風流旅程。究竟個性迥異的兩人要如何共處？而傑森與色胚爺爺，又會在這趟旅途中遇到多少令人啼笑皆非、放浪形骸、情節超展開的事件呢？爺孫版 《醉後大丈夫》＋《放浪青春》？！非典型阿公-迪克，個性輕浮不正經，舉凡跑趴、把妹、哈草，樣樣都來，即時享樂是他的座右銘，不遵守社會規範也不在乎世俗眼光，最大的心願是…臨死前跟超正嫩妹上床不戴套套？!非典型孫子-傑森，個性拘謹、不苟言笑、舉凡跑趴、把妹、哈草…他樣樣不會，凡事照著規矩走是他的右銘，非常在乎形象與世人觀感，最大的心願是...跟未婚妻結婚安穩過一生？! 當個性天南地北的兩人碰在一起，頓時雞飛狗跳、豬羊變色，彷彿太陽從西邊出來、海綿寶寶離開深海的大鳳梨一般，令人無法想像。他們會在旅途中發生什麼尺度全開、瞠目結舌的誇張行徑？而他們又該如何接受彼此互相磨合呢？【拍攝緣起】《阿公歐買尬》改編自1967年的經典喜劇片《畢業生》，同樣是踏上一場失控的旅程，而衍生出許多問題，進而再度摸索解決的方法。本片集結了奧斯卡影帝勞勃狄尼洛與性感男星柴克艾弗隆，不計形象，連手搞笑。導演丹梅澤曾經擔任許多部成功爆笑無厘頭電影作品的編劇及製作，包括《芭樂特》（Borat ,2006）和《G型教主》（Brüno, 2009）及近年的《大獨裁者落難記》（The Dictator, 2012）等等。他擅長以驚世駭俗又諷刺的對白與誇張的表演，呈現出現代社會中看似「嚴肅」的議題，以個性鮮明的角色，帶出個性迥異的兩個人之間的矛盾與衝突，以輕鬆幽默的方式讓觀眾在大笑之餘，仔細回想現實層面中那些無解的問題也能一笑置之。")]
    var indexNum:Int?

    @IBOutlet var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.estimatedRowHeight = 200
        movieTableView.rowHeight = UITableViewAutomaticDimension
        movieTableView.registerNib(UINib(nibName:"MovieTableViewCell" , bundle: nil), forCellReuseIdentifier: "Cell")
        
                
    }
    
    override func viewWillAppear(animated: Bool) {
        let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appdelegate.shouldSupportAllOrientation = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MovieTableViewCell
        
        cell.movieNameLable.text = movieList[indexPath.row].name
        cell.moviePicImageView.image = UIImage(named: movieList[indexPath.row].image)
        cell.movieTimeLable.text = "上映日期： \(movieList[indexPath.row].date)"
        

        

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        indexNum = indexPath.row
        performSegueWithIdentifier("showDetail", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail"{
            let destinationController = segue.destinationViewController as! DetailViewController
            let vc = sender as! MovieTableViewController
            destinationController.movieDetail = vc.movieList[indexNum!]
        
        }
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
