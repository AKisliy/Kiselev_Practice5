//
//  Assembly.swift
//  ArchitecturesShowcase
//
//  Created by Grigory Sosnovskiy on 17.11.2023.
//

import UIKit

enum Assembly {
    static func build() -> UIViewController {
        let presenter = Presenter()
        let router = Router()
        let interactor = Interactor(presenter: presenter)
        let vc = CSViewController(interactor: interactor, router: router)
        
        presenter.vc = vc
        router.vc = vc
        
        return vc
    }
}
