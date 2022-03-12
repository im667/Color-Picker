//
//  SubViewController.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/11.
//

import UIKit


class SubViewController : UIViewController {
    
    let mainView = SubView()
    
    override func loadView() {
        
        
        self.view = mainView
        mainView.backgroundColor = .white
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
