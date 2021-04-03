//
//  Utilities.swift
//  TwitterTutorial
//
//  Created by Ji-hoon Ahn on 2021/03/31.
//

import UIKit

class Utilities{
    
    func inputContainerView(withImage image : UIImage, textField: UITextField ) -> UIView{
        let view = UIView()
        let iv = UIImageView()
        
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        iv.image = image
        view.addSubview(iv)
        iv.anchor(left: view.leftAnchor,bottom: view.bottomAnchor,paddingLeft: 8,paddingBottom: 8)
        iv.setDimensions(width: 24, height: 24)
        
        view.addSubview(textField)
        textField.anchor(left: iv.rightAnchor, bottom: view.bottomAnchor,
                         right: view.rightAnchor,
                         paddingLeft: 8,paddingBottom: 8)
        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        view.addSubview(dividerView)
        dividerView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor,right: view.rightAnchor,paddingLeft: 8, paddingBottom: 0.75)
        let divider = UIView()
        divider.backgroundColor = .white
        view.addSubview(divider)
        divider.anchor(left: view.leftAnchor, bottom: view.bottomAnchor)
        return view
    }
    func textField(withPlaceholder placeholder :String) -> UITextField{
        let tf = UITextField()
        tf.textColor = .white
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return tf
    }

}
