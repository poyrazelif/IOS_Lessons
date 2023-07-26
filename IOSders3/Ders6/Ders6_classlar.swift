//
//  Ders6_classlar.swift
//  IOSders3
//
//  Created by Kurumsal on 24.07.2023.
//

import UIKit
enum Kullanım : Int
{
    case microwave = 2
    case kettle = 12
    case hairDryer = 22
    case fridge = 60
    case dishwasher = 32
}
enum UsageType : Double
{
    case individual = 0.50
    case commercial = 0.75
    case industry = 1.1
}
enum UnitPrice : Double
{
    case under240kwh = 0.55
    case more240kwh = 1.20
    case under900kwh = 1.53
    case more900kwh = 2.30
    case standard = 2.55
}

class Ders6_classlar: UIViewController {

//    var userObj = User(place: "Sakarya") // init ederken init fonksiyonu yazdığın için oluştururken de boş geçemezsin
//
//    var userArr = [User(surname: "Poyraz", name: "Elif", birthday: 1998)]
   // kurutma 12kwh bulaşık 22 kwh
    var urunArr:[Urun?] = [Urun(UrunAdi: "fridge", mKwh: .fridge),Urun(UrunAdi: "saç kurutma makinesi", mKwh: .hairDryer),Urun(UrunAdi: "bulaşık makinesi", mKwh: .dishwasher),Urun(UrunAdi: "kettle", mKwh: .kettle)]
    
    var userArr:[UserUsage?] = [
        UserUsage(userName:"Elif", products: [Urun(UrunAdi: "fridge", mKwh: .fridge),Urun(UrunAdi: "hairdryer", mKwh: .hairDryer),Urun(UrunAdi: "dishwasher", mKwh: .dishwasher)], usageType: .commercial),
        UserUsage(userName:"Melih", products: [Urun(UrunAdi: "hairdryer", mKwh: .hairDryer),Urun(UrunAdi: "kettle", mKwh: .kettle)],usageType: .commercial),
        UserUsage(userName:"Can", products: [Urun(UrunAdi: "hairdryer", mKwh: .hairDryer),Urun(UrunAdi: "microwave", mKwh: .microwave)],usageType: .industry)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        guard let urunAdi = urunArr[0].UrunAdi , let urunAylık = urun.mKwh , let urunYillık = urun.yKwh else {return}
//        print(urunAdi)
//        print(urunAylık)
//        print(urunYillık)
        
//        print(userObj.name) //nil
//        userObj.name = "Can"
//
//        guard let obj = userArr.first else {return}
//        guard let userName = obj.name, let userSurname = obj.surname , let userBirth = obj.birthday else { return }
//
//        let age = obj.calcAge(currentYear: 2023)
//        print(age)
        
//        urunArr.forEach{ urun in
//            guard let urun2 = urun else {return}
//            guard let UrunAdi = urun2.UrunAdi, let UrunAylik = urun2.mKwh , let UrunYillik = urun2.yKwh else{return}
//
//            print( "ürün:\(UrunAdi) yıllık : \(UrunYillik)" )
//        }
//        userArr.forEach{ urun in
//                    guard let urun2 = urun else {return}
//                    guard let UrunAdi = urun2.UrunAdi, let UrunAylik = urun2.mKwh , let UrunYillik = urun2.yKwh else{return}
//
//                    print( "ürün:\(UrunAdi) yıllık : \(UrunYillik)" )
//                }
        KullanıcıListele()
    }
    
    func KullanıcıListele()
    {
        var tempHarcama:Int
        var tempProducts:String = ""
        
        for user in userArr
        {
            tempHarcama = 0
            guard let userUnWrapped = user else {return}
            guard let userAdi = userUnWrapped.userName else {return}
                    userUnWrapped.products.forEach
                        { product in
                            guard let productUnwrappedName = product?.UrunAdi ,let productUnwrappedM = product?.mKwh else{return}
                            tempHarcama += productUnwrappedM.rawValue
                            tempProducts.append(" \(productUnwrappedName),")
                        }
          //  user?.SetUserMonthlyUsage(UsagePerMonth: tempHarcama)
            print((
                        """
                        Kullanıcı : \(userAdi)
                        Cihazlar : \(tempProducts)
                        AT: \(tempHarcama)
                        YT: \(tempHarcama*12)
                        
                        """
            ).uppercased())
        }
    }
//    func hesapla(unitPrice:UnitPrice)
//    {   var montlyUsage = 0
//        userArr.forEach({
//            user in
//            guard let userUnWrapped = user else {return}
//            guard let userAdi = userUnWrapped.userName, let userUsageType = userUnWrapped.usageType  else {return}
//            montlyUsage = CalculateMonthlyUsage(ProductList: userUnWrapped.products)
//
//            switch userUsageType {
//            case .individual:
//                let totalPriceWithServiceFee = Double(montlyUsage) * userUsageType.rawValue
//                var unitPriceSum = 0
//                if montlyUsage <= 240
//                {   unitPriceSum = Double(montlyUsage) * UnitPrice.under240kwh.rawValue}
//                else
//                {   unitPriceSum = Double(montlyUsage) * UnitPrice.more240kwh.rawValue}
//                let totalPriceExVat = unitPriceSum + totalPriceWithServiceFee
//                let totalPrice = totalPriceExVat * 1.2
//            case .commercial:
//
//            case .industry:
//                <#code#>
//
//            default:
//                <#code#>
//            }
//        })
//    }
    
    func CalculateMonthlyUsage(ProductList: [Urun?]) -> Int
    {
        var PerMonthUsage = 0
        ProductList.forEach({urun in
            PerMonthUsage += urun!.mKwh!.rawValue
        })
        
        return PerMonthUsage
    }
}
