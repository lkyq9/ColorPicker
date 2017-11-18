//
//  ViewController.swift
//  ColorPicker
//
//  Created by Lydia Krasucki on 11/17/17.
//  Copyright © 2017 Lydia Krasucki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var colorpicker: UIPickerView!
    
    let colors = ["Red","Orange","Yellow","Green","Blue","Purple"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row]
        
        if (row == 0)
        {
            self.view.backgroundColor = UIColor.red;
    
        }
    
        else if ( row == 1)
        {
            self.view.backgroundColor = UIColor.orange;
            
        }
    
        else if (row == 2)
        {
            self.view.backgroundColor = UIColor.yellow;
            
        }
    
        else if (row == 3)
        {
            self.view.backgroundColor = UIColor.green;
            
        }
    
        else if (row == 4)
        {
            self.view.backgroundColor = UIColor.blue;
            
        }
    
        else
        {
            self.view.backgroundColor = UIColor.purple;
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

