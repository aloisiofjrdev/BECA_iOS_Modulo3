//
//  ImagePicker.swift
//  Agenda
//
//  Created by Aloisio Formento Junior on 30/12/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit

protocol ImagePickerFotoSelecionada {
    func imagePickerFotoSelecionada (_ foto: UIImage)
}

class ImagePicker: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: - ATRIBUTOS
    
    var delegate: ImagePickerFotoSelecionada?
    
    // MARK: - METODOS
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let foto = info[UIImagePickerControllerOriginalImage] as! UIImage
        delegate?.imagePickerFotoSelecionada(foto)
        picker.dismiss(animated: true, completion: nil)
        
    }
    
   

}
