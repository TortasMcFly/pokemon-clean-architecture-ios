//
//  ResponseDTO.swift
//  pokemon
//
//  Created by Hector Luevano on 13/06/23.
//

import Foundation

struct ResponseDTO: Decodable {
    let count: Int
    let next, previous: String?
    let results: [ResultDTO]
    
    func toModel() -> ResponseModel {
        
        return ResponseModel(count: count, results: results.map({ dto in
            dto.toModel()
        }))
    }
}
