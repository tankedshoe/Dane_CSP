//
//  Junkable.swift
//  Dane_CSP
//
//  Created by Heaps, Dane on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation

public protocol Junkable
{
    func canJunk() -> Bool
    func doJunk() -> Void
}

