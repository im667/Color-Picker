//
//  SettingProtocole.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/18.
//

import UIKit

protocol ColorSetting:AnyObject {
    func changeSetting(textColor:UIColor, imageColor:UIColor)
}
//delegate pattern은 MVVM에 무의미할거같음
