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

    weak var delegate: ViewModelDelegate?
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

        let vm = ViewModel()
        vm.textColors.value = self.textColor
        vm.imageColors.value = self.imageColor
//
        self.delegate?.changeColor (
            textColor: self.textColor,
            imageColor: self.imageColor
        )
    

        self.navigationController?.popViewController(animated: true)
    }
    
}
