//
//  LSPPOP+String.swift
//  TestiOS
//
//  Created by apple on 2023/9/12.
//  Copyright © 2023 MJ Lee. All rights reserved.
//

import Foundation

extension String: LSPPOPCompatible {}
extension NSString: LSPPOPCompatible {}

extension LSPPOP where Base: ExpressibleByStringLiteral {
    
    func numberCount() -> Int {
        guard let string = base as? String else { return 0 }
        var count = 0
        for c in string where ("0"..."9").contains(c) {
            count += 1
        }
        return count
    }
}
