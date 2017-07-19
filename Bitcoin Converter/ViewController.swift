//
//  ViewController.swift
//  Bitcoin Converter
//
//  Created by pras on 7/11/17.
//  Copyright © 2017 omrobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
    var countryData: [String] = [String]()

    @IBOutlet weak var pvCountry: UIPickerView!
    
    @IBAction func btnCountry(_ sender: UIButton) {
        pvCountry.isHidden = !pvCountry.isHidden
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // connect to picker view
        self.pvCountry.delegate = self
        self.pvCountry.dataSource = self
        
        // create dummy picker data
        countryData = ["Indonesian Rupiah", "United States Dollar", "Japanese Yen", "Malaysian Ringgit", "Singapore Dollar", "Australian Dollar"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // picker view
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countryData.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countryData[row] as String
    }
    //---
    
}

