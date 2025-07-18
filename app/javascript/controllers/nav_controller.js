import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["button", "pane"]

  initialize() {
    this.open = false;
    this.paneTarget.style.display = "none"
  }

  toggle() {
    this.open = !this.open;
    this.toggleIcon();
    this.togglePane();
  }

  toggleIcon() {
    this.buttonTarget.classList.toggle("fa-bars");
    this.buttonTarget.classList.toggle("fa-chevron-right");
  }

  togglePane() {
    this.paneTarget.style.display = this.open  ? '' : 'none'
  }
}
