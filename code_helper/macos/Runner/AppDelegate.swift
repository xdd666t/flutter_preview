import Cocoa
import FlutterMacOS
import bitsdojo_window_macos // Add this line

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    dummy_method_to_enforce_bundling()
    return true
  }
}
