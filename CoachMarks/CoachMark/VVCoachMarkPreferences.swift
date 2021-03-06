//
//  VVCoachMarkPreferences.swift
//  CoachMarks
//
//  Created by Valiantsin Vasiliavitski on 11/5/19.
//  Copyright © 2019 Valiantsin Vasiliavitski. All rights reserved.
//

import Foundation
import UIKit

public struct Constant {
    public static let arrowHeight: CGFloat = 12
    public static let arrowWidth: CGFloat = 12
    public static let inset: CGFloat = 12
    public static let coachMarkWidth: CGFloat = 190
}

public struct VVCoachMarkPreferences {
    var arrowHeight: CGFloat
    var arrowWidth: CGFloat
    var cornerRadius: CGFloat?
    var textColor: UIColor?
    var textFont: UIFont?
    var coachMarkColor: UIColor?
    var coachMarkWidth: CGFloat {
        didSet {
            if let windowWidht = UIApplication.shared.windows.first?.frame.width, coachMarkWidth >= windowWidht {
                coachMarkWidth = windowWidht - 2 * Constant.inset
            }
        }
    }
    
    public init(arrowHeight: CGFloat? = Constant.arrowHeight,
         arrowWidth: CGFloat? = Constant.arrowWidth,
         cornerRadius: CGFloat? = .zero,
         textColor: UIColor?,
         textFont: UIFont?,
         coachMarkColor: UIColor?,
         coachMarkWidth: CGFloat? = Constant.coachMarkWidth) {
        
        self.arrowHeight = arrowHeight ?? Constant.arrowHeight
        self.arrowWidth = arrowWidth ?? Constant.arrowWidth
        self.cornerRadius = cornerRadius
        self.textColor = textColor
        self.textFont = textFont
        self.coachMarkColor = coachMarkColor
        self.coachMarkWidth = coachMarkWidth ?? Constant.coachMarkWidth
    }
    
    public static let defaultPreferences = {
        return VVCoachMarkPreferences(cornerRadius: 0, textColor: .white, textFont: .systemFont(ofSize: 12), coachMarkColor: .purple)
    }()
}
