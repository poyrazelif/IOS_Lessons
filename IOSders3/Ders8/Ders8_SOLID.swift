//
//  Ders8_SOLID.swift
//  IOSders3
//
//  Created by Kurumsal on 26.07.2023.
//

import UIKit

class Ders8_SOLID: UIViewController {

    var penguan = Penguin()
    override func viewDidLoad() {
        super.viewDidLoad()

        penguan.fly()
    }
  // Single Responsibility :
  // Open-Closed Principle :
          //Bir sınıf başka bir sınıfın var olan davranışını değiştirmeden yeni davranış eklemeye açık olmalıdır.Ancak mevcut davranışını değiştirmeye kapalı olmalıdır.
  // Liscov Substitution Principle : bir üst sınıfın nesnesi
    // Dependency
}

// Open- Closed ---------------------------------
protocol Shape
{
    func area()-> Int
}

class Circle : Shape
{
    var radius: Int
    
    init(radius: Int) {
        self.radius = radius
    }
    
    func area() ->Int
    {
        return 10
    }
}

class Triangle : Shape
{
    var angle: Int
    
    init(angle: Int) {
        self.angle = angle
    }
    
    func area() ->Int
    {
        return 20
    }
}
// --------------------------------------------------

class Bird
{
    func fly()
    {
        print("blabla")
    }
}

class Penguin: Bird
{
    override func fly() {
        super.fly()
    }
}

