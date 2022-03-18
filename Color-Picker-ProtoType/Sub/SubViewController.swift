//
//  SubViewController.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/11.
//

import UIKit


class SubViewController : UIViewController {
    

    let subView = SubView()
    let viewModel = ViewModel()

    
    override func loadView() {
        
        
        self.view = subView
        subView.backgroundColor = .white
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        subView.textColorButton1.addTarget(self, action: #selector(clickedTextColorButton1), for: .touchUpInside)
        subView.textColorButton2.addTarget(self, action: #selector(clickedTextColorButton1), for: .touchUpInside)
        subView.textColorButton3.addTarget(self, action: #selector(clickedTextColorButton1), for: .touchUpInside)
        subView.textColorButton4.addTarget(self, action: #selector(clickedTextColorButton1), for: .touchUpInside)
        subView.textColorButton5.addTarget(self, action: #selector(clickedTextColorButton1), for: .touchUpInside)
        
    }
    
    
    @objc func clickedTextColorButton1(){
       
        
        
    }
}
