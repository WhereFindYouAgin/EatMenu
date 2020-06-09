//
//  TypeModel.swift
//  菜谱
//
//  Created by LUOSU on 2020/6/9.
//  Copyright © 2020 LUOSU. All rights reserved.
//

import UIKit

class TypeModel: NSObject
{
    ///菜单编号
    @objc var idstr: String?
    ///菜单名
    @objc var name: String?
    override init() {
        
    }
    init(dict: [String: AnyObject])
    {
        super.init()
        setValuesForKeys(dict)
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
}
