//
//  SubView.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/11.
//

import UIKit
import SnapKit

class SubView: UIView,BaseViewRepresentable {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
        setupFont()
        setupColor()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    
    func setupView() {
        <#code#>
    }
    
    func setupConstraints() {
        <#code#>
    }
    
    func setupColor() {
        <#code#>
    }
    
    func setupFont() {
        <#code#>
    }
    
    
    
    
    
}
