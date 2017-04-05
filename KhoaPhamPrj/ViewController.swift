//
//  ViewController.swift
//  KhoaPhamPrj
//
//  Created by khacpham on 2/15/17.
//  Copyright © 2017 oic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtHoTen: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtSoDienThoai: UITextField!
    
    @IBOutlet weak var txttvKetQua: UITextView!
    @IBAction func Close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func DangKy(_ sender: Any) {
        let hoten:String = txtHoTen.text!
        let email:String = txtEmail.text!
        let dienthoai:String = txtSoDienThoai.text!
        let tonghop:String = "Ban vua dang ki voi thong tin nhu sau:\n Ho ten:" + hoten +  "\n Email: "+email+"\n So dien thoai:" + dienthoai
        
        txttvKetQua.text = tonghop
    }
    
    
    @IBAction func Xoa(_ sender: Any) {
        txtHoTen.text = ""
        txtEmail.text = ""
        txtSoDienThoai.text = ""
        txttvKetQua.text = ""
        
        txtHoTen.becomeFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("blur view added")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

