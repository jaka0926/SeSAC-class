//
//  SearchViewController.swift
//  SeSAC-0
//
//  Created by Jaka on 2024-05-16.
//

import UIKit


class SearchViewController: UIViewController {
    
    
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var movieTitleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.keyboardType = .default
        textField.backgroundColor = .cyan
        textField.textColor = .red
        textField.placeholder = "Favorite Drama"
        textField.isSecureTextEntry = true
        
        posterImageView.layer.borderColor = UIColor.yellow.cgColor
        posterImageView.layer.borderWidth = 3
        posterImageView.layer.cornerRadius = 120
        posterImageView.contentMode = .scaleAspectFill
        
        movieTitleLabel.text = "드라마를 추천드립니다"
    }
    
    @IBAction func textFieldReturnTapped(_ sender: UITextField) {
        print("textFieldReturnTapped")
        movieTitleLabel.text = "\(textField.text!)라고 입력했습니다"
    }
    
    
}
