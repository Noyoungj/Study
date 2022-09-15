//
//  L.swift
//  SOILD
//
//  Created by 노영재 on 2022/09/07.
//

protocol Area {
    //프로토콜에서 Value를 리턴하고 싶으면 프로퍼티를 사용하면 되는구나..
    var area : Float { get }
}

class Rectangle : Area {
    var width : Float
    var height : Float
    
    init(_ width : Float, _ height : Float) {
        self.width = width
        self.height = height
    }
    
    var area: Float {
        return width * height
    }
}

class Square : Area {
    var width : Float
    
    init(_ width : Float) {
        self.width = width
    }
    
    var area: Float {
        return width * width
    }
}

