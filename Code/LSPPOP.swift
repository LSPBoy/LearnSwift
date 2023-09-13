//
//  LSPPOP.swift
//  TestiOS
//
//  Created by apple on 2023/9/12.
//  Copyright © 2023 lsp. All rights reserved.
//

import Foundation

public struct LSPPOP<Base> {
    let base: Base
    init(_ base: Base) {
        self.base = base
    }
}

public protocol LSPPOPCompatible {}

public extension LSPPOPCompatible {
    static var lsp: LSPPOP<Self>.Type {
        get { LSPPOP<Self>.self }
        set {}
    }
    
    var lsp: LSPPOP<Self> {
        get { LSPPOP(self) }
        set {}
    }
}
