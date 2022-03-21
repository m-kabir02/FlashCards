//
//  CreationViewController.swift
//  FlashCards1
//
//  Created by sadiya on 3/20/22.
//

import UIKit

class CreationViewController: UIViewController {

    var flashcardsController: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
        
    }
    
    @IBOutlet weak var questionTextField: UITextField!
    
    @IBOutlet weak var answerTextField: UITextField!
    var initialQuestion: String?
    var initialAnswer: String?
    
    //🤓 Pro tip: The two properties should be String? and not String cuz that way in the case of creating a new flashcard, instead of editing an existing one, it is ok to not have initial values. More specifically, it's ok that our initial values are nil.
    
    @IBOutlet weak var extraQuestion1: UITextField!
    
    @IBOutlet weak var extraAnswer1: UITextField!
    
    @IBOutlet weak var extraQuestion2: UITextField!

    @IBOutlet weak var extraAnswer2: UITextField!
    
    @IBAction func didTapOnCancel(_ sender: Any)
    {
dismiss(animated: true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any)
    {
    
        let questionText = questionTextField.text
        let answerText = answerTextField.text
        
        let questionText2 = extraQuestion1.text
        let answerText2 = extraAnswer1.text
        
        let questionText3 = extraQuestion2.text
        let answerText3 = extraAnswer2.text
        
        //if there is no question or answer in the text field
               if questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty
               {
                   //show error alert
                   let alert = UIAlertController(title: "Missing Text", message: "You need to add a question and an answer", preferredStyle: .alert)
                   
                   present(alert, animated: true)
                   
                   let okAction = UIAlertAction(title: "Ok", style: .default)
                   alert.addAction(okAction)
                   
               }
               else
               {
                   flashcardsController.updateFlashcard(question: questionText!, answer: answerText!, extraQuestion1: questionText2, extraAnswer1: answerText2, extraQuestion2: questionText3, extraAnswer2: answerText3)
               
               dismiss(animated: true)
               
           }
        
        
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
