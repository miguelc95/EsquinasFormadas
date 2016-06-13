//
//  FormulasViewController.swift
//  EsquinasFormadas
//
//  Created by Miguel Cuellar on 4/7/16.
//  Copyright © 2016 Miguel Cuellar. All rights reserved.
//

import UIKit

var X1:Double = 0
var X2:Double = 0
var Y1:Double = 0
var Y2:Double = 0

class FormulasViewController: UIViewController {
var toPass:Int!
    

    @IBOutlet weak var ResultadoX: UILabel!
    
    @IBOutlet weak var ResultadoX2: UILabel!
    
    @IBOutlet weak var ResultadoY: UILabel!
    
    @IBOutlet weak var ResultadoY2: UILabel!
    
    @IBOutlet weak var CajaX: UITextField!
    
    @IBOutlet weak var CajaY: UITextField!
    
    @IBOutlet weak var CajaAlpha: UITextField!
    
    @IBOutlet weak var CajaAngulo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CajaX.text=""
        CajaY.text=""
        CajaAlpha.text=""
        CajaAngulo.text=""
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(FormulasViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func uno (R:Double,Alpha:Double) -> Double{
        
        return R*(cos(Alpha))
        
    }
    func dos (R:Double,alpha:Double) -> Double {
        
        return R - uno(R, Alpha: alpha)
        
    }
    func tres (R:Double,alpha:Double) -> Double {
        
        return dos(R, alpha: alpha) / tan(alpha)
    }
    
    func cuatro (R:Double,alpha:Double) -> Double {
        
        return (R * sin(alpha)) - tres(R, alpha: alpha)
    }
    
    func caso1 (valorX:Double,valorY:Double,R:Double,alpha:Double) {
        
        ResultadoX2.text = String(valorX + cuatro(R, alpha: alpha)) //
        
        ResultadoY2.text = String(valorY)
        
        ResultadoX.text = String(valorX - tres(R, alpha: alpha))
        
        ResultadoY.text = String(valorY - dos(R, alpha: alpha)) //
        
    }
    
    func caso2 (valorX:Double,valorY:Double,R:Double,alpha:Double) {
        
        ResultadoX2.text = String(valorX - cuatro(R, alpha: alpha))
        
        ResultadoY2.text = String(valorY)
        
        ResultadoX.text = String(valorX + tres(R, alpha: alpha))
        
        ResultadoY.text = String(valorY - dos(R, alpha: alpha))
        
    }
    
    func caso3(valorX:Double,valorY:Double,R:Double,alpha:Double) {
        
        ResultadoX2.text = String(valorX - tres(R, alpha: alpha))
        
        ResultadoY2.text = String(valorY + dos(R, alpha: alpha))
        
        ResultadoX.text = String(valorX + cuatro(R, alpha: alpha))
        
        ResultadoY.text = String(valorY)
        
    }
    
    func caso4 (valorX:Double,valorY:Double,R:Double,alpha:Double) {
        
        ResultadoX2.text = String(valorX + tres(R, alpha: alpha))
        
        ResultadoY2.text = String(valorY + dos(R, alpha: alpha))
        
        ResultadoX.text = String(valorX - cuatro(R, alpha: alpha))
        
        ResultadoY.text = String(valorY)
    }
    
    func caso5 (valorX:Double,valorY:Double,R:Double,alpha:Double) {
        
        
        ResultadoX2.text = String(valorX)
        
        ResultadoY2.text = String(valorY - cuatro(R, alpha: alpha))
        
        ResultadoX.text = String(valorX + dos(R, alpha: alpha))
        
        ResultadoY.text = String(valorY + tres(R, alpha: alpha))
    }
    
    func caso6 (valorX:Double,valorY:Double,R:Double,alpha:Double) {
        
        ResultadoX2.text = String(valorX)
        
        ResultadoY2.text = String(valorY - cuatro(R, alpha: alpha))
        
        ResultadoX.text = String(valorX - dos(R, alpha: alpha))
        
        ResultadoY.text = String(valorY + tres(R, alpha: alpha))
    }
    
    func caso7 (valorX:Double,valorY:Double,R:Double,alpha:Double) {
        
        ResultadoX2.text = String(valorX)
        
        ResultadoY2.text = String(valorY + cuatro(R, alpha: alpha))
        
        ResultadoX.text = String(valorX + dos(R, alpha: alpha))
        
        ResultadoY.text = String(valorY - tres(R, alpha: alpha))
        
    }
    
    func caso8 (valorX:Double,valorY:Double,R:Double,alpha:Double) {
        
        ResultadoX2.text = String(valorX)
        
        ResultadoY2.text = String(valorY + cuatro(R, alpha: alpha))
        
        ResultadoX.text = String(valorX - dos(R, alpha: alpha))
        
        ResultadoY.text = String(valorY - tres(R, alpha: alpha))
    }

    @IBAction func Presionado(sender: AnyObject) {
        var X1 :Double = Double(CajaX.text!)!
        var Y1 = Double(CajaY.text!)!
        var alpha = Double(CajaAlpha.text!)!
        var R = Double(CajaAngulo.text!)!
        
        switch toPass {
        case 1:
            caso1(X1, valorY: Y1, R: R, alpha: alpha)
            break
        case 2:
            caso2(X1, valorY: Y1, R: R, alpha: alpha)
            break
        case 3:
            caso3(X1, valorY: Y1, R: R, alpha: alpha)
            break
        case 4:
            caso4(X1, valorY: Y1, R: R, alpha: alpha)
            break
        case 5:
            caso5(X1, valorY: Y1, R: R, alpha: alpha)
            break
        case 6:
            caso6(X1, valorY: Y1, R: R, alpha: alpha)
            break
        case 7:
            caso7(X1, valorY: Y1, R: R, alpha: alpha)
            break
        case 8:
            caso8(X1, valorY: Y1, R: R, alpha: alpha)
            break
            
        default: break
            
        }

    }
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}
