//
//  MenuOpcoesAlunos.swift
//  Agenda
//
//  Created by Aloisio Formento Junior on 31/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

enum MenuActionSheetAluno {
    case sms
    case ligacao
    case waze
    case mapa
}

class MenuOpcoesAlunos: NSObject {
    func configuraMenuDeOpcoesDoAluno(completion: @escaping(_ opcap: MenuActionSheetAluno) -> Void) -> UIAlertController {
        let menu = UIAlertController(title: "Atenção", message: "escolha uma das opcoes abaixo", preferredStyle: .actionSheet)
        
        let sms = UIAlertAction(title: "Enviar SMS", style: .default) { (acao) in
            completion(.sms)
        }
        menu.addAction(sms)
        
        let ligacao = UIAlertAction(title: "ligar", style: .default) { (acao) in
            completion(.ligacao)
        }
        menu.addAction(ligacao)
        
        let waze = UIAlertAction(title: "Localizar no Waze", style: .default) { (acao) in
            completion(.waze)
        }
        menu.addAction(waze)
        
        let mapa = UIAlertAction(title: "Localizar no Mapa", style: .default) { (acao) in
            completion(.mapa)
        }
        menu.addAction((mapa))
        let cancelar = UIAlertAction(title: "cancelar", style: .cancel, handler: nil)
        menu.addAction(cancelar)
        return menu
    }
    
}
