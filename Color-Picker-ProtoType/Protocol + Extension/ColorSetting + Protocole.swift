
  SettingProtocole.swift
  Color-Picker-ProtoType

  Created by mac on 2022/03/18.


import UIKit

protocol ColorSetting:AnyObject {
    func changeSetting(textColor:UIColor, imageColor:UIColor)
}
//delegate pattern + MVVM 적용 연습하기
