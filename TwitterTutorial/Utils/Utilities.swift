//
//  Utilities.swift
//  TwitterTutorial
//
//  Created by Ji-hoon Ahn on 2021/03/31.
//

import UIKit

class Utilities{
    func inputContainerView(withImage image: UIImageView, textField: UITextField) -> UIView{
        let view = UIView()
        let iv = UIImageView()
        
        //iv.image = image
        view.addSubview(iv)
        iv.anchor(left: view.leftAnchor,bottom: view.bottomAnchor,paddingLeft: 8,paddingBottom: 8)
        iv.setDimensions(width: 24, height: 24)
        return view 
    }
}
