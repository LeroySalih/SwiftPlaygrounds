//: Playground - noun: a place where people can play
//: Demo of StackView in Fill Mode, and specifying which cell will stretch by providing width constraints.

import UIKit
import PlaygroundSupport

var canvas = UIView(frame: CGRect(x: 0, y: 0, width: 600, height: 300))
canvas.backgroundColor = UIColor.gray

////////////////////////////////////////////////////////////////////////////
// First Configuration
////////////////////////////////////////////////////////////////////////////
var stackLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 600, height: 300))
stackLabel.translatesAutoresizingMaskIntoConstraints  = false
stackLabel.text = "First Cell Stretches Configuration"


var stackView_1 = UIStackView(frame: CGRect(x: 0, y: 0, width: 400, height: 100))
stackView_1.translatesAutoresizingMaskIntoConstraints = false
stackView_1.backgroundColor = .red

// StackView Configuration
stackView_1.axis = .horizontal
stackView_1.distribution = .fill
stackView_1.spacing = 5


var label11 = UILabel()
label11.text = "Red"
label11.backgroundColor = .red

var label12 = UILabel()
label12.text = "Yellow"
label12.backgroundColor = .yellow

var label13 = UILabel()
label13.text = "Green"
label13.backgroundColor = .green

stackView_1.addArrangedSubview(label11)
stackView_1.addArrangedSubview(label12)
stackView_1.addArrangedSubview(label13)

////////////////////////////////////////////////////////////////////////////
// Second Configuration
////////////////////////////////////////////////////////////////////////////

var stackLabel_2 = UILabel(frame: CGRect(x: 0, y: 0, width: 600, height: 300))
stackLabel_2.translatesAutoresizingMaskIntoConstraints  = false
stackLabel_2.text = "Middle Cell Stretches"

var stackView_2 = UIStackView(frame: CGRect(x: 0, y: 0, width: 400, height: 100))
stackView_2.translatesAutoresizingMaskIntoConstraints = false
stackView_2.backgroundColor = .red
stackView_2.spacing = 5
stackView_2.distribution = .fill

var label21 = UILabel()
label21.text = "Red"
label21.sizeToFit()
label21.backgroundColor = .red
//label21.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
// label21.setContentCompressionResistancePriority(UILayoutPriority(750), for: .horizontal)

var label22 = UILabel()
label22.text = "Yellow"
label22.sizeToFit()
label22.backgroundColor = .yellow
//label22.setContentHuggingPriority(UILayoutPriority(252), for: .horizontal)
// label22.setContentCompressionResistancePriority(UILayoutPriority(750), for: .horizontal)

var label23 = UILabel()
label23.text = "Green"
label23.sizeToFit()
label23.backgroundColor = .green
//label23.setContentHuggingPriority(UILayoutPriority(252), for: .horizontal)
// label23.setContentCompressionResistancePriority(UILayoutPriority(749), for: .horizontal)

stackView_2.addArrangedSubview(label21)
stackView_2.addArrangedSubview(label22)
stackView_2.addArrangedSubview(label23)

////////////////////////////////////////////////////////////////////////////
// Third Configuration
////////////////////////////////////////////////////////////////////////////

var stackLabel_3 = UILabel(frame: CGRect(x: 0, y: 0, width: 600, height: 300))
stackLabel_3.translatesAutoresizingMaskIntoConstraints  = false
stackLabel_3.text = "Last Cell Stretches"

var stackView_3 = UIStackView(frame: CGRect(x: 0, y: 0, width: 400, height: 100))
stackView_3.translatesAutoresizingMaskIntoConstraints = false
stackView_3.backgroundColor = .red
stackView_3.spacing = 5
stackView_3.distribution = .fill

var label31 = UILabel()
label31.text = "Red"
label31.sizeToFit()
label31.backgroundColor = .red
//label31.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
// label21.setContentCompressionResistancePriority(UILayoutPriority(750), for: .horizontal)

var label32 = UILabel()
label32.text = "Yellow"
label32.sizeToFit()
label32.backgroundColor = .yellow
//label32.setContentHuggingPriority(UILayoutPriority(252), for: .horizontal)
// label22.setContentCompressionResistancePriority(UILayoutPriority(750), for: .horizontal)

var label33 = UILabel()
label33.text = "Green"
label33.sizeToFit()
label33.backgroundColor = .green
//label33.setContentHuggingPriority(UILayoutPriority(252), for: .horizontal)
// label23.setContentCompressionResistancePriority(UILayoutPriority(749), for: .horizontal)

stackView_3.addArrangedSubview(label31)
stackView_3.addArrangedSubview(label32)
stackView_3.addArrangedSubview(label33)


canvas.addSubview(stackLabel)
canvas.addSubview(stackView_1)
canvas.addSubview(stackLabel_2)
canvas.addSubview(stackView_2)

canvas.addSubview(stackLabel_3)
canvas.addSubview(stackView_3)

NSLayoutConstraint.activate([
    label12.widthAnchor.constraint(equalToConstant: 100),
    label13.widthAnchor.constraint(equalToConstant: 100),
    
    label21.widthAnchor.constraint(equalToConstant: 100),
    label23.widthAnchor.constraint(equalToConstant: 100),
    
    label31.widthAnchor.constraint(equalToConstant: 100),
    label32.widthAnchor.constraint(equalToConstant: 100),
    
    stackView_1.topAnchor.constraint(equalTo: stackLabel.bottomAnchor, constant: 10),
    stackView_1.leadingAnchor.constraint(equalTo: canvas.leadingAnchor),
    stackView_1.trailingAnchor.constraint(equalTo: canvas.trailingAnchor),
    
    stackLabel_2.leadingAnchor.constraint(equalTo:canvas.leadingAnchor),
    stackLabel_2.topAnchor.constraint(equalTo: stackView_1.bottomAnchor, constant: 10),
    stackView_2.topAnchor.constraint(equalTo: stackLabel_2.bottomAnchor, constant: 10),
    stackView_2.leadingAnchor.constraint(equalTo: canvas.leadingAnchor),
    stackView_2.trailingAnchor.constraint(equalTo: canvas.trailingAnchor),
    
    stackLabel_3.leadingAnchor.constraint(equalTo:canvas.leadingAnchor),
    stackLabel_3.topAnchor.constraint(equalTo: stackView_2.bottomAnchor, constant: 10),
    stackView_3.topAnchor.constraint(equalTo: stackLabel_3.bottomAnchor, constant: 10),
    stackView_3.leadingAnchor.constraint(equalTo: canvas.leadingAnchor),
    stackView_3.trailingAnchor.constraint(equalTo: canvas.trailingAnchor),

])

PlaygroundPage.current.liveView = canvas
