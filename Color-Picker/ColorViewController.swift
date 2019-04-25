//
//  ColorViewController.swift
//  Color-Picker
//
//  Created by Park, Joy (MU-Student) on 4/19/19.
//  Copyright © 2019 Park. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    var dataSource = [Color(name: "red", uiColor: UIColor.red),
                      Color(name: "orange", uiColor: UIColor.orange),
                      Color(name: "yellow", uiColor: UIColor.yellow),
                      Color(name: "green", uiColor: UIColor.green),
                      Color(name: "blue", uiColor: UIColor.blue),
                      Color(name: "purple", uiColor: UIColor.purple),
                      Color(name: "brown", uiColor: UIColor.brown)]
    
    var index = 0
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        detailLabel.text = dataSource[index].name
        self.view.backgroundColor = dataSource[index].uiColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ColorViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        detailLabel.text = dataSource[row].name
        self.view.backgroundColor = dataSource[row].uiColor
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row].name
    }
    
}
