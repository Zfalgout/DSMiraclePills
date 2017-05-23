//
//  ViewController.swift
//  MiraclePills
//
//  Created by Zack Falgout on 5/20/17.
//  Copyright © 2017 Zack Falgout. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var statePicker: UIPickerView!
    
    
    @IBOutlet var statePickerButton: UIButton!
    let states = ["Alaska", "Arkansas", "Alabama", "Texas", "California", "New York", "Florida"]
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var pillPic: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var streetAddressTextField: UITextField!

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var successImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        streetAddressLabel.isHidden = true
        addressTextField.isHidden = true
        zipTextField.isHidden = true
        zipLabel.isHidden = true
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        
        addressLabel.isHidden = false
        addressTextField.isHidden = false
        zipTextField.isHidden = false
        zipLabel.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: UIButton) {
        pillPic.isHidden = true
        pillLabel.isHidden = true
        priceLabel.isHidden = true
        lineView.isHidden = true
        nameLabel.isHidden = true
        nameTextField.isHidden = true
        streetAddressLabel.isHidden = true
        streetAddressTextField.isHidden = true
        cityLabel.isHidden = true
        cityTextField.isHidden = true
        statePickerButton.isHidden = true
        statePicker.isHidden = true
        addressLabel.isHidden = true
        addressTextField.isHidden = true
        zipTextField.isHidden = true
        zipLabel.isHidden = true
        statePickerButton.isHidden = true
        buyNowButton.isHidden = true
        addressLabel.isHidden = true
        stateLabel.isHidden = true
        
        successImage.isHidden = false
        
    }
    
}

