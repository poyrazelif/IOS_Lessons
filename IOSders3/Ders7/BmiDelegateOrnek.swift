//
//  BmiDelegateOrnek.swift
//  IOSders3
//
//  Created by Kurumsal on 25.07.2023.
//

import UIKit

class BmiDelegateOrnek: UIViewController, BMIProtocol {

    var BmiVerileriInstance = ders4ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        BmiVerileriInstance.BMIDelegate = self
        
        self.navigationController?.pushViewController(BmiVerileriInstance, animated: true)
    }
    
//    func delegeEt()
//    {
//        BmiVerileriInstance.BMIDelegate = self
//    }
    
    
}
