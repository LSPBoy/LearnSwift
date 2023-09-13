//
//  NibLoadable.swift
//  JKLive
//
//  LSPNibLoadable.swift
//  TestiOS
//
//  Created by apple on 2023/9/12.
//  Copyright © 2023 lsp. All rights reserved.
//

import UIKit

public protocol LSPNibLoadable {
}

// MARK: - 一、继承于UIView的才可以使用该协议的扩展
public extension LSPNibLoadable where Self: UIView {
    
    // MARK: 1.1、加载xib视图
    /// 加载xib视图
    /// - Parameter nibName: xib名字
    /// - Returns: 返回视图
    static func loadFromNib(_ nibName: String? = nil) -> Self {
        let loadNme = nibName == nil ? "\(self)" : nibName!
        return Bundle.main.loadNibNamed(loadNme, owner: nil, options: nil)?.first as! Self
    }
}
