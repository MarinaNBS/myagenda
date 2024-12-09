import { Controller } from "@hotwired/stimulus"
import * as flatpickr from "flatpickr";

console.log ("It's working")

// Connects to data-controller="datepicker"
export default class extends Controller {

  static targets = [ "startDate", "endDate" ]

  connect() {
    console.log ("It's working")
    console.log(this.startDateTarget)
    console.log(this.endDateTarget)

    flatpickr(this.startDateTarget, {
      minDate: today,
      // enableTime: true,
      dateFormat: "Y-m-d",
      open:true
    });

    flatpickr(this.endDateTarget, {
      dateFormat: "Y-m-d",
      // enableTime: true
    });
  }
}
