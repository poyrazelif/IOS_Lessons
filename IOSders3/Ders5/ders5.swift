//
//  ders5.swift
//  IOSders3
//
//  Created by Kurumsal on 21.07.2023.
//

import UIKit

enum EmusyonFactor:Double
{
    case Benzinli = 1000
    case LPG = 800
    case ev = 600
    case eBike = 300
    case bike = 100
    case yenilenebilir = 0
}

class ders5: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       Averagecalculate(dictArr: CarbonHesapla(KarbonVerileri: KarbonDatalar) )
      print(WeatherYazdir(cityName: "İstanbul"))
    }
    
    ///yılda yaptığı km * karbonsalınım factorü
    var KarbonDatalar:[(name:String,kmyıl:Double,vehicleEmusyon:EmusyonFactor)] = [(name:"Elif",kmyıl:100,vehicleEmusyon:.Benzinli),(name:"Ayşe",kmyıl:49,vehicleEmusyon:.bike),(name:"Can",kmyıl:4000,vehicleEmusyon:.ev),(name:"cansu",kmyıl:300,vehicleEmusyon:.LPG),(name:"suzan",kmyıl:50,vehicleEmusyon:.eBike),(name:"Ece",kmyıl:700,vehicleEmusyon:.yenilenebilir)]
    
    func CarbonHesapla(KarbonVerileri:[(name:String,kmyıl:Double,vehicleEmusyon:EmusyonFactor)]) -> [[String:Double]]
    {
        var dictArr = [[String:Double]]()
        var dict:[String:Double] = [:]
        
        KarbonVerileri.forEach{ kisi in
            var kisiAd = kisi.name
            var kisiKmYıl:Double = kisi.kmyıl
            var kisiEmusyon = kisi.vehicleEmusyon
            var karbonIzi = kisiKmYıl * kisiEmusyon.rawValue
            
            dict = ["kisiKM":kisi.kmyıl,"kisiEmusyon":karbonIzi]
            
            dictArr.append(dict)
        
            switch karbonIzi
            {
            case 0..<10000:
                print("Kişi : \(kisiAd) Karbon Ayak İzi : \(karbonIzi) - Az ")
            case 10000..<30000:
                print("Kişi : \(kisiAd) Karbon Ayak İzi : \(karbonIzi) - Orta")
            case 30000..<60000:
                print("Kişi : \(kisiAd) Karbon Ayak İzi : \(karbonIzi) - Yüksek ")
            case 60000..<90000:
                print("Kişi : \(kisiAd) Karbon Ayak İzi : \(karbonIzi) - Çok yüksek")
            case 90000...:
                print("Kişi : \(kisiAd) Karbon Ayak İzi : \(karbonIzi) - Çok çok yüksek")
            default:
                break
            }
        }
        return dictArr
    }
    
    func Averagecalculate(dictArr:[[String:Double]])
    {
        var average = Double()
        dictArr.forEach{dict in
            average += dict["kisiEmusyon"]!
        }
        
        average = average / Double(dictArr.count)
        print(average)
    }
    
   // hava durumu uyg : rainy,snowy,cloudy,sunny caseleri olacak. Tupple arr olacak tupple(cityname:) switchle kontrol et printle hava durumuna göre yazacak. enumla switch i kontrol et func parametresi string
    
    var WeatherArray:[(CityName:String,Temp:Double,Weather:weathers)] = [("Erzurum",10,.snowy),("İstanbul",30,.sunny),("Amasya",24,.cloudy),("Balıkesir",22,.cloudy),("Kocaeli",21,.rainy)]
    
    func WeatherYazdir(cityName:String) -> String
    {
        var CityData:(CityName:String,Temp:Double,Weather:weathers)?
        
        CityData = WeatherArray.filter({$0.CityName == cityName}).first
        
        // filter ile yapmak daha iyi yöntem ama aşağıdaki de çalışır
//        for i in 0..<WeatherArray.count
//        {
//            if( WeatherArray[i].CityName == cityName )
//            {
//                CityData = WeatherArray[i]
//                break
//            }
//        }
        
        if let citydata2 = CityData
        {
            switch citydata2.Weather {
            case .snowy:
                return "\(citydata2.CityName) şehrinin hava durumu : \(citydata2.Weather)"
            case .rainy:
                return "\(citydata2.CityName) şehrinin hava durumu : \(citydata2.Weather)"
            case .cloudy:
                return "\(citydata2.CityName) şehrinin hava durumu : \(citydata2.Weather)"
            case .sunny:
                return "\(citydata2.CityName) şehrinin hava durumu : \(citydata2.Weather)"
            }
        }
        return ""
    }
}

enum weathers
{
    case sunny
    case rainy
    case snowy
    case cloudy
}
