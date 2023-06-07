import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["dropdown"]
  connect() {
    // this.element.textContent = "Hello World!"
    // console.log("hello world")
    // console.log(this.dropdownTargets)
    // this.dropdownTargets.forEach(dropdown => {
    //   dropdown.addEventListener("click", (event) =>
    //   console.log(dropdown)
      // const dropdownContent =
      // event.currentTarget.nextElementSibling.style.display = "block"
      // dropdownContent.style.display = "block"

    //   // console.log(dropdown)

    console.log("Controller connected");
    console.log("Dropdown content targets:", this.dropdownContentTargets);

    this.dropdownContentTargets.forEach((content) => {
      content.style.display = "none"; // Hide all dropdown content initially
    });
  }

  toggleDropdown(event) {
    console.log("Dropdown toggled");
    const dropdownContent = event.currentTarget.nextElementSibling;
    console.log("Dropdown content:", dropdownContent);
    dropdownContent.style.display = (dropdownContent.style.display === "block") ? "none" : "block";
  }
}
