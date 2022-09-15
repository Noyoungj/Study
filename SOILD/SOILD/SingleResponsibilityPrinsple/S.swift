//
//  S.swift
//  SOILD
//
//  Created by 노영재 on 2022/09/07.
//

import Foundation

protocol APIHandlerProtocol {
    func requestLogin() -> Data
}

protocol DecodingHandlerProtocol {
    func decode<T>(from data: Data) -> T
}

protocol DBhandlerProtocol {
    func saveOnDatabase<T>(inform: T)
}

class LoginService {
    let apiHandler: APIHandlerProtocol
    let decodingHandler: DecodingHandlerProtocol
    let dbHandler: DBhandlerProtocol
    
    init(apiHandler: APIHandlerProtocol,
         decodingHandler: DecodingHandlerProtocol,
         dbHandler: DBhandlerProtocol) {
        self.apiHandler = apiHandler
        self.decodingHandler = decodingHandler
        self.dbHandler = dbHandler
    }
    
    func login() {
        let loginData = apiHandler.requestLogin()
    }
}
