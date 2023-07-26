//
//  Ders6_Structure.swift
//  IOSders3
//
//  Created by Kurumsal on 24.07.2023.
//

import Foundation
//structure da değişken veya fun a dışarıdan direkt erişilebilir.   ///interval araştır
struct Urun
{
//    var name:String = "Can"
//    var surname:String?
//    var birthday: Int?
//    var place: String?
//
//    init(){}
//
//    init(place:String)
//    {
//        self.place = place
//    }
//
//    init(surname:String,name:String,birthday:Int)
//    {
//        self.surname = surname
//        self.name = name
//        self.birthday = birthday
//    }
//
//    func calcAge(currentYear:Int)->Int
//    {
//        guard let birth = self.birthday else {return 0}
//        return currentYear - birth
//
//    }
    
    //ürün adı, aylık yaktığı elektrik miktarı kw/sa, yıllık yaktığı ,  aylık yaktığı elektrikle yıllığı hesapla yıllığa ver
    
    var UrunAdi : String?
    var mKwh : Kullanım?
    var yKwh : Int?
    
    init(mKwh:Kullanım?)
    {
        guard let aylik = mKwh else {return}
        self.mKwh = aylik
        self.yKwh = aylik.rawValue * 12

    }
    
    init(UrunAdi:String?,mKwh:Kullanım?)
    {
        guard let urunAdi = UrunAdi, let aylik = mKwh else {return}
        self.UrunAdi = urunAdi
        self.mKwh = aylik
        self.yKwh = aylik.rawValue * 12
    }
}
struct UserUsage
{
    var userName: String?
    var products: [Urun?]
    var aylikTuketim: Int?
    var usageType: UsageType?
    
    mutating func SetUserMonthlyUsage(UsagePerMonth:Int)
    {
        self.aylikTuketim = UsagePerMonth
    }
    
}
