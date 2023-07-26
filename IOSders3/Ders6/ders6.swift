//
//  ders6.swift
//  IOSders3
//
//  Created by Kurumsal on 24.07.2023.
// STRINGLER

import UIKit

class ders6: UIViewController {

    var sampleString2 = "Elif"
    var sampleString: String?
    var emptyString = ""
    var emptyString2 = String() // initialize edilmiş, ram de yer açılmış ama içi boş, instance ını almışız emptyStringe
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleString2.append(" appendlenebildi.")
        print(sampleString2.count)
        print(emptyString2.isEmpty) //true
        print(emptyString.isEmpty) //true
        print(sampleString2.isEmpty) // false
        print(sampleString) // nil
        
        for char in sampleString2 { print(char)}
        
        let index =  sampleString2.index(sampleString2.startIndex, offsetBy: 5)
        print(index) // a
        print(sampleString2[index])
        sampleString2.remove(at: index)
        print(sampleString2)
        sampleString2.insert("a", at: index)
        print(sampleString2)
        
        let index2 = sampleString2.firstIndex(of: "g") ?? sampleString2.endIndex
        let substring = sampleString2[..<index2]
        print(substring)
        
        print(sampleString2.lowercased())
        print(sampleString2.uppercased())
        print(sampleString2.uppercased(with: Locale(identifier: "tr_TR")))
        
        print(sampleString2.contains("Elif"))
        
        print(sampleString2.replacingOccurrences(of: "Elif", with: "Can"))
        
    }
    
}
