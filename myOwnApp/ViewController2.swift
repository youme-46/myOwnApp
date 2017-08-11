//
//  ViewController2.swift
//  myOwnApp
//
//  Created by 畑中佑太 on 2017/08/09.
//  Copyright © 2017年 myOrganization. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var timer:Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 0.1,target: self,selector: #selector(ViewController2.changeView),userInfo: nil,repeats: false)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeView() {
       
        let segues = ["toTestTop1", "toTestRight1", "toTestLeft1", "toTestBottom1"]
        let index = Int(arc4random_uniform(UInt32(segues.count)))
        let segueName = segues[index]
        self.performSegue(withIdentifier: segueName, sender: self)
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
