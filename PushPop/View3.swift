//
//  View3.swift
//  PushPop
//
//  Created by mac pro mgxc2 on 9/24/16.
//  Copyright © 2016 PIRATE. All rights reserved.
//

import UIKit

class View3: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbtinh: UILabel!
    @IBOutlet weak var lbRight: UILabel!
    
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var btn1: UIButton!
   
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
//    @IBOutlet weak var lbl1: UILabel!
//    @IBOutlet weak var lbl2: UILabel!
//    
//    @IBOutlet weak var lbRight: UILabel!
//    @IBOutlet weak var lbtime: UILabel!
//    @IBOutlet weak var lbWrong: UILabel!
//    
//    @IBOutlet weak var lbtinh: UILabel!
//    
//    
//    
//    @IBOutlet weak var btn1: UIButton!
//    @IBOutlet weak var btn2: UIButton!
//    @IBOutlet weak var btn3: UIButton!
    var ketqua = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setRandom()
        
    }
    
    
    func setRandom()  {
        //lay ra hai so ngau nhien su dung ham random
        let random1 = Int (arc4random_uniform(4)) + 1//random tu 1 den 4
        let random2 = Int (arc4random_uniform(4)) + 1//random tu 1 den 4
        //  let random3 = Int (arc4random_uniform(3))
        // print("\(random1)   \(random2)")
        
        
        
        // hien thi ra hai so ngau nhien
        
        lbl1.text = String(random1)
        lbl2.text = String(random2)
        setResult(randomA: random1 , randomB: random2 )     }
    //    func kiemtra(<#parameters#>)  {
    //        var dung = 0
    //        var sai = 0
    //
    //   }
    var dung = 0
    var sai = 0
    
    func kiemtrakqd()  {
        dung = dung + 1
        lbRight.text = String (dung)
    }
    func kiemtrakqs() {
        sai = sai + 1
        lbWrong.text = String(sai)
    }
    
   
    @IBAction func btnac(_ sender: AnyObject) {
        let a : Int = Int(sender.currentTitle!!)!
        if a == ketqua
        {
            kiemtrakqd()
        }
        else
        { kiemtrakqs() }
        setRandom()

    }
    
    @IBAction func btnac1(_ sender: AnyObject) {
        let a : Int = Int(sender.currentTitle!!)!
        if a == ketqua
        {
            kiemtrakqd()
        }
        else
        {
            kiemtrakqs()
        }
        setRandom()
    }
    
   
    
    @IBAction func btnac2(_ sender: AnyObject) {
        let a : Int = Int(sender.currentTitle!!)!
        if a == ketqua
        {
            kiemtrakqd()
        }
        else
        {
            kiemtrakqs()
        }
        setRandom()

    }
    
    func setResult(randomA: Int , randomB: Int )
    {
        let random3 = Int (arc4random_uniform(3))
        let random4 = Int (arc4random_uniform(3))
        
        
        
        if random4 == 0         {
            
            lbtinh.text = "+"
            
            repeat{
                let randomC = Int (arc4random_uniform(20)) + 1
                let randomD = Int (arc4random_uniform(20)) + 1
                ketqua = cong(p1: randomA, p2: randomB)
                if random3 == 0
                {
                    btn1.setTitle(String(ketqua), for: .normal)
                    btn2.setTitle(String(randomC), for: .normal)
                    btn3.setTitle(String(randomD), for: .normal)
                }
                else if random3 == 1
                {
                    btn2.setTitle(String(ketqua), for: .normal)
                    btn1.setTitle(String(randomC), for: .normal)
                    btn3.setTitle(String(randomD), for: .normal)
                    
                    
                    
                }
                else
                {
                    btn3.setTitle(String(ketqua), for: .normal)
                    btn1.setTitle(String(randomC), for: .normal)
                    btn2.setTitle(String(randomD), for: .normal)
                    
                }
            }
                while btn2 == btn1 || btn1 == btn3 || btn3 == btn2
            
        }
            
            
            
            
            
        else if random4 == 1
        {
            lbtinh.text = "-"
            repeat
            {
                let randomC = Int (arc4random_uniform(20)) + 1
                let randomD = Int (arc4random_uniform(20)) + 1
                ketqua = tru(p1: randomA, p2: randomB)
                
                if random3 == 0
                {
                    btn1.setTitle(String(ketqua), for: .normal)
                    btn2.setTitle(String(randomC), for: .normal)
                    btn3.setTitle(String(randomD), for: .normal)
                    
                    
                }
                else if random3 == 1
                {
                    btn2.setTitle(String(ketqua), for: .normal)
                    btn1.setTitle(String(randomC), for: .normal)
                    btn3.setTitle(String(randomD), for: .normal)
                    
                }
                else
                {
                    btn3.setTitle(String(ketqua), for: .normal)
                    btn1.setTitle(String(randomC), for: .normal)
                    btn2.setTitle(String(randomD), for: .normal)
                }
                
            }
                while btn2 == btn1 || btn1 == btn3 || btn3 == btn2
        }
            
        else
        {
            lbtinh.text = "*"
            
            repeat {
                let randomC = Int (arc4random_uniform(20)) + 1
                let randomD = Int (arc4random_uniform(20)) + 1
                ketqua = nhan(p1: randomA, p2: randomB)
                if random3 == 0
                {
                    btn1.setTitle(String(ketqua), for: .normal)
                    btn2.setTitle(String(randomC), for: .normal)
                    btn3.setTitle(String(randomD), for: .normal)
                    
                }
                    
                else if random3 == 1
                {
                    btn2.setTitle(String(ketqua), for: .normal)
                    btn1.setTitle(String(randomC), for: .normal)
                    btn3.setTitle(String(randomD), for: .normal)
                    
                    
                }
                else
                {
                    btn3.setTitle(String(ketqua), for: .normal)
                    btn1.setTitle(String(randomC), for: .normal)
                    btn2.setTitle(String(randomD), for: .normal)
                }
            }
                while btn2 == btn1 || btn1 == btn3 || btn3 == btn2
            
        }
    }
    
    
    
    
    
    
    func cong(p1: Int,  p2: Int) -> Int {
        return p1+p2;
    }
    func tru(p1: Int,  p2: Int) -> Int {
        return p1-p2;
    }
    func nhan(p1: Int,  p2: Int) -> Int {
        return p1*p2;
    }
    
    
}
