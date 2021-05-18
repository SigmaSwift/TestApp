//
//  ThirdViewController.swift
//  TestApp
//
//  Created by x.sargsyan on 18.05.21.
//  Copyright © 2021 SwiftAcademy. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    let imageView = UIImageView()
    var appleButton: UIButton!
    var infoLabel: UILabel!
    var descriptionLabel: UILabel!
    var bottomTextTitle: UILabel!
    var bottomTextDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.infoLabel = UILabel().createCustomLabel(
            text: "Будем на связи!",
            fontSize: 30,
            isBold: true)
        
        self.descriptionLabel = UILabel().createCustomLabel(
            text: "Войдите в аккаунт чтобы сохранить прогресс опроса и  получать новости связанные с ним, а также полезные материалы на почту",
            fontSize: 19.0,
            lines: 4)
        
        self.appleButton = UIButton().createCustomButton(title: " войдите через Apple ID", titleColor: .white, background: .black)
        self.appleButton.addTarget(self, action: #selector(appleButtonTapped), for: .touchUpInside)
        
        self.bottomTextTitle = UILabel().createCustomLabel(
            text: "У меня уже есть аккаунт",
            fontSize: 22,
            isBold: false,
            lines: 1)
        self.bottomTextTitle.textAlignment = .center
        
        self.bottomTextDescription = UILabel().createCustomLabel(
            text: "Продолжая использование, вы принимаете условия пользовательского соглашения и политики конфиденциальности",
            fontSize: 16,
            isBold: false,
            lines: 3)
        self.bottomTextDescription.textAlignment = .center
        
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: (view.frame.height / 2) - 100)
        imageView.image = UIImage(named: "mac_screen")
        imageView.contentMode = .scaleAspectFill
        
        self.view.addSubview(imageView)
        self.view.addSubview(infoLabel)
        self.view.addSubview(appleButton)
        self.view.addSubview(descriptionLabel)
        self.view.addSubview(bottomTextTitle)
        self.view.addSubview(bottomTextDescription)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0),
            infoLabel.widthAnchor.constraint(equalToConstant: 350),
            infoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            descriptionLabel.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 5),
            descriptionLabel.widthAnchor.constraint(equalToConstant: 400),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            appleButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 30),
            appleButton.widthAnchor.constraint(equalToConstant: 380),
            appleButton.heightAnchor.constraint(equalToConstant: 55),
            appleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            bottomTextTitle.topAnchor.constraint(equalTo: appleButton.bottomAnchor, constant: 120),
            bottomTextTitle.widthAnchor.constraint(equalToConstant: 300),
            bottomTextTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            bottomTextDescription.topAnchor.constraint(equalTo: bottomTextTitle.bottomAnchor, constant: 5),
            bottomTextDescription.widthAnchor.constraint(equalToConstant: 350),
            bottomTextDescription.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc func appleButtonTapped() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    
}
