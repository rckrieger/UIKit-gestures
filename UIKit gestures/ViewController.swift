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
        star.isUserInteractionEnabled = true
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var sensedGesture: UILabel!
    @IBOutlet weak var star: UIImageView!
    
    @IBAction func BasicTap(_ sender: Any) {
        sensedGesture.text = "Basic single finger tap"
        star.tintColor = UIColor.systemBlue
    }

    @IBAction func DoubleTap(_ sender: Any) {
        sensedGesture.text = "Double tap"
        star.tintColor = UIColor.purple
    }
    
    @IBAction func TwoFingerTap(_ sender: Any) {
        sensedGesture.text = "Two Finger Tap"
        star.tintColor = UIColor.green
    }
    
    @IBAction func rotate(_ sender: Any) {
        sensedGesture.text = "rotate"
        star.tintColor = UIColor.lightGray
    }
    
    @IBAction func pinch(_ sender: Any) {
        sensedGesture.text = "pinch"
        star.tintColor = UIColor.darkGray
    }
    @IBAction func LongHold(_ sender: Any) {
        sensedGesture.text = "long press"
        star.tintColor = UIColor.systemRed
    }
    
    
    @IBAction func pan(_ sender: Any) {
        sensedGesture.text = "pan"
        star.tintColor = UIColor.yellow
    }
    
    @IBAction func edge(_ sender: Any) {
        sensedGesture.text = "Edgey"
    }
    
    @IBAction func topper(_ sender: Any) {
        sensedGesture.text = "roof or floor edge"
    }
    
}

