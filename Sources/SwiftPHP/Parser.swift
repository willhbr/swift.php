import Foundation
import SwiftSyntax

public func parse() throws {
  let currentFile = URL(fileURLWithPath: #file)
  let fileContents = try String(contentsOf: currentFile)
  let parsed = try SyntaxTreeParser.parse(currentFile)
  print(parsed)
  print()
}
