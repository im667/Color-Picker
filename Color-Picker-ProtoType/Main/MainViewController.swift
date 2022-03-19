//
//  ViewController.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/11.
//

import UIKit

class MainViewController: UIViewController {
  
    let mainView = MainView()
    private var viewModel = ViewModel()
    var colors = Color()
    
    override func loadView() {
        self.view = mainView
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewModel.getColor()
    
        mainView.nameLabel.textColor = .black
        mainView.imageView.backgroundColor = .black
        
        
        self.navigationItem.title = "The Color Change App"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(clickedBarButton))
     
    }

    @objc func clickedBarButton() {
        
        let vc = SubViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }

    
    
  
}


extension MainViewController: ViewControllerDelegate {
    func getColor() {
        <#code#>
    }
    
   
    
    
    
}
