//
//  ViewController.swift
//  UIKit gestures
//
//  Created by Rebecca Krieger on 6/23/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var sensedGesture: UILabel!
    @IBOutlet weak var star: UIImageView!
    
    @IBAction func BasicTap(_ sender: Any) {
        sensedGesture.text = "Basic single finger tap"
        if star.tintColor != UIColor.red {
            star.tintColor = UIColor.blue
        }
        else {
            star.tintColor = UIColor.red
        }
    }

    @IBAction func DoubleTap(_ sender: Any) {
        sensedGesture.text = "Double tap"
        if star.isAnimating {
            star.stopAnimating()
        }
        else {
            star.startAnimating()
        }
    }
    
    @IBAction func TwoFingerTap(_ sender: Any) {
        sensedGesture.text = "Two Finger Tap"
        if star.backgroundColor == UIColor.white {
            star.backgroundColor = UIColor.green
        }
        else {
            star.backgroundColor = UIColor.white
        }
    }
    
    @IBAction func rotate(_ sender: Any) {
        sensedGesture.text = "rotate"
        star.transform = star.transform.rotated(by: .pi / 2)
    }
    
    @IBAction func pinch(_ sender: Any) {
        sensedGesture.text = "pinch"
        star.transform.scaledBy(x: -2, y: -2)
    }
    @IBAction func LongHold(_ sender: Any) {
        sensedGesture.text = "long press"
        star.transform.scaledBy(x: 2, y: 2)
    }
    
    
    @IBAction func pan(_ sender: Any) {
        sensedGesture.text = "pan"
        star.transform.translatedBy(x: 0, y: 20)
    }
    
    @IBAction func edge(_ sender: Any) {
        sensedGesture.text = "Edgey"
    }
    
    @IBAction func custom(_ sender: Any) {
        sensedGesture.text = "Unknown"
    }
    
    
    
    
}

