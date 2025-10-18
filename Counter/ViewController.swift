//
//  ViewController.swift
//  Counter
//
//  Created by I on 18.10.2025.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var counterText: UILabel!
    var start = 0
    let currentDate = Date()
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var plus: UIButton!
    @IBAction func plusAction(_ sender: Any) {
        start += 1
        counterText.text = "Значение счётчика: \(start)"
        history.text += "\n\(dateFormatter.string(from: Date())): значение изменено на +1"
    }
    
    @IBOutlet weak var minus: UIButton!
    @IBAction func minusAction(_ sender: Any) {
        if start > 0 {
            start -= 1
            counterText.text = "Значение счётчика: \(start)"
            history.text += "\n\(dateFormatter.string(from: Date())): значение изменено на -1"} else {
                history.text += "\n\(dateFormatter.string(from: Date())): попытка уменьшить значение счётчика ниже 0"
            }
    }
    
    @IBOutlet weak var reset: UIButton!
    
    @IBAction func resetAction(_ sender: Any) {
        start = 0
        counterText.text = "Значение счётчика: \(start)"
        history.text += "\n\(dateFormatter.string(from: Date())): значение сброшено"
    }
    
    @IBOutlet weak var history: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dateFormatter.dateStyle = .medium
                dateFormatter.timeStyle = .medium
        dateFormatter.locale = Locale(identifier: "ru_RU") 
        history.text = "История изменений:"
    }


}

