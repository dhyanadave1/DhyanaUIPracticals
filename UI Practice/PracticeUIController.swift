//
//  PracticeUIController.swift
//  UI Practical
//
//  Created by Dhyana Dave on 30/04/22.
//

import UIKit

class PracticeUIController: UIViewController {

    @IBAction func textfield(_ sender: UIColor) {
        
    
        
    }
    @IBOutlet weak var scrollview: UIScrollView!
    
    @IBOutlet weak var text: UIColor!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollview.integrateWithKeyboard()
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


