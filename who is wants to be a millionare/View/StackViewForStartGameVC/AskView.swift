//
//  View.swift
//  who is wants to be a millionare
//
//  Created by Андрей Фроленков on 9.02.23.
//

import UIKit

class ViewAsk: UIView {
    
    // BackgroundView
    private let backgroundView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "image3")
        return imageView
    }()
    
    lazy var askTheAudience: UILabel = {
        return createLabel(text: "Помощь зала", size: 30, color: .purple)
        
    }()
    
    lazy var labelA: UILabel = {
        return createLabel(text: "Hello", size: 20, color: .white)
    }()
    
    lazy var labelB: UILabel = {
        return createLabel(text: "Hello", size: 20, color: .white)
    }()
    
    lazy var labelC: UILabel = {
        return createLabel(text: "Hello", size: 20, color: .white)
    }()
    
    lazy var labelD: UILabel = {
        return createLabel(text: "Hello", size: 20, color: .white)
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [labelA, labelB, labelC, labelD])
        stack.spacing = 10
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    let button: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Закрыть", for: .normal)
        button.setTitleColor( .red, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.addTarget(nil, action: #selector(dismissButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.cornerRadius = 24
        backgroundColor = UIColor.gray.withAlphaComponent(0.90)
        
        addSubview(backgroundView)
        addSubview(askTheAudience)
        addSubview(button)
        addSubview(stackView)
        translatesAutoresizingMaskIntoConstraints = false
        setConstraints()
        moveIn()
        
    }
    
    func moveIn() {
            transform = CGAffineTransform(scaleX: 1.35, y: 1.35)
            alpha = 0.0
            
            UIView.animate(withDuration: 0.24) {
                self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                self.alpha = 1.0
            }
        }
    
    func moveOut() {
        UIView.animate(withDuration: 0.24, animations: {
            self.transform = CGAffineTransform(scaleX: 1.35, y: 1.35)
            self.alpha = 0.0
        }) { _ in
            self.removeFromSuperview()
        }
    }
    
    func createLabel(text: String, size: CGFloat, color: UIColor) -> UILabel {
        
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: size, weight: .bold)
        label.textColor = color
        label.textAlignment = .center
        
        return label
    }
    
    @objc func dismissButton() {
        moveOut()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        
        askTheAudience.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            button.heightAnchor.constraint(equalToConstant: 40),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            askTheAudience.heightAnchor.constraint(equalToConstant: 40),
            askTheAudience.widthAnchor.constraint(equalToConstant: 200),
            askTheAudience.centerXAnchor.constraint(equalTo: centerXAnchor),
            askTheAudience.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor)

        ])
    }
    
}