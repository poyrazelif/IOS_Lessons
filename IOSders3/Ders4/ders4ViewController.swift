//
//  ders4ViewController.swift
//  IOSders3
//
//  Created by Kurumsal on 20.07.2023.
//

import UIKit

enum BMI:String
{
    case zayıf = "zayıf"
    case normal = "normal"
    case cokkilolu = "kilolu"
    case obez = "obez"
}
class ders4ViewController: UIViewController {

    //var animals = ["At","Kedi","Fil","Köpek","piton","zürafa"]
   // var numbers = [12,15,43,67,23,86,13,6,135,756,85,79,1,2,3,4]
    var BMIDelegate:BMIProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
           // bmivc.delegeEt()
        BMICikti(bmiArray: [(name:"elif",bmi:12.5,status:.normal)])
        
        //calculateBMI()
        //FilterAnimals()
        //FilterNumbers()
        //calculateBMI()
       // sortArray()
        // Do any additional setup after loading the view.
        
      // print( BolunenAl(numbers: numbers))
    }

    
//    func FilterAnimals()
//    {
//        let filteredArr = animals.filter{$0.contains("K")}
//        print(filteredArr)
//    }
//
//    func FilterNumbers()
//    {
//        let filteredMuns = numbers.filter(
//            {
//                number in number % 2 == 0
//            }).filter{isGreater($0)}
//
//        print(filteredMuns)
//    }
//
//    func sampleEnumarate()
//    {
//        animals.enumerated().forEach({index,animal in
//            print(index)
//            print(animal)
//        })
//    }
//    func sortArray()
//    {
//        animals.sort(by: {$0 > $1 })
//        print(animals)
//
//        animals.reverse()
//        print(animals)
//    }
//
//    func isGreater(_ number : Int)->Bool
//    {
//        let returnValue = number > 4
//        return returnValue
//    }
//
//    func BolunenAl(numbers:[Int]) -> [Int]
//    {
//        var numbers2 = numbers.filter({number in number % 3 == 0}).filter({number in number>10})
//        return numbers2
//    }
    
//    let possibleNumbers = ["1", "2", "three", "///4///", "5"]
//
//
//    let mapped: [Int?] = possibleNumbers.map { str in Int(str) }
//    // [1, 2, nil, nil, 5]
//
//
//    let compactMapped: [Int] = possibleNumbers.compactMap { str in Int(str) }
    // [1, 2, 5]
    
    var user = [(name:"tarik", weight:70.1,height:1.74),
                 (name:"ahmet", weight:75.5,height:1.84),
                 (name:"melih", weight:80.1,height:1.64),
                (name:"cenk", weight:70.0,height:1.85),
                 (name:"mert", weight:60.1,height:1.94),
                 (name:"ayse", weight:50.1,height:1.70),nil,nil]
     
    private func calculateBMI()
    {
        var bmiArray = [(name:String,bmi:Double,status:BMI)]()
        user.forEach { user in
            //dizideki nil leri ayıklarken compactmap daha optimize
            guard let user2 = user else{return}
                let userW = user2.weight
                let userH = user2.height
                
                let bmi = userW / (userH * userH)
               // bmiArray.append((user2.name,bmi))
            
            switch bmi {
            case 0..<18.6:
                bmiArray.append((user2.name,bmi,.zayıf))
            case 18.5..<26:
                bmiArray.append((user2.name,bmi,.normal))
            case 25..<31:
                bmiArray.append((user2.name,bmi,.cokkilolu))
            case 30...:
                bmiArray.append((user2.name,bmi,.obez))
            default:
                break
            }
            }
        BMICikti(bmiArray: bmiArray)
       
        //showBMIStatus(userBMIs: bmiArray)
        //let filteredBMIArr = bmiArray.filter { $0.bmi < 25 }
        //print(filteredBMIArr)
        //FilterBMI(arr: bmiArray)
    }
    func BMICikti(bmiArray:[(name:String,bmi:Double,status:BMI)])
    {
        for userBMI in bmiArray {
            let bmi = userBMI.bmi
            let name = userBMI.name
            let status = userBMI.status
            
            switch status {
            case .zayıf:
                BMIDelegate?.Yazdir(bmiEnum: .zayıf)
              //  print("\(name) - status:\(status.rawValue)")
            case .normal:
                BMIDelegate?.Yazdir(bmiEnum: .normal)
                //print("\(name) - status:\(status.rawValue)")
            case .cokkilolu:
                print("\(name) - status:\(status.rawValue)")
            case .obez:
                print("\(name) - status:\(status.rawValue)")
            default:
                break
            }
    }
    
//    private func showBMIStatus(userBMIs: [(name: String, bmi: Double)]) {
//        for userBMI in userBMIs {
//
//            let bmi = userBMI.bmi
//            let name = userBMI.name
//
//            switch bmi {
//            case 0..<18.6:
//                print("\(name) - Zayıf")
//            case 18.5..<26:
//                print("\(name) - Normal")
//            case 25..<31:
//                print("\(name) - Fazla Kilolu")
//            case 30...:
//                print("\(name) - Obez")
//            default:
//                break
//            }
//        }
        
        
        //    func FilterBMI(arr:[(name:String,bmi:Double)])
        //    {
        //        let filteredBMIArr = arr.filter { $0.bmi > 25 }
        //        print(filteredBMIArr)
        //    }
        
    }
}

