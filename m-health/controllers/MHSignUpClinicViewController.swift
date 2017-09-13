//
//  MHSignUpClinicViewController.swift
//  m-health
//
//  Created by Ali Al-Hassany on 1/24/17.
//  Copyright © 2017 Ali Al-Hassany. All rights reserved.
//

import UIKit

var ClincInfo: Clincs!

class MHSignUpClinicViewController: UIViewController {

    @IBOutlet var tap: UITapGestureRecognizer!
    @IBAction func tapGestureAction(sender: AnyObject) {
        view.endEditing(true)
    }
    ///Sign up step 1
    @IBOutlet weak var clinicNameText: UITextField!
    @IBOutlet weak var clinicPhoneText: UITextField!
    @IBOutlet weak var clinicMobileText: UITextField!
    @IBOutlet weak var clinicEmailText: UITextField!
    @IBOutlet weak var clinicAddressText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeSignUp(sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextButton(_ sender: Any) {
        ClincInfo.clincName = clinicNameText.text!
        ClincInfo.phone = clinicPhoneText.text!
        ClincInfo.address = clinicAddressText.text!
        ClincInfo.mobile = clinicMobileText.text!
        ClincInfo.email = clinicEmailText.text!
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
