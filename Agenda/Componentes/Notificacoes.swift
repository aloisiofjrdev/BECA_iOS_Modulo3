//
//  Notificacoes.swift
//  Agenda
//
//  Created by Aloisio Formento Junior on 04/01/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class Notificacoes: NSObject {
    
    func exibeNotificacaoDeMediaDosAlunos(dicionarioDeMedia:Dictionary<String,Any>) -> UIAlertController? {
        if let media = dicionarioDeMedia["media"] as? String{
            let alerta = UIAlertController(title: "Atenção", message: "a média geral dos alunos é: \(media)", preferredStyle: .alert)
            let botao = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alerta.addAction(botao)
            return alerta
        }
        return nil
    }

}
