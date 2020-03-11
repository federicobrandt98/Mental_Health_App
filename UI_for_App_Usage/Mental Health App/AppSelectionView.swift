//
//  AppSelectionView.swift
//  Mental Health App
//
//  Created by Federico Brandt on 3/11/20.
//  Copyright © 2020 Federico Brandt. All rights reserved.
//

import UIKit

class AppSelectionView: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var selectionAppView: UIView!
    @IBOutlet weak var Next_Button: UIButton!
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Next_Button.isEnabled = true
        selectionAppView.layer.cornerRadius = 5
        self.hideKeyboardWhenTappedAround()
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
