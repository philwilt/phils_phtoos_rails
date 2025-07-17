import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["button"]

  initialize() {
    this.open = false;
  }

  toggle() {
    this.open = !this.open;
    this.buttonTarget.classList.toggle("fa-bars")
    this.buttonTarget.classList.toggle("fa-chevron-right")
  }
}
