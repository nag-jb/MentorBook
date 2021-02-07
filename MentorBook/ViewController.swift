//
//  ViewController.swift
//  MentorBook
//
//  Created by Sallivan James on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    //インスタンス生成
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    //表示するメンターの番号
    var index: Int = 0
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name:"ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name:"りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name:"たいてぃ", imageName: "taithi.jpg", course: "WebS, WebD"))
        
        setUI()
        
    }
    @IBAction func back(){
        index = index - 1
        setUI()
    }
    
    @IBAction func next(){
        index = index + 1
        setUI()
    }


}

