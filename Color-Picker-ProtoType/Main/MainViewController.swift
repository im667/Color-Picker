//
//  ViewController.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/11.
//

import UIKit

class MainViewController: UIViewController {
 
    
    let mainView = MainView()
    let viewModel = ViewModel()
    
    override func loadView() {
        self.view = mainView
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

      
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "The Color Change App"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(clickedBarButton))
     
    }

    
    @objc func clickedBarButton() {
        
        let vc = SubViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }

  
}

