//
//  FootDetailTVC.swift
//  菜谱
//
//  Created by LUOSU on 2020/6/9.
//  Copyright © 2020 LUOSU. All rights reserved.
//

import UIKit

class FootDetailTVC: UITableViewController
{
    var footDetailModels: [FootDetailModel] = [FootDetailModel]()
    {
        didSet
        {
            tableView.reloadData()
        }
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(getDetailDataNoti(notification:)), name: Notification.Name(rawValue: kChangeTypeNotificaiton), object: nil)
    }
    @objc func getDetailDataNoti(notification: Notification)
    {
        let type = notification.object as! TypeModel
        footDetailModels = DataTool.getDetailData(idstr: (type.idstr)!)

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return footDetailModels.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "footDetailIdentifier", for: indexPath)
        let footDetailModel = footDetailModels[indexPath.row]
        cell.textLabel?.text = footDetailModel.name
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let foot = footDetailModels[indexPath.row]
        
        guard let path = Bundle.main.url(forResource: (foot.idstr!) + ".html", withExtension: nil) else
        {
            return
        }
        //通过webView 加载
        let web = DetailWebVC()
        web.url = path
        
        let nav = UINavigationController(rootViewController: web)
        nav.modalPresentationStyle = .formSheet
        present(nav, animated: true, completion: nil)
        
        
        
    }

}
