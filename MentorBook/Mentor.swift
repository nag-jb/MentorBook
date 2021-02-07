//
//  Mentor.swift
//  MentorBook
//
//  Created by Sallivan James on 2021/02/08.
//

import UIKit

class Mentor {
    
    //メンター名
    var name: String!
    //担当コース
    var course: String!
    //顔写真(画像の名前)
    var imageName: String!
    
    //初期化
    init(name: String, imageName: String, course: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
