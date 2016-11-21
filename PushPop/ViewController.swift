//
//  ViewController.swift
//  PushPop
//
//  Created by mac pro mgxc2 on 9/23/16.
//  Copyright © 2016 PIRATE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logo: UIImageView!
    
    
    @IBOutlet weak var text: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logo!.alpha = 0
        text!.alpha = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: {
            self.logo!.alpha = 1
        })
        
        UIView.animate(withDuration: 4, animations: {
            self.text!.center = CGPoint.init(x: 200, y: 100)
            self.text!.alpha = 1
        })
        
        
        
    }
    @IBAction func act_Push(_ sender: AnyObject) {
        
        let v2 = self.storyboard?.instantiateViewController(withIdentifier: "V2") as! View2
        self.navigationController?.pushViewController(v2, animated: true)
        
    }
}

