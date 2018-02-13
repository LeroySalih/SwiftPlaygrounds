//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var canvas = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 300))
canvas.backgroundColor = UIColor.red
canvas.translatesAutoresizingMaskIntoConstraints = false

var stackView = UIStackView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
stackView.backgroundColor = .red

var label1 = UILabel()
label1.text = "Red"
label1.backgroundColor = .red
label1.sizeToFit()


var label2 = UILabel()
label2.text = "Yellow"
label2.backgroundColor = .yellow
label2.sizeToFit()

var label3 = UILabel()
label3.text = "Green"
label3.backgroundColor = .green
label3.sizeToFit()

stackView.addArrangedSubview(label1)
stackView.addArrangedSubview(label2)
stackView.addArrangedSubview(label3)

canvas.addSubview(stackView)

NSLayoutConstraint.activate([
    label1.widthAnchor.constraint(equalToConstant: 50),
    label2.widthAnchor.constraint(equalToConstant: 50),
    label3.widthAnchor.constraint(equalToConstant: 50),
    
    label1.heightAnchor.constraint(equalToConstant: 50),
    label2.heightAnchor.constraint(equalToConstant: 50),
    label3.heightAnchor.constraint(equalToConstant: 50),
    
    stackView.topAnchor.constraint(equalTo: canvas.topAnchor),
    stackView.leadingAnchor.constraint(equalTo: canvas.leadingAnchor),
    stackView.trailingAnchor.constraint(equalTo: canvas.trailingAnchor)
])




PlaygroundPage.current.liveView = canvas
