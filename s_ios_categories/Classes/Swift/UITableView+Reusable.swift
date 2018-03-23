//
//  UITableView+Reusable.swift
//  DemoUISearchController
//
//  Created by hs on 2018/3/23.
//  Copyright © 2018年 shj. All rights reserved.
//

import UIKit

protocol Reusable: class {
    static var identifier: String { get }
}

extension Reusable  {
    static var identifier: String { return String(describing: self) }
}

extension UITableViewCell: Reusable {}
extension UICollectionViewCell: Reusable {}
extension UITableViewHeaderFooterView: Reusable {}
