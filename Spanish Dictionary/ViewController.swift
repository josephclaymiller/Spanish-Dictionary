//
//  ViewController.swift
//  Spanish Dictionary
//
//  Created by Joseph Miller on 4/25/18.
//  Copyright © 2018 Joseph Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var wordImage: UIImageView!
    @IBOutlet weak var spanishWord: UILabel!
    let englishWords = ["red","orange","yellow","green","blue"]
    let spanishDictionary: [String: String] = ["red":"rojo","orange":"anaranjado","yellow":"amarillo","green":"verde","blue":"azul"]
    // let englishWords = Array(spanishDictionary.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
        showSelectedWord(word: englishWords[0])
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return englishWords.count
    }
    // Picker delegate functions
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return englishWords[row].capitalized
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedWord = englishWords[row]
        showSelectedWord(word: selectedWord)
    }
    // Helper Function
    func showSelectedWord(word: String) {
        spanishWord.text = spanishDictionary[word]?.capitalized
        wordImage.image = UIImage(named: "\(word).png")
    }

}

