//
//  ViewController.swift
//  TestApp
//
//  Created by x.sargsyan on 17.05.21.
//  Copyright © 2021 SwiftAcademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var iosButton: UIButton!
    var androidButton: UIButton!
    var infoLabel: UILabel!
    var progressBar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.progressBar = createProgressBar()
        
        self.iosButton = UIButton().createCustomButton(title: "ios")
        self.iosButton.setFrameForGradient()
        self.iosButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        self.androidButton = UIButton().createCustomButton(title: "android")
        self.androidButton.setFrameForGradient()
        self.androidButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        self.infoLabel = UILabel().createCustomLabel(
            text: "Какая операционная система у вас основная?",
            fontSize: 24.0,
            isBold: true)
        
        
        self.view.addSubview(iosButton)
        self.view.addSubview(progressBar)
        self.view.addSubview(androidButton)
        self.view.addSubview(infoLabel)
        
        gradient(iosButton)
        gradient(androidButton)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        NSLayoutConstraint.activate([
            
            progressBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            progressBar.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            progressBar.widthAnchor.constraint(equalToConstant: 350),
            progressBar.heightAnchor.constraint(equalToConstant: 10),
            
            infoLabel.topAnchor.constraint(equalTo: progressBar.bottomAnchor, constant: 30),
            infoLabel.widthAnchor.constraint(equalToConstant: 350),
            infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            iosButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -35),
            iosButton.widthAnchor.constraint(equalToConstant: 350),
            iosButton.heightAnchor.constraint(equalToConstant: 62),
            iosButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            androidButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 35),
            androidButton.widthAnchor.constraint(equalToConstant: 350),
            androidButton.heightAnchor.constraint(equalToConstant: 62),
            androidButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    
    @objc private func buttonTapped() {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    
    private func createProgressBar() -> UIProgressView {
        let progressBar = UIProgressView()
        progressBar.progress = 0.20
        progressBar.clipsToBounds = true
        progressBar.tintColor = .orange
        progressBar.layer.cornerRadius = 5
        progressBar.translatesAutoresizingMaskIntoConstraints = false
        return progressBar
    }    
}

