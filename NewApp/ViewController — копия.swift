//
//  ViewController.swift
//  NewApp
//
//  Created by MacBook on 30.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var skyImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        skyImageView.image = UIImage(systemName: "moon")
        skyImageView.tintColor = .gray
        changeButton.backgroundColor = .green
    
        
    }
    @IBAction func TouchDown(_ sender: Any) {
        print ("Нажатие без отрыва пальца")
    }
    private var isSun: Bool = false
    @IBAction func buttonDidTap(_ sender: Any) {
        print ("Нажатие")
        
        if isSun { // 1
            skyImageView.image = UIImage(systemName: "moon") // 2
        } else {
            skyImageView.image = UIImage(systemName: "sun.max") // 3
        }
        isSun.toggle() // 4
    }
    
}

