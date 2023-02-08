//
//  QuestionBrain.swift
//  who is wants to be a millionare
//
//  Created by Нахид Гаджалиев on 07.02.2023.
//

import Foundation

struct QuestionBrain {
    
    var questions = [
        Question(question: "Так называются дополнения к основному сюжету игры.", answers: ["Сториап", "Апгрейд", "Скилл", "Аддон"], correctAnswer: "Аддон", notCorrectAnswer: "Сториап", money: 100),
        
        Question(question: "Кого рыбак всегда видит издалека?", answers: ["Червяка", "Рыбовода", "Рыбнадзор", "Рыбака"], correctAnswer: "Рыбака", notCorrectAnswer: "Червяка", money: 200),
        
        Question(question: "Какой вид транспорта, еще не имеет службы предварительного заказа билетов?", answers: ["Троллейбусный", "Морской", "Авиационный", "Железнодорожный"], correctAnswer: "Троллейбусный", notCorrectAnswer: "Морской", money: 300),
        
        Question(question: "Как называется острая мексиканская приправа?", answers: ["Сациви", "Пицца", "Чили", "Лечо"], correctAnswer: "Чили", notCorrectAnswer: "Сациви", money: 500),
        
        Question(question: "Что означает имя максим?", answers: ["Знания", "Умный", "Великий", "Величайший"], correctAnswer: "Величайший", notCorrectAnswer: "Знания", money: 1000),
        
        Question(question: "Какой период времени в жизни молодоженов начинается сразу после свадьбы?", answers: ["Мёртвый сезон", "Тихий час", "Медовый месяц", "Санитарный день"], correctAnswer: "Медовый месяц", notCorrectAnswer: "Санитарный день", money: 2000),
        
        Question(question: "Из чего, согласно поговорке не выкинешь слов?", answers: ["Конституции", "Песни", "Газет", "Молитвы"], correctAnswer: "Песни", notCorrectAnswer: "Конституции", money: 4000),
        
        Question(question: "В честь чего был назван компьютер компании - Макинтош?", answers: ["Сорт яблок", "Населённый пункт", "Зонт", " Вид плаща"], correctAnswer: "Сорт яблок", notCorrectAnswer: "Зонт", money: 8000),
        
        Question(question: "В каком году родился Владимир Набоков?", answers: ["1903", "1899","1889", "1900"], correctAnswer: "1899", notCorrectAnswer: "1903", money: 16000),
        
        Question(question: "Когда прошел год дельфина?", answers: ["2002", "2011", "1994", "2007"], correctAnswer: "2007", notCorrectAnswer: "2011", money: 32000),
        
        Question(question: "Какой вопрос, по определению, не требует ответа?", answers: ["Каверзный", "Философский", "Риторический", "Экзаменационный"], correctAnswer: "Риторический", notCorrectAnswer: "Каверзный", money: 64000),
        
        Question(question: "Кличка основателя группы Коррозия металла", answers: ["Скелет", "Горшок", "Ручейник", "Паук"], correctAnswer: "Паук", notCorrectAnswer: "Горшок", money: 125000),
        
        Question(question: "Сколько стран входит в состав Великобритании?", answers: ["4", "3", "1", "6"], correctAnswer: "4", notCorrectAnswer: "1", money: 250000),
        
        Question(question: "Сколько процентов из жизни ленивцы проводят во сне?", answers: ["70%", "80%", "75%", "85%"], correctAnswer: "75%", notCorrectAnswer: "70%", money: 500000),
        
        Question(question: "Как называются новорождённые особи собаки?", answers: ["Котята", "Щенки", "Агнцы", "Кутята"], correctAnswer: "Кутята", notCorrectAnswer: "Котята", money: 1000000),
    ]
    
    var questionNumber = 0
    
    func checkAnswer(answer userAnswer: String) -> Bool {
        
        if userAnswer == questions[questionNumber].correctAnswer {
            return true
        } else {
            return false
        }
    }
    
    func getMoney() -> Int {
        
        let money = questions[questionNumber].money
        return money
    }
    
    func getQuestionText() -> String {
        
        let text = questions[questionNumber].question
        
        return text
    }
    
    func getQuestion() -> Question {
        
        return questions[questionNumber]
    }
    
    func getQuestionTextButton() -> [String] {
        
        let text = questions[questionNumber].answers
        
        return text
    }
    
    func getfiftyFiftyArray() -> [String] {
        
        var array = [String]()
        let question = questions[questionNumber]
        let answer = question.answers
        
        for (i, v) in answer.enumerated() {

            if v == question.correctAnswer || v == question.notCorrectAnswer {
                array.append(v)
            } else {
                array.append(v)
                array[i] = " "
            }
        }
        
        return array
    }
    
    mutating func nextQuestion() {
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            
        } else {
            questionNumber = 0
        }
    }
}