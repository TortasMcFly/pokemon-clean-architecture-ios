//
//  AppDelegate+Injection.swift
//  pokemon
//
//  Created by Hector Luevano on 13/06/23.
//

import Foundation
import Resolver

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        registerFeatureListDependencies()
    }
}
