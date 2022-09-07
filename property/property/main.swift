//
//  main.swift
//  property
//
//  Created by 노영재 on 2022/09/07.
//

import Foundation


//willSet은 호출, 변경 직전 불리는 값으로 인자는 그 이후 값을 가져와서 비교한다.
var willSet : Int = 0 {
    willSet(newval) {
        print(willSet)
        print(newval)
    }
}

//didSet은 호출, 변경 직후 불리는 프로퍼티로 인자는 그 전 값을 가져와서 비교한다.
var didSet : Int = 0 {
    didSet(oldval) {
        print(oldval)
        print(didSet)
    }
}

willSet = 1
didSet = 1

// get에서 받을 값을 정의해둠.
var TempX : Int = 1

var getset : Int {
    get {
        // 내보낼땐 TempX를 return 한다.
        return TempX
    }
    //새로 들어온 인자 값을 가져온다.
    set(newVal) {
        //새로운 인자 값의 두배를 TempX로 한ㄷ.
        TempX = newVal * 2
    }
}

getset = 16
print(TempX)
