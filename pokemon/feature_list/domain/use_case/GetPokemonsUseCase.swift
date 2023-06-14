//
//  GetPokemonsUseCase.swift
//  pokemon
//
//  Created by Hector Luevano on 13/06/23.
//

import Foundation

class GetPokemonUseCase {
    
    private let repository: PokemonRepositoryProtocol
    
    init(repository: PokemonRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute(offset: Int, limit: Int, completion: @escaping(Result<ResponseModel, DomainError>) -> Void) {
        self.repository.getPokemons(offset: offset, limit: limit, completion: completion)
    }
    
}
