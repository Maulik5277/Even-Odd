//
//  ResultVC.swift
//  Even-Odd
//
//  Created by DCS on 15/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import Foundation
import UIKit

class ResultVC: UIViewController {
    
    var result = ""
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = ""
        label.textAlignment = .center
        label.backgroundColor = .white
        label.layer.cornerRadius = 45
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = .white
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1.jpg")!)
        view.addSubview(myLabel)
        
        myLabel.text = result
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myLabel.frame = CGRect(x: 40, y: (view.height/2) - 30, width: view.width - 80, height: 60)
    }
}
