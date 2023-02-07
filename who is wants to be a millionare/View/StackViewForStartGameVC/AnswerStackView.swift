//
//  AnswerStackView.swift
//  who is wants to be a millionare
//
//  Created by Андрей Фроленков on 7.02.23.
//

import UIKit

class AnswerStackView: UIStackView {

    let buttonHeight: CGFloat = 50
    
    lazy var buttonOne: UIButton = {
        return settingButton(title: "Vasya", imageName: "a.circle")
    }()
    
    lazy var buttonTwo: UIButton = {
        
        return settingButton(title: "Vasya", imageName: "b.circle")
    }()
    
    lazy var buttonThree: UIButton = {
        
        return settingButton(title: "Vasya", imageName: "c.circle")
    }()
    
    lazy var buttonFour: UIButton = {
        
        return settingButton(title: "Vasya", imageName: "d.circle")
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        axis = .vertical
        alignment = .fill
        distribution = .fillEqually
        spacing = 10
        
        addArrangedAllSubview()
        settingConstraints()
        
    }
    
    // MARK: addArrangedAllSubview
    private func addArrangedAllSubview() {
        
        addArrangedSubview(buttonOne)
        addArrangedSubview(buttonTwo)
        addArrangedSubview(buttonThree)
        addArrangedSubview(buttonFour)
    }
    
    // MARK: settingConstraints
    private func settingConstraints() {
        
        // For all Button
        NSLayoutConstraint.activate([
            buttonOne.heightAnchor.constraint(equalToConstant: buttonHeight)
        ])
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension AnswerStackView {
    
    
    // MARK: BUTTON CONFIGURATION
    private func settingButton(title: String, imageName: String) -> UIButton {
        
        let button = UIButton()

        if #available(iOS 15.0, *) {
            button.configuration = buttonConfiguration(title: title, imageName: imageName)
            button.contentHorizontalAlignment = .fill
            button.addTarget(nil, action: #selector(StartGameVC.buttonAnswer(sender:)), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        } else {
            button.setTitle(title, for: .normal)
            button.setImage(UIImage(named: imageName), for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(nil, action: #selector(StartGameVC.buttonAnswer(sender:)), for: .touchUpInside)
            return button
        }
        
    }
    
    @available(iOS 15.0, *)
    private func buttonConfiguration(title: String, imageName: String) -> UIButton.Configuration {
        
        var configuration = UIButton.Configuration.plain()
        configuration.title = title
        configuration.attributedTitle?.foregroundColor = .white
        configuration.background.image = UIImage(named: "blue")
        configuration.image = UIImage(systemName: imageName)
        configuration.baseForegroundColor = .white
        
        return configuration
    }
}
