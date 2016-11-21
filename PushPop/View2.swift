//
//  View2.swift
//  PushPop
//
//  Created by mac pro mgxc2 on 9/23/16.
//  Copyright © 2016 PIRATE. All rights reserved.
//

import UIKit

class View2: UIViewController {

    @IBOutlet weak var lb_thongbao: UILabel!
   
    @IBOutlet weak var tf_text: UITextField!
    @IBOutlet weak var tf_taikhoan: UITextField!
    func  chuyenview()  {
        let v3 = self.storyboard?.instantiateViewController(withIdentifier: "V3") as! View3
        self.navigationController?.pushViewController(v3, animated: true)
        

    }
    var user = ["duy": "123" , "hiep" : "234" , "cong" : "456"]
    @IBAction func bt_login(_ sender: AnyObject) {
        if let pass = user[tf_taikhoan.text!]
        {
            if pass == tf_text.text!
            {
                lb_thongbao.text = " Dang nhap thanh cong"
                print(lb_thongbao)
                chuyenview()
                
            }
            else {
               lb_thongbao.text = "Mat khau khong dung, moi nhap lai"
                print(lb_thongbao)
            }
            
        }
        else {
            lb_thongbao.text = "Tai khoan khong ton tai"
            print(lb_thongbao)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    
//    @IBAction func act_Pop(_ sender: AnyObject) {
//        self.navigationController?.popViewController(animated: true)
//        
//        
//    }
   
}
