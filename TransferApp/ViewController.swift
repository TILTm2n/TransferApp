//
//  ViewController.swift
//  TransferApp
//
//  Created by Eugene on 04.04.2022.
//

import UIKit

class ViewController: UIViewController, DataUpdateProtocol {
    
    var updatedData = "Test Data"
    
    @IBOutlet weak var dataLabel: UILabel!
    
    @IBAction func editDataWithProperty(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editScreen = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        editScreen.updatingData = dataLabel.text ?? ""
        
        self.navigationController?.pushViewController(editScreen, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateLabel(withText: updatedData)
    }

    private func updateLabel(withText text: String) {
        dataLabel.text = updatedData
    }
    
    func onDataUpdate(data: String) {
        updatedData = data
        updateLabel(withText: data)
    }
    
}

