//
//  ViewController.swift
//  Even-Odd
//
//  Created by DCS on 15/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Even-odd"
        label.backgroundColor = .clear
        label.textAlignment = .center
        return label
    }()
    
    private let myTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Number"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .white
        return textField
    }()
    
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Check", for: .normal)
        button.addTarget(self, action: #selector(checkEvenOdd), for: .touchUpInside)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 12
        
        return button
    }()
    
    @objc private func checkEvenOdd() {
        print("checking..")
        
        guard let num = Int(myTextField.text!) else {
            let alert = UIAlertController(title: "Error!!", message: "You Allow Only Enter NUmber", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
            DispatchQueue.main.async {
                self.present(alert, animated: true, completion: nil)
            }
            return
        }
        
        let vc = ResultVC()
        
        if num % 2 == 0 {
            vc.result = "Even Number"
        } else {
            vc.result = "Odd Number"
        }
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myLabel)
        view.addSubview(myTextField)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1.jpg")!)
        view.addSubview(myButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myTextField.frame = CGRect(x: 40, y: (view.height/2) - 50, width: view.width - 80, height: 60)
        myButton.frame = CGRect(x: 40, y: myTextField.bottom+20, width: view.width - 80, height: 60)
    }
}

