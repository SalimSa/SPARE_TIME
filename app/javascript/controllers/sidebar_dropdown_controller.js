import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["topicsDropdown"]

  connect() {

  }
  toggleDropdownTopics(event) {
    event.preventDefault();
    this.topicsDropdownTarget.classList.toggle("hidden");
  }

  toggleDropdownItems(event) {
    event.preventDefault();
    event.target.nextElementSibling.classList.toggle("hidden");
  }
}

