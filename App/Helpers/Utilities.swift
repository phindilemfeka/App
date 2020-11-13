//
//  Utilities.swift
//  App
//
//  Created by Phindile on 2020/11/07.
//

import Foundation
import UIKit

class Utilities{
    
    static func styleTextField(_ textfield:UITextField){
        let bottomLine = CALayer() //creating the botton line
        
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2,width: textfield.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.init(red: 224/255, green: 224/255, blue: 224/255, alpha: 1).cgColor
        textfield.layer.addSublayer(bottomLine) //adding line to text field

    }
    
    static func background(_ largeView:UIView){
        
        largeView.backgroundColor = UIColor.init(red: 0/255, green: 137/255, blue: 255/255, alpha: 1.0)
        
        largeView.backgroundColor = UIColor.init(red: 0/255, green: 51/255, blue: 170/255, alpha: 1.0)
     
    }
    static func background2( _ view:UIView){
        view.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    }
        
    static func styleButton(_ button:UIButton){
            button.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue:255/255, alpha: 1)
            button.layer.cornerRadius = 5.0
            button.tintColor = UIColor.blue
        }
    
    static func image(_ logoImage:UIImageView){
        logoImage.image = UIImage.init(named: "logo")
    }
    
    static func styleLabel(_ label:UILabel){
        label.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 255/255, alpha: 1)
    }
    
    
}


    

