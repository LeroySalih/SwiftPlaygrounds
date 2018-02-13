//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let navBarHeight: CGFloat = 45

class ViewController: UIViewController {
    
    var tableView: UITableView?
    var navigationBar: UINavigationBar?
    
    let navTitle = "Greetings"
    let items = [ "Hello", "Hallo", "Hullo" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Table View
        self.view.frame = CGRect(x: 0, y: navBarHeight, width: 320, height: 480)
        self.tableView = UITableView(frame: self.view.frame)
        self.tableView!.dataSource = self
        self.tableView!.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView!)
        
        // MARK: Navigation Bar
        self.navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: navBarHeight) )
        self.navigationBar!.backgroundColor = UIColor.white
        let navigationItem = UINavigationItem(title: self.navTitle)
        self.navigationBar!.items = [navigationItem]
        self.view.addSubview(self.navigationBar!)
        
    }
}

// MARK: Table View Data Source
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(self.items[indexPath.row])"
        return cell
    }
}

var ctrl = ViewController()
PlaygroundPage.current.liveView = ctrl.view

