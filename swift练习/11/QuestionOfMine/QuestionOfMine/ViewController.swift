//
//  ViewController.swift
//  QuestionOfMine
//
//  Created by 张皓 on 16/8/2.
//  Copyright © 2016年 张皓. All rights reserved.
//

import UIKit


class ViewController: UIViewController, NSXMLParserDelegate {
    
    var alertController: UIAlertController!
    override func viewDidAppear(animated: Bool) {
        alertController = UIAlertController(title: "提示",
                                                message: "", preferredStyle: .ActionSheet)
        let cancelAction = UIAlertAction(title: "NO", style: .Cancel, handler: nil)
        let okAction = UIAlertAction(title: "YSE", style: .Default, handler: { action in
            self.loadNextQuestion()
        })
        
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    
        parser = NSXMLParser.init(contentsOfURL: NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("questions", ofType: "xml")!))
        parser.delegate = self
        parser.parse()
    }
    
    var parser: NSXMLParser!
    var currentQuestion: myQuestion!
    var questionsArr: Array<myQuestion> = []
    var currentShowedQuestion: myQuestion!
    var currentQuestionNumber = 1
    
    
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        
        
        
        if elementName == "question" {
            currentQuestion = myQuestion()
            questionsArr.append(currentQuestion)
            currentQuestion.question = attributeDict["text"]
            currentQuestion.rightAnswer = attributeDict["right"]
            
        } else if elementName == "anwser" {
            
            let tag = attributeDict["tag"]
            if tag == "A" {
                currentQuestion.answerA = attributeDict["text"]
            } else if tag == "B" {
                currentQuestion.answerB = attributeDict["text"]
            } else if tag == "C" {
                currentQuestion.answerC = attributeDict["text"]
            } else if tag == "D" {
                currentQuestion.answerD = attributeDict["text"]
            }
            
            
        }
    }
    
    @IBAction func btnClickedToNextQue(sender: AnyObject) {
        if currentQuestionNumber < 3 {
            
            currentQuestionNumber += 1
            
            loadCurrentQuestionByNumber(currentQuestionNumber)
        }
    }
    func loadNextQuestion() {
        if currentQuestionNumber < 3 {
            
            currentQuestionNumber += 1
            
            loadCurrentQuestionByNumber(currentQuestionNumber)
        }

    }
    
    
    func parserDidEndDocument(parser: NSXMLParser) {
        
        loadCurrentQuestionByNumber(currentQuestionNumber)
        
        
        
        
    }
    
    func loadCurrentQuestionByNumber(questionNumber: Int) {
        
        
        tfAnswer.text = ""
        
        currentShowedQuestion = questionsArr[questionNumber - 1]
        
        lQuestion.text = currentShowedQuestion.question
        lAnswerA.text = currentShowedQuestion.answerA
        lAnswerB.text = currentShowedQuestion.answerB
        lAnswerC.text = currentShowedQuestion.answerC
        lAnswerD.text = currentShowedQuestion.answerD
        
    }
    
    
    @IBOutlet var lQuestion: UILabel!
    
    @IBOutlet var lAnswerA: UILabel!
    
    @IBOutlet var lAnswerB: UILabel!
    
    @IBOutlet var lAnswerC: UILabel!
    
    @IBOutlet var lAnswerD: UILabel!
    
    @IBOutlet var tfAnswer: UITextField!
    
    
    @IBAction func btnSubmitClicked(sender: AnyObject) {
        
        if tfAnswer.text == currentShowedQuestion.rightAnswer {
            if currentQuestionNumber < 3 {
            alertController.message = "You are right ,do you want to answer next one"
            } else {
                alertController.message = "Great you have answerd all questions"
            }
            self.presentViewController(alertController, animated: true, completion: nil)
        } else {
            alertController.message = "You are wrong, do you want to try again"
            self.presentViewController(alertController, animated: true, completion: nil)
        
        }
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.tfAnswer.resignFirstResponder()
        
    }
    
}

