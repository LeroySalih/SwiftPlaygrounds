//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var canvas = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 300))
canvas.backgroundColor = UIColor.red
canvas.translatesAutoresizingMaskIntoConstraints = false

var stackView = UIStackView(frame: CGRect(x: 0, y: 0, width: 00, height: 00))
stackView.translatesAutoresizingMaskIntoConstraints = false

stackView.backgroundColor = .red

var label1 = UILabel()
label1.text = "Red"
label1.backgroundColor = .red
label1.setContentHuggingPriority(UILayoutPriority(rawValue:250), for: .vertical)



var label2 = UILabel()
label2.text = "Yellow"
label2.backgroundColor = .yellow
label1.setContentHuggingPriority(UILayoutPriority(rawValue:250), for: .vertical)

var label3 = UILabel()
label3.text = "Green"
label3.backgroundColor = .green
label1.setContentHuggingPriority(UILayoutPriority(rawValue:249), for: .vertical)


stackView.addArrangedSubview(label1)
stackView.addArrangedSubview(label2)
stackView.addArrangedSubview(label3)

// StackView Configuration
stackView.axis = .vertical
stackView.distribution = .fill
stackView.spacing = 5

canvas.addSubview(stackView)

NSLayoutConstraint.activate([
  
    stackView.topAnchor.constraint(equalTo: canvas.topAnchor),
    stackView.leadingAnchor.constraint(equalTo: canvas.leadingAnchor),
    stackView.trailingAnchor.constraint(equalTo: canvas.trailingAnchor)
    
])




PlaygroundPage.current.liveView = canvas
