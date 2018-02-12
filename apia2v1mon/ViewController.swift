//
//  ViewController.swift
//  apia2v1mon
//
//  Created by Mohammed Abunada on 2018-02-05.
//  Copyright © 2018 Mohammed Abunada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var slide1: UISlider!
    
    
    @IBOutlet weak var ColorView: UIView!
    
    @IBOutlet weak var Textinput1: UITextField!
    @IBOutlet weak var Textinput2: UITextField!
    
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var theFancyText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view, typically from a nib.
   
    theFancyText.text="Hi their"
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func TextChangeFn(_ sender: Any) {
        
        theFancyText.text  = String("* "+Textinput1.text!+" * ")
    }
    
    @IBAction func TextChange2Fn(_ sender: Any) {
        theFancyText.text  = String("* "+Textinput2.text!+" * ")

    }
    
    @IBAction func ClickFn(_ sender: Any) {
        theFancyText.text = "Hi their All"
        theFancyText.textColor = UIColor.red
    
        
    }
    
    
    
    @IBAction func SliderChangeFn(_ sender: UISlider) {
        
        theFancyText.text = String(round(sender.value * 10) / 10)
        ColorView.backgroundColor = UIColor(red: CGFloat(slide1.value), green: CGFloat(slide1.value*3), blue: CGFloat(slide1.value*5), alpha: 1)
        bgcolorFn()
        
    }

 //   print(makestars(textToStar: numberTextfield.text!))

    func makestars(textToStar : String) -> String
    {
        let textWithStars = "*** "+textToStar+" ***"
        
        return textWithStars
    }

    func bgcolorFn()
    {
        self.view.backgroundColor = UIColor.red

        
    }
    
    @IBAction func numbergangtvaFn(_ sender: Any) {
        let enternumber1 : Int? ,  enternumber2 : Int?
        var enternumberResult : Int
            enternumber2 =  Int(Textinput2.text!)
            enternumber1 =  Int(Textinput1.text!)
        if (enternumber1 == nil || enternumber2 == nil)
        {
            theFancyText.text  = ("Använda andra sifra")
            ResultLabel.text  = "Nil"
            
        } else
        {
            enternumberResult = enternumber1! *  enternumber2!
            ResultLabel.text  = String(enternumberResult )
            print(enternumberResult)
        }
        
    }
    
    
}


/*
 
 //        enternumber1 = 1 ? 10 : 1

 if (enternumber1 == 0) {
 ResultLabel.text  = ("Det är fel")
 
 } else {
 enternumber1 = enternumber1 * Int(round(slide1.value) )
 ResultLabel.text  = String(enternumber1 )
 print(round(slide1.value) )
 print(enternumber1)
 
 }

 */
