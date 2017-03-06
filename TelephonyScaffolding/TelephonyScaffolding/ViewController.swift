//
//  ViewController.swift
//  TelephonyScaffolding
//
//  Created by Erik Beerepoot on 2017-02-13.
//  Copyright © 2017 Barefoot Systems. All rights reserved.
//

import UIKit
import TMQTelephony

class ViewController: UIViewController, CallManagerDelegate {

    let callManager = CallManager()
    
    @IBOutlet var callDuration : UILabel?
    @IBOutlet var status : UILabel?
    
    @IBOutlet var endCall : UIButton?
    @IBOutlet var acceptCall : UIButton?
    @IBOutlet var testCall : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        endCall?.isEnabled = true
        acceptCall?.isEnabled = false
        testCall?.isEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func makeTestCall(sender : UIButton) {
        let contact = Contact(firstName:"Erik",lastName:"Beerepoot",phoneNumber:"Voice Bot")
        
        do {
            try callManager.call(contact: contact)
        } catch {
            print("Call failed!")
        }
        
    }
    
    @IBAction func endCall(sender : UIButton){
        //kill all calls
        callManager.activeCalls.forEach { (call) in
            try! self.callManager.end(call: call)
        }
        
    }
    
    @IBAction func acceptCall(sender : UIButton){
        
    }
    
    func callConnected(call : Call){
        endCall?.isEnabled = true
        acceptCall?.isEnabled = false
        testCall?.isEnabled = false
        
        status?.textColor = .green
        status?.text = "Connected"
    }
    
    func callDisconnected(call : Call){
        endCall?.isEnabled = true
        acceptCall?.isEnabled = false
        testCall?.isEnabled = true
        
        status?.textColor = .red
        status?.text = "Disconnected"
    }
    
    

}

