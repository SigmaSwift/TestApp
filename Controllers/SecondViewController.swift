//
//  SecondViewController.swift
//  TestApp
//
//  Created by x.sargsyan on 17.05.21.
//  Copyright © 2021 SwiftAcademy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var buttonsArray = [UIButton]()
    var infoLabel: UILabel!
    var progressBar: UIProgressView!
    var backButton: UIButton!
    var continueButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    
        self.progressBar = createProgressBar()
        self.progressBar.progress = 0.40
        self.progressBar.tintColor = .orange
        
        self.infoLabel = UILabel().createCustomLabel(
            text: "Какими версиями ios вы пользовались?",
            fontSize: 24.0,
            isBold: true)
        
        self.backButton = UIButton().createCustomButton(
            title: "←",
            titleColor: .orange,
            background: .white)
        self.backButton.titleLabel?.font = UIFont.systemFont(ofSize: 30.0)
        self.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
    
        self.continueButton = UIButton().createCustomButton(title: "Продолжить", titleColor: .white)
        self.continueButton.setFrameForGradient(width: 290, height: 55)
        self.continueButton.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
        self.continueButton.applyGradient(colours: [#colorLiteral(red: 1, green: 0.2187515021, blue: 0.160252943, alpha: 1), #colorLiteral(red: 1, green: 0.591432311, blue: 0.1248349377, alpha: 1)])
        
        self.view.addSubview(progressBar)
        self.view.addSubview(infoLabel)
        self.view.addSubview(backButton)
        self.view.addSubview(continueButton)
        
        
        for index in 0...6 {
            buttonsArray.append(UIButton().createCustomButton(title: "\(14 - index)"))
            buttonsArray[index].addTarget(self, action: #selector(choiseButtons(_:)), for: .touchUpInside)
            buttonsArray[index].setFrameForGradient(height: 55)
            buttonsArray[index].layer.cornerRadius = 17
            gradient(buttonsArray[index])
            
            self.view.addSubview(buttonsArray[index])
        }
        
        for index in 1...6 {
            buttonsArray[index].topAnchor.constraint(equalTo: buttonsArray[index - 1].bottomAnchor, constant: 10).isActive = true
            buttonsArray[index].widthAnchor.constraint(equalToConstant: 350).isActive = true
            buttonsArray[index].heightAnchor.constraint(equalToConstant: 55).isActive = true
            buttonsArray[index].centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
        
        NSLayoutConstraint.activate([
            progressBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            progressBar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            progressBar.widthAnchor.constraint(equalToConstant: 350),
            progressBar.heightAnchor.constraint(equalToConstant: 10),
            
            infoLabel.topAnchor.constraint(equalTo: progressBar.bottomAnchor, constant: 30),
            infoLabel.widthAnchor.constraint(equalToConstant: 350),
            infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            buttonsArray[0].topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 40),
            buttonsArray[0].widthAnchor.constraint(equalToConstant: 350),
            buttonsArray[0].heightAnchor.constraint(equalToConstant: 55),
            buttonsArray[0].centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            backButton.topAnchor.constraint(equalTo: buttonsArray.last!.bottomAnchor, constant: 140),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
            backButton.widthAnchor.constraint(equalToConstant: 50),
            backButton.heightAnchor.constraint(equalToConstant: 25),
            
            
            continueButton.centerYAnchor.constraint(equalTo: backButton.centerYAnchor),
            continueButton.widthAnchor.constraint(equalToConstant: 290),
            continueButton.heightAnchor.constraint(equalToConstant: 55),
            continueButton.leadingAnchor.constraint(equalTo: backButton.trailingAnchor, constant: 15),
        ])
    }
    

    private func createProgressBar() -> UIProgressView {
        let progressBar = UIProgressView()
        progressBar.clipsToBounds = true
        progressBar.tintColor = .orange
        progressBar.layer.cornerRadius = 5
        progressBar.translatesAutoresizingMaskIntoConstraints = false
        return progressBar
    }
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func choiseButtons(_ button: UIButton) {
        if button.backgroundColor == .white {
            button.backgroundColor = #colorLiteral(red: 1, green: 0.591432311, blue: 0.1248349377, alpha: 1)
             button.setTitleColor(.white, for: .normal)
        } else {
            button.backgroundColor = .white
            button.setTitleColor(.black, for: .normal)
        }
    }
    
    @objc func continueButtonTapped() {
        let thirdViewController = ThirdViewController()
        navigationController?.pushViewController(thirdViewController, animated: true)
        
    }
    
}


  

