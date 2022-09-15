//
//  I.swift
//  SOILD
//
//  Created by 노영재 on 2022/09/07.
//
// 이건 안 좋은 예시와 좋은 예시를 비교해야 이해가 잘 될 듯 하다.
//MARK: 좋은 예시
protocol IArea {
    var area : Float { get }
}
protocol ILength {
    var length : Float { get }
}

// ISqure에서는 area만 사용할 예정이기 때문에 IArea로 충분
class ISquare : IArea {
    var area: Float {
        return width * height
    }
    
    var width: Float
    var height: Float
    
    init(_ width: Float, _ height: Float) {
        self.width = width
        self.height = height
    }
}

class ILine : ILength {
    var length: Float {
        return pointA - pointB
    }
    
    var pointA : Float
    var pointB : Float
    
    init(_ pointA: Float, _ pointB: Float) {
        self.pointA = pointA
        self.pointB = pointB
    }
}
//MARK: 매우 안좋은 예시
//현재 Squred에서는 length를 Line에서는 area를 사용하지 않지만 Shape를 상속받음으로써 두가지다 부여받고 있다. 이것은 인터페이스 분리 법칙에 어긋난다.
protocol Shape {
    var area: Float { get }
    var length: Float { get }
}

class Squared: Shape {
    var width: Float
    var height: Float
    
    var area: Float {
        return width * height
    }
    
    var length: Float {
        return 0
    }
    
    init(width: Float,
         height: Float) {
        self.width = width
        self.height = height
    }
}

class Line: Shape {
    var pointA: Float
    var pointB: Float
    
    var area: Float {
        return 0
    }
    
    var length: Float {
        return pointA - pointB
    }
    
    init(pointA: Float,
         pointB: Float) {
        self.pointA = pointA
        self.pointB = pointB
    }
}
