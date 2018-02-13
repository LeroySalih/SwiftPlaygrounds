import UIKit

// data for table view is array of String
let rowData = [ "Chicago", "Milwaukee", "Detroit", "Lansing" ]

//
// simple subclass of UITableViewCell that has an associated ReuseIdentifier
// and a value property. Setting the value property changes what the cell displays
//

public class TableViewCell : UITableViewCell
{
    public static let ReuseIdentifier = "TableViewCell"
    
    var value:AnyObject? {
        didSet {
            self.textLabel!.text = value as? String
        }
    }
}

//
// Simple implementation of a table view data source--just contains one String per row
// You could change your rowData to be an array of Dictionary for richer content possibilities.
// You could also load your data from a JSON file... for example
//

class TableViewDataSource : NSObject, UITableViewDataSource
{
    var rowData:[String]?
    
    init( rowData:[String] )
    {
        self.rowData = rowData
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return rowData?.count ?? 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        assert( indexPath.section ==  0 ) // we only have 1 section, so if someone section ≠ 0, it's a bug
        
        var cell:TableViewCell! = tableView.dequeueReusableCellWithIdentifier( "Cell" ) as? TableViewCell
        if cell == nil
        {
            cell = TableViewCell( style: .Default, reuseIdentifier: "Cell" )
        }
        
        cell.value = self.rowData![ indexPath.row ]
        
        return cell
    }
    
}

// This is the view controller for our table view.
// The view controller's view happens to be a table view, but your table view
// could actually be a subview of your view controller's view

class TableViewController : UIViewController, UITableViewDelegate
{
    // data source for our table view, lazily created
    lazy var tableViewDataSource:TableViewDataSource = TableViewDataSource( rowData: rowData )
    
    override func loadView()
    {
        // our view is a UITableView
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self.tableViewDataSource // using a self-contained data source object for this example
        self.view = tableView
    }
}

let window:UIWindow! = UIWindow()
window.rootViewController = TableViewController()
window.makeKeyAndVisible()  // click the "preview eyeball" to see the window

