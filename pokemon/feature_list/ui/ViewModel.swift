//
//  ViewModel.swift
//  pokemon
//
//  Created by Hector Luevano on 13/06/23.
//

import Foundation

class ViewModel {
    
    private let getPokemonsUseCase: GetPokemonUseCase
    private var offset = 0
    private let LIMIT = 20
    
    var stateSuccess: ((ResponseModel) -> Void)?
    var eventError: ((String) -> Void)?
    
    init(getPokemonsUseCase: GetPokemonUseCase) {
        self.getPokemonsUseCase = getPokemonsUseCase
    }
    
    
    func getPokemons() {
        
        getPokemonsUseCase.execute(offset: offset, limit: LIMIT) { result in
            switch(result) {
            case .success(let pokemons):
                self.stateSuccess?(pokemons)
            case .failure(_):
                self.eventError?("Ocurrió un error")
            }
        }
        
    }
    
}
