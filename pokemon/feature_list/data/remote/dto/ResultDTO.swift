//
//  ResultDTO.swift
//  pokemon
//
//  Created by Hector Luevano on 13/06/23.
//

import Foundation

struct ResultDTO: Decodable {
    let name: String
    let url: String
    
    func toModel() -> ResultModel {
        return ResultModel(name: name, url: url)
    }
}
