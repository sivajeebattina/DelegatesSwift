//
//  FirstViewController.swift
//  DelegatesSwift
//
//  Created by pcs20 on 10/27/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,gotoFV {

    @IBOutlet var nameLabel:UILabel!
    
      var nameString:NSString="Hi Guest"
    
   var secondV:SecondViewController!
    

    override func viewDidLoad() {
        super.viewDidLoad()

      self.nameLabel.text=nameString
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func callMe(){
    
        println("Delegate method called")
    }
    

 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if segue.identifier=="gotoNext"
        {
        
            secondV=segue.destinationViewController as SecondViewController
            
            secondV.delegate=self
            
        
        }
    }
    

}
