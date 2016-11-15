//
//  ViewController.swift
//  webImage-ex
//
//  Created by i mac on 2016. 11. 15..
//  Copyright © 2016년 goplayzig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stringurl = "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" //태극기 이미지 주소
        
        if let url = URL(string: stringurl){ //URL 객체 생성
            if let data = NSData(contentsOf:url) { //URL 이 Nil 이아니라면 변환
                myImageView.image = UIImage(data : data as
                Data) //변환된 데이터 출력

            }
            
        }
        
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

