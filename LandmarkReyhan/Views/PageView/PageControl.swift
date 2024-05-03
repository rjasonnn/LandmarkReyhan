import SwiftUI
import UIKit

// Bridge between SwiftUI view and UIKit UIPageControl
struct PageControl: UIViewRepresentable {

  // Total number of pages to be indicated
  var numberOfPages: Int

  // Two-way binding property for the current page index
  @Binding var currentPage: Int

  // Create a coordinator to manage interactions with UIPageControl
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }

  // Create the initial UIPageControl on first render
  func makeUIView(context: Context) -> UIPageControl {
    let control = UIPageControl()
    control.numberOfPages = numberOfPages

    // Bind user interaction with UIPageControl to currentPage update
    control.addTarget(
      context.coordinator,
      action: #selector(Coordinator.updateCurrentPage(sender:)),
      for: .valueChanged)

    return control
  }

  // Update the UIPageControl whenever the SwiftUI view's state changes
  func updateUIView(_ uiView: UIPageControl, context: Context) {
    uiView.currentPage = currentPage
  }

  // Nested coordinator class to manage UIPageControl interactions
  class Coordinator: NSObject {
    var control: PageControl // Reference to the associated PageControl view

    init(_ control: PageControl) {
      self.control = control
    }

    // Handle user interaction with UIPageControl (e.g., swiping dots)
    @objc func updateCurrentPage(sender: UIPageControl) {
      control.currentPage = sender.currentPage // Update currentPage binding
    }
  }
}
