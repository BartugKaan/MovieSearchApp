//
//  CustomAlertViewController.swift
//  Movie Searcher
//
//  Created by Bartuğ Kaan Çelebi on 22.02.2024.
//

import UIKit

class CustomAlertViewController: UIViewController {
  
  @IBOutlet var alertImage: UIImageView!
  @IBOutlet var alertTitle: UILabel!
  @IBOutlet var alertMessage: UILabel!
  @IBOutlet var alerButton: UIButton!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
    
  init() {
    super.init(nibName: "CustomAlertViewController", bundle: Bundle(for: CustomAlertViewController.self))
    self.modalPresentationStyle = .overCurrentContext
    self.modalTransitionStyle = .crossDissolve
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
 
  
  @IBAction func buttonTapped(_ sender: UIButton) {
    print("Button tapped")
    self.dismiss(animated: false)
  }
  
}
