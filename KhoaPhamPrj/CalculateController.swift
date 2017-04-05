//
//  CalculateController.swift
//  KhoaPhamPrj
//
//  Created by khacpham on 2/18/17.
//  Copyright © 2017 oic. All rights reserved.
//

import UIKit

class CalculateController: UIViewController {
    
    var so1:Int!
    var so2:Int!
    var dau:String!
    
    @IBOutlet weak var txtKetQua: UITextField!
    @IBOutlet weak var txtDau: UILabel!
    @IBOutlet weak var txtSo1: UILabel!
    
    @IBAction func OpenScreen(_ sender: Any) {
        // why show only black screen?
        print("test")
        let screen = ViewController()
        //navigationController?.pushViewController(screen, animated: true)
        
        present(screen, animated: true, completion: nil)
    }
    @IBAction func cong(_ sender: Any) {
        // gan cho so 1
        let s1:String = txtKetQua.text!
        
        if(!checkNumberValid(input:s1)){
            return
        }
        
        so1 = Int(s1)
        
        // gan dau
        dau = "+"
        txtDau.text = dau
        txtKetQua.text = ""
        txtSo1.text = String(so1)
    }
    
    @IBAction func tru(_ sender: Any) {
        // gan cho so 1
        let s1:String = txtKetQua.text!
        
        if(!checkNumberValid(input:s1)){
            return
        }
        
        so1 = Int(s1)
        
        if(so1 == nil){
        }
        
        // gan dau
        dau = "-"
        txtDau.text = dau
        txtKetQua.text = ""
        txtSo1.text = String(so1)
    }
    
    @IBAction func nhan(_ sender: Any) {
        // gan cho so 1
        let s1:String = txtKetQua.text!
        
        if(!checkNumberValid(input:s1)){
            return
        }
        
        so1 = Int(s1)
        
        // gan dau
        dau = "*"
        txtDau.text = dau
        txtKetQua.text = ""
        txtSo1.text = String(so1)
    }
    
    @IBAction func chia(_ sender: Any) {
        // gan cho so 1
        let s1:String = txtKetQua.text!
        
        if(!checkNumberValid(input:s1)){
            return
        }
        
        so1 = Int(s1)
        
        // gan dau
        dau = "/"
        txtDau.text = dau
        txtKetQua.text = ""
        txtSo1.text = String(so1)
    }
    
    @IBAction func bang(_ sender: Any) {
        let s2:String = txtKetQua.text!
        so2 = Int(s2)
        
        var ketqua:Int = 0
        
        switch dau {
        case "+":
            ketqua = so1+so2
            txtKetQua.text = String(ketqua)
        case "-":
            ketqua = so1-so2
            txtKetQua.text = String(ketqua)
        case "*":
            ketqua = so1*so2
            txtKetQua.text = String(ketqua)
        case "/":
            ketqua = so1/so2
            txtKetQua.text = String(ketqua)
        default:
            return
        }
        txtDau.text = " "
        txtSo1.text = ""
    }
    
    @IBAction func xoa(_ sender: Any) {
        txtKetQua.text = "0"
        txtDau.text = " "
        txtSo1.text = ""
    }
    
    @IBAction func nut0(_ sender: Any) {
        var ketqua:String = txtKetQua.text!
        ketqua = ketqua + "0"
        txtKetQua.text = ketqua
    }
    
    @IBAction func nut1(_ sender: Any) {
        var ketqua:String = txtKetQua.text!
        ketqua = ketqua + "1"
        txtKetQua.text = ketqua
    }
    
    
    @IBAction func nut2(_ sender: Any) {
        var ketqua:String = txtKetQua.text!
        ketqua = ketqua + "2"
        txtKetQua.text = ketqua
    }
    
    @IBAction func nut3(_ sender: Any) {
        var ketqua:String = txtKetQua.text!
        ketqua = ketqua + "3"
        txtKetQua.text = ketqua
    }
    
    @IBAction func nut4(_ sender: Any) {
        var ketqua:String = txtKetQua.text!
        ketqua = ketqua + "4"
        txtKetQua.text = ketqua
    }
    
    @IBAction func nut5(_ sender: Any) {
        var ketqua:String = txtKetQua.text!
        ketqua = ketqua + "5"
        txtKetQua.text = ketqua
    }
    
    @IBAction func nut6(_ sender: Any) {
        var ketqua:String = txtKetQua.text!
        ketqua = ketqua + "6"
        txtKetQua.text = ketqua
    }
    
    @IBAction func nut7(_ sender: Any) {
        var ketqua:String = txtKetQua.text!
        ketqua = ketqua + "7"
        txtKetQua.text = ketqua
    }
    
    @IBAction func nut8(_ sender: Any) {
        var ketqua:String = txtKetQua.text!
        ketqua = ketqua + "8"
        txtKetQua.text = ketqua
    }
    
    @IBAction func nut9(_ sender: Any) {
        var ketqua:String = txtKetQua.text!
        ketqua = ketqua + "9"
        txtKetQua.text = ketqua
    }
    
    func checkNumberValid(input:String) -> Bool {
        let output:Int!
        
        output = Int(input)
        
        if(output == nil){
            let alert = UIAlertController(title: "Number is too big", message: "Can not calculate with this value", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return false
        }
        return true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        xoa(AnyObject.self)
        
        print("blur view added")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


