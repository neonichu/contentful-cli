import Contentful

#if os(OSX)
import AppKit

NSApplicationLoad()
#endif

let client = Client(spaceIdentifier: "cfexampleapi", accessToken:"b4c0n73n7fu1")
client.fetchEntry("nyancat").1.next { (entry) in
  print(entry)
  exit(0)
}.error {
  print($0)
  exit(0)
}

#if os(OSX)
NSApp.run()
#endif

