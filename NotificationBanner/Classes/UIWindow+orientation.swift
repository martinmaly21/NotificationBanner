//
//  UIWindow+orientation.swift
//  NotificationBannerSwift
//
//  Created by gabmarfer on 15/10/2019.
//

import UIKit

extension UIWindow {

    public var width: CGFloat {
        #if os(visionOS)
        return UIApplication.shared.connectedScenes.compactMap { ($0 as? UIWindowScene)?.keyWindow }.last?.bounds.size.width ?? 0
        #else
            let orientation = UIDevice.current.orientation
            switch orientation {
            case .landscapeLeft, .landscapeRight:
                return max(frame.width, frame.height)
            case .portrait, .portraitUpsideDown:
                return min(frame.width, frame.height)
            default:
                return frame.width
            }
        #endif
    }

    public var height: CGFloat {
        #if os(visionOS)
            return UIApplication.shared.connectedScenes.compactMap { ($0 as? UIWindowScene)?.keyWindow }.last?.bounds.size.height ?? 0
        #else
            let orientation = UIDevice.current.orientation
            switch orientation {
            case .landscapeLeft, .landscapeRight:
                return min(frame.width, frame.height)
            case .portrait, .portraitUpsideDown:
                return max(frame.width, frame.height)
            default:
                return frame.height
            }
        #endif
    }

}
