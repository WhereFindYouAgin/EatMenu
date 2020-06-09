//
//  DetailWebVC.swift
//  菜谱
//
//  Created by LUOSU on 2020/6/9.
//  Copyright © 2020 LUOSU. All rights reserved.
//

import UIKit

class DetailWebVC: UIViewController {
    var url: URL?
    
    @IBOutlet weak var web: UIWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "close", style: .plain, target: self, action: #selector(close))
        
        
        if url != nil {
            let request = URLRequest(url: url!)
            web.loadRequest(request)
            
        }
    }

    @objc func close()
    {
        dismiss(animated: true, completion: nil)
    }


}
