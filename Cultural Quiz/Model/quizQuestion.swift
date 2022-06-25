//
//  quizQuestion.swift
//  Cultural Quiz
//
//  Created by dyah.nariswari on 25/06/22.
//

import Foundation

struct QuizQuestion {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Indonesia merayakan HUT ke-86 pada tahun 2031", a: "Benar"),
        Question(q: "Lagu Manuk Dadali berasal dari provinsi DKI Jakarta", a: "Salah"),
        Question(q: "Danau Kelimutu terletak di pulau Lombok", a: "Salah"),
        Question(q: "B.J.Habibie adalah presiden Republik Indonesia ke-3", a: "Benar"),
        Question(q: "Jumlah pulau di wilayah Indonesia mencapai 17000 pulau", a: "Benar"),
        Question(q: "Tari Mandau berasal dari provinsi Sulawesi Selatan.", a: "Salah"),
        Question(q: "Rencong adalah senjata khas provinsi Aceh", a: "Benar"),
        Question(q: "Nama pertama Jakarta ialah Batavia", a: "Salah"),
        Question(q: "Pada tahun 2022, Indonesia terdiri dari 34 provinsi", a: "Benar"),
        Question(q: "Nama asli presiden Indonesia ke-7 adalah Jokowi", a: "Salah"),
        Question(q: "Indonesia menganut asas 'ius sanguinis'", a: "Benar"),
        Question(q: "Pulau Jawa terdiri dari 7 provinsi.", a: "Salah")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
