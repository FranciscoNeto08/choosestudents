//
//  mainViewController.swift
//  chooseStudent

/*
 isso é uma Array
 primeira opção:
 
 var idades: [Int] = [11, 33, 15, 25]
 print(idades[0])
 "as Array começam do 0, ou seja o primeiro elemento seria 0"
 
 struct Student {
 var nome:String
 var serie:String
 var nota:String
 }
 
 var escola:[Student] = [Student (nome: "Tete", serie: "2", nota: "5"), Student (nome: "Matheus", serie: "1", nota: "3")]
 
 escola.append(Student(nome: "João", serie: "2", nota: "8"))
 func recuperarStudent (index: Int) -> String{
 return escola[index].nome
 }
 print(recuperarStudent(index: 0))
 */

//  Created by CLAUDIA MALHEIROS on 10/4/22.
//

import UIKit

class mainViewController: UIViewController {
    
    var manager = managerStudents()
    let MAIN = UIStoryboard(name: "Main", bundle: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showViewAddStudent(_ sender: Any) {
        let ADD_STUDENT:addStudentViewController = MAIN.instantiateViewController(withIdentifier: "addStudent") as! addStudentViewController
        ADD_STUDENT.manager = manager
        self.present(ADD_STUDENT, animated: true, completion: nil)
        performSegue(withIdentifier: "segueAddStudent", sender: nil)
    }
    
    @IBAction func showViewListStudents(_ sender: Any) {
        let LIST_STUDENT:listStudentViewController = MAIN.instantiateViewController(withIdentifier: "listStudents") as! listStudentViewController
        LIST_STUDENT.manager = manager
        self.present(LIST_STUDENT, animated: true, completion: nil)
        performSegue(withIdentifier: "segueListStudents", sender: nil)
    }
    @IBAction func returnMainView(segue: UIStoryboardSegue){
    }
}
