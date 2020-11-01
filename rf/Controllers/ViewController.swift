//
//  ViewController.swift
//  rf
//
//  Created by Kondareddy, Yogesh on 7/3/20.
//  Copyright © 2020 Kondareddy, Yogesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rfCalcButton: UIButton!
    var count: Int!
    @IBOutlet weak var picker: UIPickerView!
    var pickerData: [String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.delegate = self
        self.picker.dataSource = self
        rfCalcButton.setTitle("NewButton", for: .normal)
        rfCalcButton.setTitleColor(.blue, for: .normal)
        count = 0
        pickerData = ["LTE","5GNR"]
        
    }
    @IBAction func whenButtonClicked(_ sender: Any) {
        label.text = "NewName"
        count = count + 1
        label.text = String(count)
        
    }
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
}

