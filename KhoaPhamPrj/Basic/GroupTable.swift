//
//  GroupTable.swift
//  KhoaPhamPrj
//
//  Created by khacpham on 2/21/17.
//  Copyright © 2017 oic. All rights reserved.
//

import UIKit

class GroupTable: UITableViewController {
    
    var data = Array<DataItem>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data.append(DataItem(title: "fruit", data: ["lemon","Apple","orage"]))
        data.append(DataItem(title: "company", data: ["MSoft","Apple","Google"]))
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let dataItem = data[section] as DataItem
        return dataItem.data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cellID = "#"
        var cell: UITableViewCell
        if let dequeCell = tableView.dequeueReusableCell(withIdentifier: cellID) {
            cell = dequeCell as UITableViewCell
        }else{
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: cellID)
        }
        let dataItem = data[indexPath.section] as DataItem
        cell.textLabel?.text = dataItem.data[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let dataItem = data[section] as DataItem
        return dataItem.title
    }
}
