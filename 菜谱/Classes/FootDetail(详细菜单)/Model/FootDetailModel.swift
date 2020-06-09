//
//  FootDetailModel.swift
//  菜谱
//
//  Created by LUOSU on 2020/6/9.
//  Copyright © 2020 LUOSU. All rights reserved.
//

import UIKit

class FootDetailModel: NSObject
{
    @objc var diff: String?
    @objc var idstr: String?
    @objc var imageUrl: String?
    @objc var name: String?
    @objc var time: String?
    @objc var url: String?
    override init() {}
    init(dict: [String: AnyObject])
    {
        super.init()
        setValuesForKeys(dict)
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {}
}
