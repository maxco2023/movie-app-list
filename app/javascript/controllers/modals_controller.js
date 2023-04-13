import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modals"
export default class extends Controller {
  static targets = ["moda"]

  connect() {
  }

  open() {
    this.modaTarget.classList.toggle('d-none')
  }

  close() {
    this.modaTarget.classList.toggle('d-none')
  }

}
