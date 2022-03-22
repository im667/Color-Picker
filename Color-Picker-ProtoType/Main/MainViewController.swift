//
//  ViewController.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/11.
//

import UIKit

class MainViewController: UIViewController,BoardSettingDelegate {
    
  
  
    let mainView = MainView()
    

    
    override func loadView() {
        self.view = mainView
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        mainView.nameLabel.textColor = .black
        mainView.imageView.backgroundColor = .black
        
        
        self.navigationItem.title = "The Color Change App"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(clickedBarButton))
     
    }

    @objc func clickedBarButton() {
        
        let vc = SubViewController()
        
        vc.delegate = self
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }

    func changeSetting(textColor: String, imageColor: String) {
        self.mainView.nameLabel.textColor = UIColor(hex: textColor)
        self.mainView.imageView.backgroundColor = UIColor(hex: imageColor)
    }
    
    
  
}



    
   
    
    
    
