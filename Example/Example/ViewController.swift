//
//  ViewController.swift
//  Example
//
//  Created by SeungHyunLee on 6/1/16.
//  Copyright © 2016 SeungHyun Lee. All rights reserved.
//

import UIKit
import SHPickerView

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: SHPickerView!
    
    let pickerList = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension ViewController: SHPickerViewDelegate {
    
    func pickerView(controller: SHPickerView, picker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerList[row]
    }
    
    func pickerView(controller: SHPickerView, picker: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(pickerList[row])
    }
    
    func pickerView(controller: SHPickerView, picker: UIPickerView, didCancelBarButtonTapped button: UIBarButtonItem) -> Void {
        print("cancel")
        
    }
    
    func pickerView(controller: SHPickerView, picker: UIPickerView, didDoneBarButtonTapped button: UIBarButtonItem, selectedRow row: Int) -> Void {
        print("done")
    }
}

extension ViewController: SHPickerViewDataSource {
    
    func numberOfComponentsInPickerView(controller: SHPickerView, picker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(controller: SHPickerView, picker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerList.count
    }
}
