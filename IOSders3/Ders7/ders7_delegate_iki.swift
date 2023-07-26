//
//  ders7_delegate_iki.swift
//  IOSders3
//
//  Created by Kurumsal on 25.07.2023.
//

import Foundation

class SayfaIki
{
    var delegate:ProtokolDeneme?
    var ikincisayfaveri = 10
    
    func process()
    {
        delegate?.DenemeMetodu(veri: ikincisayfaveri)
    }
}
