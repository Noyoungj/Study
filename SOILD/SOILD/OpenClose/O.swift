//
//  O.swift
//  SOILD
//
//  Created by 노영재 on 2022/09/07.
//

import Foundation

protocol Animal {
    func makeSound()
}

class Dog : Animal {
    var dogIdx : Int = 0
    init(_ dogIdx : Int) {
        self.dogIdx = dogIdx
    }
    
    func makeSound() {
        print("\(dogIdx)번 강아지가 멍멍하고 웁니다.")
    }
}

class Cat : Animal {
    var catIdx : Int = 0
    init(_ catIdx : Int) {
        self.catIdx = catIdx
    }
    func makeSound() {
        print("\(catIdx)번 고양이가 야옹하고 웁니다.")
    }
}

class Zoo {
    var animals: [Animal] = []
    
    func makeAllSounds() {
        animals.forEach {
            $0.makeSound()
        }
    }
}
