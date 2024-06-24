//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Ian Kelly on 6/23/24.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}
