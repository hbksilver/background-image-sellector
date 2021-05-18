//
//  ViewController.swift
//  Ex1
//
//  Created by hassan Baraka on 4/24/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    let ArrayOfColors = ["Green", "Blue", "Yellow"]
    let colors = [UIColor.green, UIColor.blue, UIColor.yellow]
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ArrayOfColors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let row = ArrayOfColors[row]
        return row
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.backgroundColor = colors[row]
    }
    @IBOutlet weak var image3: UIImageView!
    
    
    @IBOutlet weak var myPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myPicker.delegate = self
        self.myPicker.dataSource = self
        
        
    }
    
    
    @IBAction func Bottun1(_ sender: Any) {
       // if image3.isHidden == true {

            //image3.isHidden = false
               //} else {

                    image3.isHidden = true
               // }

    }
    
    @IBAction func Button2(_ sender: Any) {
       // if image3.isHidden == true {

            image3.isHidden = false
               // } else {

                  //  image3.isHidden = true
               // }
        
    }
    
}

