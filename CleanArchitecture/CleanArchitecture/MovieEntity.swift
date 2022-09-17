//
//  MovieEntity.swift
//  CleanArchitecture
//
//  Created by 노영재 on 2022/09/15.
//

import Foundation

struct Movie: Equatable, Identifiable {
    typealias Identifier = String
    enum Genre {
        case adventure
        case scienceFiction
    }
    
    let id: Identifier
    let title : String?
    let genre: Genre?
    let posterPath: String?
    let overview: String?
    let releaseDate: Date?
}

struct MoviewsPage: Equatable {
    let page: Int
    let totalPages: Int
    let moviews: [Movie]
}

