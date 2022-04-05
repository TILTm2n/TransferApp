//
//  SecondViewController.swift
//  TransferApp
//
//  Created by Eugene on 04.04.2022.
//

import UIKit

class SecondViewController: UIViewController {

    var updatingData: String = ""
    
    @IBOutlet weak var dataTextField: UITextField!
    
    @IBAction func saveDataWithProperty(_ sender: UIButton) {
        self.navigationController?.viewControllers.forEach {
            //потенциальная утечка памяти
            viewController in
            (viewController as? ViewController)?.updatedData = dataTextField.text ?? ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateTextFieldData(withText: updatingData)
        
    }
    
    private func updateTextFieldData(withText text: String) {
        dataTextField.text = text
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
