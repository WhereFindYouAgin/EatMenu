//
//  DataTool.swift
//  菜谱
//
//  Created by LUOSU on 2020/6/9.
//  Copyright © 2020 LUOSU. All rights reserved.
//

import UIKit

class DataTool: NSObject
{
    class func getFootTypeData() ->[TypeModel]
    {
        
        //1.获取文件路径
        guard let path = Bundle.main.path(forResource: "food_types.plist", ofType: nil) else
        {
         return [TypeModel]()
        }
        
        //2.去读数组数据
        
        guard  let dicArr = NSArray(contentsOfFile: path) else
        {
            return [TypeModel]()
        }
        
        
        //3.专程模型数据
        var typeModels = [TypeModel]()
        
        for dic in dicArr
        {
            let resultDic = dic as! [String: AnyObject]
            let typeModel = TypeModel(dict: resultDic)
            typeModels.append(typeModel)
        }
        
        
        //4.返回
        return typeModels
    }
    
    class func getDetailData(idstr: String) -> [FootDetailModel]
    {
        //1.获取文件路径
        guard let path = Bundle.main.path(forResource: "type_" + idstr + "_foods.plist", ofType: nil) else
               {
                return [FootDetailModel]()
               }
        
        //2.去读数组数
        
        guard  let dicArr = NSArray(contentsOfFile: path) else
        {
            return [FootDetailModel]()
        }
        
        
        //3.专程模型数
        var detailModels = [FootDetailModel]()
        
        for dic in dicArr
        {
            let resultDic = dic as! [String: AnyObject]
            let detailModel = FootDetailModel(dict: resultDic)
            detailModels.append(detailModel)
        }
                
        //4.返回
        return detailModels
    }

}
