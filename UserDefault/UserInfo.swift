//
//  UserInfo.swift
//  UserDefault
//
//  Created by Sakya on 2018/2/22.
//  Copyright © 2018年 Sakya. All rights reserved.
//

import UIKit
//struct UserInfo:Codable {
//    var id:Int = 0
//    var name:String = ""
//    init(id:Int, name:String) {
//        self.id = id
//        self.name = name
//    }
//}
class UserInfo: NSObject,NSCoding {
    var id:Int? = 0
    var name:String = ""
    func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(name, forKey: "name")
    }
    required init?(coder aDecoder: NSCoder) {
        id = aDecoder.decodeObject(forKey: "id") as? Int
        name = aDecoder.decodeObject(forKey: "name") as! String
    }
    init(id:Int, name:String) {
        self.id = id
        self.name = name
    }
    
}
