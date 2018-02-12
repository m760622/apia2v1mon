//
//  secoundVC.swift
//  apia2v1mon
//
//  Created by Mohammed Abunada on 2018-02-05.
//  Copyright © 2018 Mohammed Abunada. All rights reserved.
//

import UIKit

class secoundVC: UIViewController {

    
    @IBOutlet weak var ColorView: UIView!
    @IBOutlet weak var CounterText: UILabel!
    @IBOutlet weak var slide1: UISlider!
    
    @IBOutlet weak var stepperNumbers: UIStepper!
    
    @IBAction func stepperNumbersFn(_ sender: Any) {
        
        print(stepperNumbers.value)
    }
    
    
    @IBAction func SliderChangeFn(_ sender: Any) {
        ColorView.backgroundColor = UIColor(red: CGFloat(slide1.value), green: CGFloat(slide1.value*3), blue: CGFloat(slide1.value*5), alpha: 1)

    }
    
    var counterVal : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func CounterPFn(_ sender: Any) {
        counterVal = counterVal + 1
        CounterText.text = String( counterVal)
    }
    
    @IBAction func CounterMFn(_ sender: Any) {
        counterVal = counterVal - 1
        CounterText.text = String( counterVal)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
