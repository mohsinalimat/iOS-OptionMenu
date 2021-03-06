//
//  OptionsMenu.swift
//  Al-Mushaf
//
//  Created by Amr Elsayed on 7/31/18.
//  Copyright © 2018 SmarTech. All rights reserved.
//

import Foundation
import UIKit

open class OptionsMenu : NSObject {
    
    public unowned var parentViewController : UIViewController
    public weak var dataSource : OptionsMenuDataSource?
    public weak var delegate : OptionsMenuDelegate?
    public var style : OptionsMenuStyle?
    
    public var behaviour : OptionsMenuDisplayBehaviour?
    
    public init(parentViewController : UIViewController) {
        self.parentViewController = parentViewController
    }
    
    open func show(animated: Bool) {
        self.behaviour?.display(self, animated: animated)
    }
    
    open func dismiss(animated: Bool) {
        self.behaviour?.dismiss(animated: animated)
    }
    
}
