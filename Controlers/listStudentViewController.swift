//
//  listStudentViewController.swift
//  chooseStudent
//
//  Created by CLAUDIA MALHEIROS on 10/4/22.
//

import UIKit

class listStudentViewController: UIViewController {
    
    @IBOutlet weak var listnome: UILabel!
    @IBOutlet weak var listserie: UILabel!
    @IBOutlet weak var listnota: UILabel!
    //Colocar Index para referenciar que vc está mexendo nisso
    @IBOutlet weak var btIndexNext: UIButton!
    @IBOutlet weak var btIndexBack: UIButton!
    
    var index = 0
    var manager = managerStudents()
    var classroom: Student!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btIndexBack.isHidden = true
        btIndexNext.isHidden = true
        
        if manager.escola.count > 0 {
            listnome.text = manager.escola[0].nomeS
            listserie.text = manager.escola[0].serieS
            listnota.text = manager.escola[0].notaS
            btIndexNext.isHidden = false
        }
    }
    //Botões Funcionado!
    @IBAction func btShowIndexNext(_ sender: Any) {
        index = index + 1
        classroom = manager.listStudent(index: index)
        listnome.text = classroom.nomeS
        listserie.text = classroom.serieS
        listnota.text = classroom.notaS
        btIndexBack.isHidden = false
        
        if (index+1) == manager.escola.count{
            btIndexNext.isHidden = true
        }
    }
    //Botões Funcionado!
    @IBAction func btShowIndexBack(_ sender: Any) {
        index = index - 1
        classroom = manager.listStudent(index: index)
        listnome.text = classroom.nomeS
        listserie.text = classroom.serieS
        listnota.text = classroom.notaS
        btIndexNext.isHidden = false
        
        if index < 1 {
            btIndexBack.isHidden = true
        }
    }
    
}
