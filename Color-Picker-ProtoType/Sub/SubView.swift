//
//  SubView.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/11.
//

import UIKit
import SnapKit

class SubView: UIView,BaseViewRepresentable {
    
    let textSettingLabel = UILabel()
    
    let textColorButtonStackView = UIStackView()
    let textColorButton1 = UIButton()
    let textColorButton2 = UIButton()
    let textColorButton3 = UIButton()
    let textColorButton4 = UIButton()
    let textColorButton5 = UIButton()
    
    let backgroundSettingLabel = UILabel()
    
    let bgButton1 = UIButton()
    let bgButton2 = UIButton()
    let bgButton3 = UIButton()
    let bgButton4 = UIButton()
    let bgButton5 = UIButton()
    
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
        [textSettingLabel, textColorButtonStackView].forEach {
            self.addSubview($0)
        }
        
        textSettingLabel.text = "표시 색상을 선택해주세요"
        
        [textColorButton1,textColorButton2,textColorButton2,textColorButton3,textColorButton4,textColorButton5].forEach {
            textColorButtonStackView.addArrangedSubview($0)
        }
        
        textColorButtonStackView.axis = .horizontal
        textColorButtonStackView.spacing = 24
        
        
        [backgroundSettingLabel,bgButton1,bgButton2,bgButton3,bgButton4,bgButton5].forEach {
            self.addSubview($0)
        }
        
        backgroundSettingLabel.text = "배경색상을 선택해주세요"
        
        
        
    }
    
    func setupConstraints() {
        textSettingLabel.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leading.equalToSuperview().inset(16)
        }
        
       let buttonArray = [textColorButton1,textColorButton2,textColorButton3,textColorButton4,textColorButton5]
        
        buttonArray.forEach { make in
            make.snp.makeConstraints { make in
                make.width.height.equalTo(32)
            }
        }

        
        
        textColorButtonStackView.snp.makeConstraints { make in
            make.top.equalTo(textSettingLabel.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
        }
        
        
        
    }
    
    func setupColor() {
        
        
        let buttonArray = [textColorButton1,textColorButton2,textColorButton3,textColorButton4,textColorButton5]
        
        buttonArray.forEach { btn in
            btn.backgroundColor = UIColor(hex: MainColor.mainDark)
        }
    }
    
    func setupFont() {
        
    }
    
    
    
    
    
}
