//
//  ErrorHandler.swift
//  pokemon
//
//  Created by Hector Luevano on 13/06/23.
//

import Foundation

class ErrorHandler {
    
    class func mapError(apiError: ApiError) -> DomainError {
        switch(apiError) {
            case .apiException:
                return DomainError.HttpError
            case .decodingException:
                return DomainError.IOError
        }
    }
    
}

