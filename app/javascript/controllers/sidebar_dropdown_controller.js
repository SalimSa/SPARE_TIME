import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // static targets = ["dropdown"]
  static targets = ["dropdown"];
  connect() {
    console.log("hello world");

    // console.log(this.dropdownTargets)
    // this.dropdownTargets.forEach(dropdown => {
    //   dropdown.addEventListener("click", (event) =>
    //   console.log(dropdown)
      // const dropdownContent =
      // event.currentTarget.nextElementSibling.style.display = "block"
      // dropdownContent.style.display = "block"

      // console.log(dropdown)
    // );
  // });



    this.dropdownTargets.forEach((dropdown) => {
      dropdown.addEventListener("click", this.toggleDropdown.bind(this));
    });
  }

  toggleDropdown(event) {
    event.preventDefault();
    const dropdownContent = event.currentTarget.nextElementSibling;

    // Hide all dropdown content initially
    this.dropdownContainerTargets.forEach((container) => {
      container.style.display = "none";
    });

    // Display the selected dropdown content
    dropdownContent.style.display = "block";
  }
}
