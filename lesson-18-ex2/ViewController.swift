//
//  ViewController.swift
//  lesson-18-ex2
//
//  Created by Pedro Grando on 21/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewBackgroundImage: UIImageView!
    @IBOutlet weak var titleOfTheApp: UILabel!
    @IBOutlet weak var subTitleApp: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var positionTextField: UITextField!
    
    @IBOutlet weak var birthDateLabel: UILabel!
    @IBOutlet weak var pickDate: UIDatePicker!
    
    
    @IBOutlet weak var pixKeyField: UITextField!
    @IBOutlet weak var modalityLabel: UILabel!
    
    @IBOutlet weak var modalityType: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewBackgroundImage.image = UIImage(imageLiteralResourceName: "exercise-02-gradient")
        setupLayout()
    }
    
    func setupLayout() {
        titleOfTheApp.text = "Cadastro"
        titleOfTheApp.font = UIFont(name: "Arial-boldMT", size: 40)
        titleOfTheApp.textColor = UIColor.white
        
        
        subTitleApp.text = "Ogitrov"
        subTitleApp.font = UIFont(name: "Arial-boldMT", size: 20)
        subTitleApp.textColor = UIColor.white
        
        
        birthDateLabel.text = "Quando você nasceu?"
        birthDateLabel.textColor = UIColor.white
        birthDateLabel.font = UIFont(name: "Arial", size: 20)
        
        
        modalityLabel.text = "Qual sua modalidade?"
        modalityLabel.shadowColor = UIColor.black
        modalityLabel.textColor = UIColor.white
        modalityLabel.font = UIFont(name: "Arial", size: 20)
        
    }
    
    @IBAction func finishButton(_ sender: UIButton) {
        let name = nameTextField.text ?? ""
        let position = positionTextField.text ?? ""
        let pixKey = pixKeyField.text ?? ""
        let birthDate = pickDate.date.formatted()
        let modalityJob = modalityType.titleForSegment(at: modalityType.selectedSegmentIndex)
    
        
        print("nome: \(name), \(position), \(pixKey), \(birthDate), \(modalityJob ?? "")")
        
        nameTextField.text = ""
        positionTextField.text = ""
        pixKeyField.text = ""
    }

}
