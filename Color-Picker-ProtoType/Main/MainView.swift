//
//  View.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/11.
//

import UIKit
import SnapKit
class MainView : UIView, BaseViewRepresentable {
  
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
    
    let subTitleLabel = UILabel()
    let nameLabel = UILabel()
    let imageView = UIImageView()
   
    
    func setupView() {
        [subTitleLabel,nameLabel,imageView].forEach {
            self.addSubview($0)
        }
        self.backgroundColor = .white
        subTitleLabel.text = "컬러를 변경해보세요"
        subTitleLabel.textAlignment = .center
    
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 50
        
        nameLabel.text = "TextColor"
        nameLabel.textAlignment = .center
        
      
        
        
    }
    
    func setupConstraints() {
        subTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.trailing.leading.equalTo(self.safeAreaLayoutGuide).inset(16)
            make.height.equalTo(24)
        }
        
        imageView.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerY.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
        }
        
    
        
        
    }
    
    func setupColor() {
        subTitleLabel.textColor = UIColor(hex: BaseColor.gray4)
        imageView.backgroundColor = UIColor(hex: MainColor.mainDark)
        nameLabel.textColor = UIColor(hex: MainColor.mainDark)
    }
    
    func setupFont() {
        subTitleLabel.font = FontSystem.title1_M16
        
        nameLabel.font = FontSystem.body1_M16
    
        
    }
    
  
    
    
}
