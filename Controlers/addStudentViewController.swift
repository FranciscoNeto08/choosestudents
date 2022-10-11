//
//  addStudentViewController.swift
//  chooseStudent
//
//  Created by CLAUDIA MALHEIROS on 10/4/22.
//

import UIKit

class addStudentViewController: UIViewController {
    
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfSerie: UITextField!
    @IBOutlet weak var tfNota: UITextField!
    
    var manager = managerStudents()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addNewStudent(_ sender: Any) {
        manager.addNewStudent(nome: tfNome.text!, serie: tfSerie.text!, nota: tfNota.text!)
        view.endEditing(true)
        tfNome.text = ""
        tfSerie.text = ""
        tfNota.text = ""
    }
}
