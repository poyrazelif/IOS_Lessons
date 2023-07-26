//
//  ViewController.swift
//  IOSders3
//
//  Created by Kurumsal on 19.07.2023.
//

import UIKit

class ViewController: UIViewController {
    var arr1 = [45,15,90,135]
    let array2 = [(name:"Ali",score:50),(name:"Aylin",score:25),(name:"Ayşe",score:10),(name:"öykü",score:40),(name:"öykü",score:40)]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // print(KareAl(sayi: 6))
        //print(CemberHesapla(yarıCap: 7.2))
        
        guard let hesaplananDizi = HarfNotuHesapla(ogrenciArray: array2) else{ return }
       // print(hesaplananDizi)
        
        // var arr2 = asalBul(sayilarArray:arr1)
       // print(arr2)
        
    }
    
    func HarfNotuHesapla(ogrenciArray:[(name:String,score:Int)]) -> [(name:String,harfNotu:String)]?
    {
        var harfNotları:[(name:String,harfNotu:String)]?
        
        for ogrenci in ogrenciArray
        {
            switch ogrenci.score {
            case 90...100 :
                harfNotları?.append((ogrenci.name,"AA"))
            case 80...89 :
                harfNotları?.append((ogrenci.name,"BA"))
//            case 70...79 :
//                harfNotları.append((ogrenci.name,"BB"))
//            case 60...69 :
//                harfNotları.append((ogrenci.name,"CB"))
//            case 50...59 :
//                harfNotları.append((ogrenci.name,"CC"))
//            case 40...49 :
//                harfNotları.append((ogrenci.name,"DC"))
//            case 30...39 :
//                harfNotları.append((ogrenci.name,"DD"))
//            case 0...29 :
//                harfNotları.append((ogrenci.name,"FF"))
            default: break
                
            }
        }
        return harfNotları
    }
    
    func KareAl(sayi:Int?)
    {   var tempSayi2:Int
        guard let tempSayi = sayi else { return }
        tempSayi2 = tempSayi * tempSayi
        if(tempSayi2%2==0)
        {
            print("sayi çifttir.")
        }
        else { print("sayi tektir.")}
    }
    
    func CemberHesapla(yarıCap:Double?)
    {
        let pi=3.14
        guard let r = yarıCap else { return }
        let cevre = 2 * pi * r
        let _ = pi * r * r
        
        switch cevre {
        case 0..<50:
            print("potakal")
        case 50...100:
            print("dünya")
        default:
            print("güneş")
        }
    }
    

//    func asalBul(sayilarArray:[Int]) -> ([Int])
//    {
//        var Arr2 : [Int] = []
//        for sayi in sayilarArray
//        {
//            if sayi==2
//            {
//                Arr2.append(sayi)
//            }
//            if sayi>2
//            {
//                for i in 2..<sayi
//                {
//                    if(sayi%i==0)
//                    {
//                        print(i)
//                        break
//                    }
//                    else{
//                        if !Arr2.contains(sayi)
//                        {
//                            Arr2.append(sayi)
//                            print(Arr2)
//                        }
//                    }
//                }
//            }
//        }
//        return Arr2
//    }
}

