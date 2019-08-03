//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by tasya on 31/07/2019.
//  Copyright © 2019 Taisiya V. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"] //массив с изображениями ответа
    
    var randomBallNumber: Int = 0  //переменная, для хранения изображения

    @IBOutlet weak var ballImageView: UIImageView!
   
    //изменения при загрузке приложения
    override func viewDidLoad() {
        super.viewDidLoad()
       newBallImage()
        
    }
    
    // метод, исполняемый при встряхивании
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    //метод, изменения изображения
    func newBallImage () {
        randomBallNumber = Int.random(in: 0 ... 4) // рандомное значение переменной
        
        ballImageView.image = UIImage (named: ballArray[randomBallNumber]) // изображение из массива, в зависимости от рандомного значения переменной randomBallNumber
    }
}

