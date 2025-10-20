//
//  ViewController.swift
//  Counter
//
//  Created by I on 18.10.2025.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet private weak var counterText: UILabel!
    private let dateFormatter = DateFormatter()
    private var start = 0

    
    @IBOutlet private weak var plus: UIButton!
    @IBAction private func plusAction(_ sender: Any) {
        start += 1
        counterText.text = "Значение счётчика: \(start)"
        history.text += "\n\(dateFormatter.string(from: Date())): значение изменено на +1"
    }
    
    
    @IBOutlet private weak var minus: UIButton!
    @IBAction private func minusAction(_ sender: Any) {
        if start > 0 {
            start -= 1
            counterText.text = "Значение счётчика: \(start)"
            history.text += "\n\(dateFormatter.string(from: Date())): значение изменено на -1"} else {
                history.text += "\n\(dateFormatter.string(from: Date())): попытка уменьшить значение счётчика ниже 0"
            }
    }
    
    @IBOutlet private weak var reset: UIButton!
    
    @IBAction private func resetAction(_ sender: Any) {
        start = 0
        counterText.text = "Значение счётчика: \(start)"
        history.text += "\n\(dateFormatter.string(from: Date())): значение сброшено"
    }
    
    @IBOutlet private weak var history: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        dateFormatter.locale = Locale(identifier: "ru_RU")
        history.text = "История изменений:"
    }


}

