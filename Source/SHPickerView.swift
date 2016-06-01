//
//  SHPickerView.swift
//  SHPickerView
//
//  Created by SeungHyunLee on 6/1/16.
//  Copyright © 2016 SeungHyun Lee. All rights reserved.
//

import UIKit

public class SHPickerView: UIView {
    
    weak public var delegate: SHPickerViewDelegate? {
        didSet {
            picker.delegate = self
        }
    }
    weak public var dataSource: SHPickerViewDataSource? {
        didSet {
            picker.dataSource = self
        }
    }
    
    public var toolbar = UIToolbar()
    public var picker = UIPickerView()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .Cancel, target: self, action: #selector(SHPickerView.onCancelButtonTapped(_:)))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: self, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: #selector(SHPickerView.onDoneButtonTapped(_:)))
        toolbar.setItems([cancelButton, flexibleSpace, doneButton], animated: true)
        
        addSubview(picker)
        addSubview(toolbar)
    }
    
    public override func layoutSubviews() {
        picker.frame = CGRect(x: 0.0, y: 44.0, width: frame.width, height: 256.0)
        toolbar.frame = CGRect(x: 0.0, y: 0.0, width: frame.width, height: 44.0)
    }
    
    func onCancelButtonTapped(sender: UIBarButtonItem) {
        delegate?.pickerView?(self, picker: picker, didCancelBarButtonTapped: sender)
    }
    
    func onDoneButtonTapped(sender: UIBarButtonItem) {
        let row = self.picker.selectedRowInComponent(0)
        delegate?.pickerView?(self, picker: picker, didDoneBarButtonTapped: sender, selectedRow: row)
    }
}

