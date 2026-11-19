import AppKit
import WebKit

// Usage: swift print-landscape.swift <in.html> <out.pdf>
let args = CommandLine.arguments
let input = URL(fileURLWithPath: args[1])
let output = URL(fileURLWithPath: args[2])
let a4 = NSSize(width: 841.89, height: 595.28)

class Delegate: NSObject, WKNavigationDelegate {
  func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) { poll(webView, 0) }

  func poll(_ webView: WKWebView, _ n: Int) {
    webView.evaluateJavaScript("document.body.dataset.ready") { result, _ in
      if result as? String == "1" { self.printPDF(webView) }
      else if n > 150 { print("timeout waiting for mermaid"); exit(1) }
      else { DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { self.poll(webView, n + 1) } }
    }
  }

  func printPDF(_ webView: WKWebView) {
    let info = NSPrintInfo()
    info.paperSize = a4
    info.orientation = .landscape
    info.topMargin = 0; info.bottomMargin = 0; info.leftMargin = 0; info.rightMargin = 0
    info.jobDisposition = .save
    info.dictionary()[NSPrintInfo.AttributeKey.jobSavingURL] = output
    let op = webView.printOperation(with: info)
    op.showsPrintPanel = false
    op.showsProgressPanel = false
    op.view?.frame = NSRect(origin: .zero, size: a4)
    op.runModal(for: NSWindow(), delegate: nil, didRun: nil, contextInfo: nil)
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) { exit(0) }
  }
}

let app = NSApplication.shared
let web = WKWebView(frame: NSRect(origin: .zero, size: a4))
let delegate = Delegate()
web.navigationDelegate = delegate
web.loadFileURL(input, allowingReadAccessTo: URL(fileURLWithPath: "/"))
app.run()
