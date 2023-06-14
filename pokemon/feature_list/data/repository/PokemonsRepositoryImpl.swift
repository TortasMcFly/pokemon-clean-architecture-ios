//
//  PokemonsRepositoryImpl.swift
//  pokemon
//
//  Created by Hector Luevano on 13/06/23.
//

import Foundation

class PokemonsRepositoryImpl: PokemonRepositoryProtocol {
    
    private let api: ApiPokemonService
    
    init(api: ApiPokemonService) {
        self.api = api
    }
    
    
    func getPokemons(offset: Int, limit: Int, completion: @escaping (Result<ResponseModel, DomainError>) -> Void) {
        
        api.getPokemons(offset: offset, limit: limit) { result in
            switch(result) {
            
            case .success(let response):
                completion(.success(response.toModel()))
            case .failure(let error):
                let domainError = ErrorHandler.mapError(apiError: error)
                completion(.failure(domainError))
            }
        }
        
        
    }
    
    
}
