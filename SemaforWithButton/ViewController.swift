//
//  ViewController.swift
//  SemaforWithButton
//
//  Created by Carlos Garcia Perez on 26/1/24.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet weak var redSemafor: UIView!
    
    @IBOutlet weak var yellowSemafor: UIView!
    
    @IBOutlet weak var greenSemafor: UIView!
    
    @IBOutlet weak var button: UIButton!
    
        
    
    enum SemaforColor {
            case red, yellow, green
        }
        
        var currentColor: SemaforColor = .red
    
    override func viewDidLayoutSubviews() {
        redSemafor.layer.cornerRadius = redSemafor.frame.width / 2
        yellowSemafor.layer.cornerRadius = yellowSemafor.frame.width / 2
        greenSemafor.layer.cornerRadius = greenSemafor.frame.width / 2
        button.layer.cornerRadius = 12
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func semaforButtonDidTapped(_ sender: UIButton) {
        
        redSemafor.alpha = 0.3
        yellowSemafor.alpha = 0.3
        greenSemafor.alpha = 0.3
        
        switch currentColor {
            case .red:
                redSemafor.alpha = 1
                button.setTitle("NEXT", for: .normal)
                currentColor = .yellow
            case .yellow:
                yellowSemafor.alpha = 1
                currentColor = .green
            case .green:
                greenSemafor.alpha = 1
                currentColor = .red
        }
    }
}


