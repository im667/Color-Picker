//
//  SubViewController.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/11.
//

import UIKit

protocol BoardSettingDelegate:AnyObject {
    
    func changeSetting(textColor:String, imageColor:String) -> Void
    
}

class SubViewController : UIViewController {
    
    
    let subView = SubView()
  
    weak var delegate: BoardSettingDelegate?
    var textColor = ""
    var imageColor = ""
    
    override func loadView() {
        
        
        self.view = subView
        subView.backgroundColor = .white
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(saveBarButton))
        
        subView.textColorButton1.addTarget(self, action: #selector(clickedTextColorButton1), for: .touchUpInside)
        subView.textColorButton2.addTarget(self, action: #selector(clickedTextColorButton2), for: .touchUpInside)
        subView.textColorButton3.addTarget(self, action: #selector(clickedTextColorButton3), for: .touchUpInside)
        subView.textColorButton4.addTarget(self, action: #selector(clickedTextColorButton4), for: .touchUpInside)
        subView.textColorButton5.addTarget(self, action: #selector(clickedTextColorButton5), for: .touchUpInside)
        
        subView.bgButton1.addTarget(self, action: #selector(clickedBgButton1), for: .touchUpInside)
        subView.bgButton2.addTarget(self, action: #selector(clickedBgButton2), for: .touchUpInside)
        subView.bgButton3.addTarget(self, action: #selector(clickedBgButton3), for: .touchUpInside)
        subView.bgButton4.addTarget(self, action: #selector(clickedBgButton4), for: .touchUpInside)
        subView.bgButton5.addTarget(self, action: #selector(clickedBgButton5), for: .touchUpInside)
        
        
    }
    
    @objc func clickedBgButton1(){
        self.imageColor = MainColor.mainBright
        
    }
    
    @objc func clickedBgButton2(){
        self.imageColor = MainColor.mainDark
        
    }
    
    @objc func clickedBgButton3(){
        self.imageColor = MainColor.mainColor
        
    }
    
    @objc func clickedBgButton4(){
        self.imageColor = BaseColor.gray1
        
    }
    
    @objc func clickedBgButton5(){
        self.imageColor = BaseColor.gray2
        
    }
    
   
    @objc func clickedTextColorButton1(){
       
        self.textColor = MainColor.mainBright
        print("\(self.textColor)")
        
    }
    @objc func clickedTextColorButton2(){
       
        self.textColor = MainColor.mainDark
        print("\(self.textColor)")
        
    }
    @objc func clickedTextColorButton3(){
       
        self.textColor = MainColor.mainColor
        print("\(self.textColor)")
    }
    
    @objc func clickedTextColorButton4(){
        self.textColor = BaseColor.gray1
        print("\(self.textColor)")
    }
    
    @objc func clickedTextColorButton5(){
        self.textColor = BaseColor.gray2
        print("\(self.textColor)")
    }
    
    @objc func saveBarButton(){
             
     
        self.delegate?.changeSetting(
            textColor: self.textColor,
            imageColor: self.imageColor
        )
    

        self.navigationController?.popViewController(animated: true)
    }
    
}
