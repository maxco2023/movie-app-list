import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="years"
export default class extends Controller {
  static targets = ["year"]
  connect() {
    this.element.textContent = new Date().getFullYear();
  }
}
