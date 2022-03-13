//
//  ViewController.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/11.
//

import UIKit

class MainViewController: UIViewController {

    override func loadView() {
        self.view = MainView()
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

