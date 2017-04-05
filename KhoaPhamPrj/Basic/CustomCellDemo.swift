//
//  CustomCellDemo.swift
//  KhoaPhamPrj
//
//  Created by khacpham on 2/21/17.
//  Copyright © 2017 oic. All rights reserved.
//

import UIKit

class CustomCellDemo: UITableViewController {
    
    var data = Array<Poster>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.estimatedRowHeight = 170
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        initData()
        let nib = UINib(nibName: "CustomCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "#")
    }
    
    func initData() {
        data.append(Poster(title: "Back to the future", thumbStr: "thumb.jpg", score: 5.5))
        data.append(Poster(title: "Jaws", thumbStr: "thumb.jpg", score: 4.8))
        data.append(Poster(title: "Scarface", thumbStr: "thumb.jpg", score: 7.9))
        data.append(Poster(title: "Start Wars", thumbStr: "thumb.jpg", score: 7.1))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "#", for: indexPath) as! CustomCell
        let poster = data[indexPath.row]
        cell.title.text = poster.title
        cell.score.text = "\(poster.score) and this is very long text should be display in multiple lines. It should auto resize base on content height. It should auto resize base on content height. It should auto resize base on content height"
        cell.thumb.image = poster.thumb
        return cell
    }
    
}
