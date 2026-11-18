import AppKit

extension NSScreen {
    /// AppKit screen coordinates also cover displays to the left of or above the primary display.
    static var screenWithMouse: NSScreen? {
        let location = NSEvent.mouseLocation
        return screens.first { $0.frame.contains(location) } ?? main ?? screens.first
    }
}
