//
//  SHPickerViewDataSource.swift
//  SHPickerView
//
//  Created by SeungHyunLee on 6/2/16.
//  Copyright © 2016 SeungHyun Lee. All rights reserved.
//

import UIKit

/*
 DataSource for 'SHPickerView'.
 */

@objc public protocol SHPickerViewDataSource: NSObjectProtocol {
    
    func numberOfComponentsInPickerView(controller: SHPickerView, picker: UIPickerView) -> Int
    
    func pickerView(controller: SHPickerView, picker: UIPickerView, numberOfRowsInComponent component: Int) -> Int
}