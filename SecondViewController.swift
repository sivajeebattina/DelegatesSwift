//
//  SecondViewController.swift
//  DelegatesSwift
//
//  Created by pcs20 on 10/27/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

import UIKit

protocol gotoFV{

    func callMe()

}

class SecondViewController: UIViewController {
    
    @IBOutlet var nameTextField:UITextField!
    var delegate:gotoFV?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        var firstV:FirstViewController=segue.destinationViewController as FirstViewController
        
        firstV.nameString=self.nameTextField.text
        self.delegate?.callMe()
    }
    

}
