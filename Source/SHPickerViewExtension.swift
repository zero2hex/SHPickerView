//
//  SHPickerViewExtension.swift
//  SHPickerView
//
//  Created by SeungHyunLee on 6/2/16.
//  Copyright © 2016 SeungHyun Lee. All rights reserved.
//

import UIKit

/*
 Extension of 'SHPickerView' for UIPickerViewDelegate and UIPickerViewDataSource.
 */

extension SHPickerView: UIPickerViewDelegate {
    public func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        // Is the widthForComponent function exist?
        if let width = delegate?.pickerView?(self, picker: pickerView, widthForComponent: component) {
            // exist
            return width
        } else {
            // not exist == default value
            return frame.width
        }
    }
    
    public func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        // Is the rowHeightForComponent function exist?
        if let height = delegate?.pickerView?(self, picker: pickerView, rowHeightForComponent: component) {
            // exist
            return height
        } else {
            // not exist == default value
            return 44.0
        }
    }
    
    public func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return delegate?.pickerView?(self, picker: pickerView, titleForRow: row, forComponent: component)
    }
    
    public func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return delegate?.pickerView?(self, picker: pickerView, attributedTitleForRow: row, forComponent: component)
    }
    
    public func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        delegate?.pickerView?(self, picker: pickerView, didSelectRow: row, inComponent: component)
    }
    
}

extension SHPickerView: UIPickerViewDataSource {
    public func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        // Is the dataSource function exist?
        if let components = dataSource?.numberOfComponentsInPickerView(self, picker: pickerView) {
            // exist
            return components
        } else {
            // not exist == default value
            return 0
        }
    }
    
    public func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // Is the dataSource function exist?
        if let rows = dataSource?.pickerView(self, picker: pickerView, numberOfRowsInComponent: component) {
            // exist
            return rows
        } else {
            // not exist == default value
            return 0
        }
    }
}