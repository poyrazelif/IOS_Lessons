//
//  ders7_delegate_bir.swift
//  IOSders3
//
//  Created by Kurumsal on 25.07.2023.
//

import UIKit

class ders7_delegate_bir: UIViewController, ProtokolDeneme {

    var ikinciSayfaInstance = SayfaIki()
    override func viewDidLoad() {
        super.viewDidLoad()
        ikinciSayfaInstance.delegate = self
        ikinciSayfaInstance.process()
        
        //print(ikinciSayfaInstance is ProtokolDeneme) ikincisayfainstance ProtokolDeneme tipinden midir sorgusu
    }

}
