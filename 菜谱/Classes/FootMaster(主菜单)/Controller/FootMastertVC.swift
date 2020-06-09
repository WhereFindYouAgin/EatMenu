//
//  FootMastertVC.swift
//  菜谱
//
//  Created by LUOSU on 2020/6/9.
//  Copyright © 2020 LUOSU. All rights reserved.
//

import UIKit

let kChangeTypeNotificaiton = "kChangeTypeNotificaiton"


class FootMastertVC: UITableViewController {
    
    var typeModels: [TypeModel] = [TypeModel]()
    {
        didSet
        {
            tableView.reloadData()
        }
        
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()

        typeModels = DataTool.getFootTypeData()
        tableView(tableView, didSelectRowAt: IndexPath(row: 0, section: 0))
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return typeModels.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "footMasterIdentifier", for: indexPath)
        let typeModel = typeModels[indexPath.row]
        cell.textLabel?.text = typeModel.name

        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let type = typeModels[indexPath.row]
        NotificationCenter.default.post(name: Notification.Name(rawValue: kChangeTypeNotificaiton), object: type)
        
    }
   

}
