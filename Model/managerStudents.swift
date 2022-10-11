//
//  managerStudents.swift
//  chooseStudent
//
//  Created by CLAUDIA MALHEIROS on 10/4/22.
//

import Foundation

class managerStudents {
   var escola: [Student] = []
    
    func addNewStudent(nome: String, serie: String, nota: String){
        escola.append(Student(nomeS: nome, serieS: serie, notaS: nota))
        print(escola)
        }
    
    func listStudent(index: Int) -> Student{
        return escola[index]
    }
}
