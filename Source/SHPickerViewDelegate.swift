//
//  SHPickerViewDelegate.swift
//  SHPickerView
//
//  Created by SeungHyunLee on 6/2/16.
//  Copyright © 2016 SeungHyun Lee. All rights reserved.
//

import UIKit

/*
 Delegate for 'SHPickerView'.
 */

@objc public protocol SHPickerViewDelegate: UIPickerViewDelegate {
    
    optional func pickerView(controller: SHPickerView, picker: UIPickerView, widthForComponent component: Int) -> CGFloat
    
    optional func pickerView(controller: SHPickerView, picker: UIPickerView, rowHeightForComponent component: Int) -> CGFloat
    
    optional func pickerView(controller: SHPickerView, picker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    
    optional func pickerView(controller: SHPickerView, picker: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString?
    
    optional func pickerView(controller: SHPickerView, picker: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView
    
    optional func pickerView(controller: SHPickerView, picker: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    
    optional func pickerView(controller: SHPickerView, picker: UIPickerView, didCancelBarButtonTapped button: UIBarButtonItem) -> Void
    
    optional func pickerView(controller: SHPickerView, picker: UIPickerView, didDoneBarButtonTapped button: UIBarButtonItem, selectedRow row: Int) -> Void
}