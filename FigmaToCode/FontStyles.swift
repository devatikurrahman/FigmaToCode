//
//  FontStyles.swift
//  FigmaToCode
//
//  Created by Atikur Rahman on 4/30/24.
//

import Foundation
import SwiftUI

extension Font {
    
    static var navTitle: Font {
        return Font.custom("Inter-Bold", size: 17.0)
    }
    
    static var taskText: Font {
        return Font.custom("Inter-SemiBold", size: 14.0)
    }
    
    static var taskAlamText: Font {
        return Font.custom("Inter-SemiBold", size: 12.0)
    }
}
