// app/javascript/controllers/popover_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    new bootstrap.Popover(this.element)
  }
}
