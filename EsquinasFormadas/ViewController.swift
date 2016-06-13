//
//  ViewController.swift
//  EsquinasFormadas
//
//  Created by Miguel Cuellar on 4/7/16.
//  Copyright © 2016 Miguel Cuellar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var caso : Int = 0
   // let secondViewController:FormulasViewController = FormulasViewController()
    
    @IBAction func boton1(sender: AnyObject) {
        caso=1
        performSegueWithIdentifier("CambioPantalla", sender: self)
      //  self.presentViewController(secondViewController, animated: true, completion: nil)
    }
    @IBAction func boton2(sender: AnyObject) {
        caso=2
        performSegueWithIdentifier("CambioPantalla", sender: self)
    }
    @IBAction func boton3(sender: AnyObject) {
        caso=3
        performSegueWithIdentifier("CambioPantalla", sender: self)
    }
    
    @IBAction func boton4(sender: AnyObject) {
        caso=4
        performSegueWithIdentifier("CambioPantalla", sender: self)
    }

    @IBAction func boton5(sender: AnyObject) {
        caso=5
        performSegueWithIdentifier("CambioPantalla", sender: self)
    }
    
    @IBAction func boton6(sender: AnyObject) {
        caso=6
        performSegueWithIdentifier("CambioPantalla", sender: self)
    }
    @IBAction func boton7(sender: AnyObject) {
        caso=7
        performSegueWithIdentifier("CambioPantalla", sender: self)
    }
    @IBAction func boton8(sender: AnyObject) {
        caso=8
        performSegueWithIdentifier("CambioPantalla", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "CambioPantalla") {
           let svc = segue.destinationViewController as! FormulasViewController;
            
           svc.toPass = caso
            
        }
    }


}

