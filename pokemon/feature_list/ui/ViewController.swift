//
//  ViewController.swift
//  pokemon
//
//  Created by Hector Luevano on 13/06/23.
//

import UIKit
import Resolver

class ViewController: UIViewController {
    
    @Injected var viewModel: ViewModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewModel.stateSuccess = { model in
            print("count: \(model.count)")
            model.results.forEach { r in
                print("{ name: \(r.name), url: \(r.url) }")
            }
        }
        viewModel.eventError = { error in
            print(error)
        }
        
        viewModel.getPokemons()
    }


}

