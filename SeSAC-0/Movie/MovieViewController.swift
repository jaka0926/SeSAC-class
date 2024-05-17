//
//  MovieViewController.swift
//  SeSAC-0
//
//  Created by Jaka on 2024-05-16.
//

import UIKit

class MovieViewController: UIViewController {

    //@: Swift Attribute
    //IB: Interface Builder
    //Outlet: 변수
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var randomButton: UIButton!
    
    let bigNumber = Int.random(in: 1...300)
    
    //ViewController life cycle
    //viewDidLoad: 화면이 사용자의 눈에 보이기 직전에 실행되는 기능
    //그림자, 모서리 둥글리 등 스노리보드에서 할 수 없는 UI를 작성하는 편
    override func viewDidLoad() {
        super.viewDidLoad()

        movieTitleLabel.text = "무빙"
        movieTitleLabel.textAlignment = .center
        movieTitleLabel.textColor = .blue
        movieTitleLabel.backgroundColor = .gray
        movieTitleLabel.font = .systemFont(ofSize: 30)
        
        posterImageView.image = UIImage.무빙
        posterImageView.backgroundColor = .black
        posterImageView.contentMode = .scaleAspectFit
        posterImageView.layer.cornerRadius = 50
        posterImageView.layer.borderWidth = 3
        posterImageView.layer.borderColor = UIColor.magenta.cgColor
        
        randomButton.setTitle("랜덤 추천", for: .normal)
        randomButton.setTitle("Clicked", for: .highlighted)
        randomButton.setTitleColor(.red, for: .normal)
        randomButton.setTitleColor(.blue, for: .highlighted)
        randomButton.backgroundColor = .green
    }

    @IBAction func randomButtonTapped(_ sender: UIButton) {
        print("버튼 클릭됨")
        let number = Int.random(in: 1...300)
        movieTitleLabel.text = "마스크걸: \(number), \(bigNumber)"
        posterImageView.image = UIImage(named: "마스크걸")
    }
}
