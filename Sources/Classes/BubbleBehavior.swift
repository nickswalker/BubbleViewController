//
//  Copyright (c) 2016 Nick Walker.
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

/// Defines the physical attributes of a bubble view that will be
/// animated by a UIDynamicAnimator. Very light with no rotation permitted.
class BubbleBehavior: UIDynamicBehavior {

    fileprivate let item: UIDynamicItem

    fileprivate let itemBehavior: UIDynamicItemBehavior

    init(item: UIDynamicItem) {
        self.item = item
        itemBehavior = UIDynamicItemBehavior(items: [item])
        itemBehavior.density = 0.1
        itemBehavior.resistance = 5
        itemBehavior.friction = 0.0
        itemBehavior.allowsRotation = false

        super.init()

        addChildBehavior(itemBehavior)

    }

    func addLinearVelocity(_ velocity: CGPoint) {
        itemBehavior.addLinearVelocity(velocity, for: item)
    }

}
