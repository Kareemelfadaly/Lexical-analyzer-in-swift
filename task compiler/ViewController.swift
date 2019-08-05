//
//  ViewController.swift
//  task compiler
//
//  Created by Kareem Elfadaly on 4/2/19.
//  Copyright © 2019 compiler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var label1: UILabel!

    let keywords = ["string","int","double","float","char","bool","class","if","for","switch","null","long","new","continue","foreach","from","in","private","true","false","while","default"]
    
    let separators = [";","{","}"]
    let operators = [">","<","=","==","<=",">=","!=","&&","||","&","|"]
    let phranses = ["(",")"]
    let Arth_operators = ["+","-","*","/","+=","-=","*="]
    let numbers = ["0","1","2","3","4","5","6","7","8","9","10"]
    let variables = ["a","m","n","d","x","y","z","r","i","j","k"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txt1.textAlignment = .left
        txt1.contentVerticalAlignment = .top
        
        label1.textAlignment = .left
    }

    
    @IBAction func didTapBtn(_ sender: Any) {
        let sent:String = txt1.text!
        let text = sent.split(separator: " ")
        label1.text = nil
        
        var result:String = ""
        for s in text {
            for item in keywords{
                if(s==item){
                    result.append(" \(s) \t \t \t  is a keyword \n ")
                }
            }
            for item in separators{
                if(s==item){
                    result.append(" \(s) \t \t \t  is a seperator \n ")
                }
            }
            for item in operators{
                if(s==item){
                    result.append(" \(s) \t \t \t  is an operator \n ")
                }
            }
            for item in numbers{
                if(s==item){
                    result.append(" \(s) \t \t \t  is an integer number \n ")
                }
            }
            for item in variables{
                if(s==item){
                    result.append(" \(s) \t \t \t  is a variable \n ")
                }
            }
            for item in Arth_operators{
                if(s==item){
                    result.append(" \(s) \t \t  is an arthemitic operator \n ")
                }
            }
            for item in phranses{
                if(s==item){
                    result.append(" \(s) \t \t \t  is a paren \n ")
                }
            }
            
            
        }
        label1.text = result
        
        
        
    }
    
}

