//
//  MapaViewController.swift
//  Agenda
//
//  Created by Aloisio Formento Junior on 04/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class MapaViewController: UIViewController {
    
    // MARK: - Varivel
    
    var aluno:Aluno?
    
    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = getTitulo()

    }
    func getTitulo() -> String {
        return "Localizar Alunos"
    }

}
