//
//  ViewController.swift
//  SOILD
//
//  Created by 노영재 on 2022/09/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        OpenClose()
        LiskovSubsititution()
        InterfaceSegregation()
    }

    //개방 폐쇄 원칙 사용해보기
    func OpenClose() {
        let zoo = Zoo()
        zoo.animals.append(Cat(1))
        zoo.animals.append(Cat(2))
        zoo.animals.append(Dog(1))
        
        zoo.makeAllSounds()
    }
    
    //리스코브 치환 원칙 사용해보기
    func LiskovSubsititution() {
        let rectangle = Rectangle(10, 10)
        print(rectangle.area)
        let square = Square(5)
        print(square.area)
    }
    
    //인터페이스 분리 법칙 사용해보기
    func InterfaceSegregation() {
        let area = ISquare(5, 6)
        print(area.area)
        let line = ILine(8, 3)
        print(line.length)
    }
}

