//
//  ders4_enumlar.swift
//  IOSders3
//
//  Created by Kurumsal on 20.07.2023.
//

import UIKit
enum Compass:String
{
    case north
    case south
    case east
    case western
    
}
enum vehicles
{
    case opel(cc:Int,speed:Double,coor:String)
    case audi(cc:Int,speed:Double,coor:String)
    case fiat(cc:Int,speed:Double,coor:String)
}
enum days
{
    case sunday, monday, tuesday, wednesday, thursday, friday, saturday
    
    func isWeekend()-> Bool
    {
        switch self
        {
        case .sunday, .saturday:
            return true
            
        default: return false
        }
        
    }
}
enum meyveler : String
{
    case limon = "sarı"
    case cilek = "kırmızı"
    case kivi = "yeşil"
  //  case muz = "sarı"
    case uzum = "mor"
    
}

class ders4_enumlar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       print( MeyveRenkBul(meyve: .kivi))

    }
    
    let direction = Compass.north
    
    func MeyveRenkBul(meyve:meyveler) -> String
    {
        let meyveRenk : String
        switch meyve {
        case .cilek:
            meyveRenk = meyve.rawValue
        case .kivi:
            meyveRenk = meyve.rawValue
        case .limon:
            meyveRenk = meyve.rawValue
        case .uzum:
            meyveRenk = meyve.rawValue
        default:
            meyveRenk = meyve.rawValue
        }
        return meyveRenk
    }
        
}

// fonk parametre alsın, bir enum oluştur,enum meyveler string ve karşısında meyvenin renkleri string olsun parametre olarak enum ı al func string retrunlesin. fonk. parametreyi enum ın case leri ile karşılaştırsın ve rengi döndürsün




