//
//  BMIProtocol.swift
//  IOSders3
//
//  Created by Kurumsal on 25.07.2023.
//

import Foundation

protocol BMIProtocol
{
    func Yazdir(bmiEnum: BMI)
}

extension BMIProtocol
{
    func Yazdir(bmiEnum: BMI)
    {
       print( bmiEnum.rawValue )
    }

}
