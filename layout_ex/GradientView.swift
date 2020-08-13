//
//  GradientView.swift
//  layout_ex
//
//  Created by Quan Nguyen on 8/13/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    private func createGradient(cornerRadius: CGFloat = 0) -> CAGradientLayer {
        let gradient = CAGradientLayer()
        gradient.transform = CATransform3DMakeRotation(.pi / 2, 0, 0, 1)
        gradient.frame = bounds
        layer.cornerRadius = cornerRadius
        layer.insertSublayer(gradient, at: 0)
        return gradient
    }

    private var gradient: CAGradientLayer?

    @IBInspectable
    var color1: UIColor? {
        didSet {
            updateColors()
        }
    }

    @IBInspectable
    var color2: UIColor? {
        didSet {
            updateColors()
        }
    }
    
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            gradient = createGradient(cornerRadius: cornerRadius)
            updateColors()
        }
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        gradient = createGradient(cornerRadius: cornerRadius)
        updateColors()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        gradient = createGradient(cornerRadius: cornerRadius)
        updateColors()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        gradient?.frame = bounds
    }

    private func updateColors() {
        guard
            let color1 = color1,
            let color2 = color2
        else {
            return
        }
        gradient?.colors = [color1.cgColor, color2.cgColor]
    }
}
