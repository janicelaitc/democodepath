//
//  ViewController.swift
//  G.0.A.T
//
//  Created by Janice Lai on 9/9/18.
//  Copyright © 2018 Janice Lai. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor:UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didtapbutton(_ sender: Any) {
        
        print("Hey there")
        textLabel.textColor=UIColor.orange

    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
      view.backgroundColor = UIColor.lightGray
        
    }
    

    
    
    @IBAction func didTapTextbutton(_ sender: Any) {
        //textLabel.text = "GoodBye"
        
        textLabel.text = textField.text
        
        view.endEditing(true)
        
        if textField.text == "" {
            textLabel.text = "Hello from Janice!"
        }
        
        textField.text = ""
    }
    
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Janice!"
        textLabel.textColor=UIColor.black
        view.backgroundColor = backgroundColor
    }
    
}

