//
//  Question.swift
//  Cultural Quiz
//
//  Created by dyah.nariswari on 25/06/22.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
