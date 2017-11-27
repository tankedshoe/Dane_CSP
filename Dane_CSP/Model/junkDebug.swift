//
//  junkDebug.swift
//  Dane_CSP
//
//  Created by Heaps, Dane on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class Junked : Junkable
{
    public var junkedState: Bool
    
    public init()
    {
        self.junkedState = false
    }
    
    //MARK:- Squishable Methods
    public func canJunk() -> Bool
    {
        if(junkedState)
        {
            print("junked")
            junkedState = true
        }
        else
        {
            print("not junked")
            junkedState = false
        }
        return junkedState
    }
    
    public func doJunk() ->
        Void
    {
        junkedState = true
    }
}
