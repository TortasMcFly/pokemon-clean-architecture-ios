//
//  FeatureList+Injection.swift
//  pokemon
//
//  Created by Hector Luevano on 13/06/23.
//

import Foundation
import Resolver

extension Resolver {
    
    public static func registerFeatureListDependencies() {
        
        register { ApiPokemonService() }
        
        register { PokemonsRepositoryImpl(api: resolve()) }
            .implements(PokemonRepositoryProtocol.self)
        
        register { GetPokemonUseCase(repository: resolve()) }
        
        register { ViewModel(getPokemonsUseCase: resolve()) }
        
    }
    
}
