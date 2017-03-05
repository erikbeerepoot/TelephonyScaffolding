//
//  ViewController.swift
//  TelephonyScaffolding
//
//  Created by Erik Beerepoot on 2017-02-13.
//  Copyright © 2017 Barefoot Systems. All rights reserved.
//

import UIKit
import TMQTelephony

class ViewController: UIViewController {

    let callManager = CallManager()
    
    @IBOutlet var callDuration : UILabel?
    @IBOutlet var status : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func makeTestCall(sender : UIButton) {
        let contact = Contact(firstName:"John",lastName:"Doe",phoneNumber:"123")
        
        callManager.call(contact: contact)
        
    }
    
    @IBAction func endCall(sender : UIButton){
        
    }
    
    @IBAction func acceptCall(sender : UIButton){
        
    }
    
    

}

