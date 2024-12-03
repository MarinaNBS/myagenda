import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
console.log ("It's working")

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startDate", "endDate" ]
  connect() {
    flatpickr(this.startDateTarget, {
              enableDate: today
    })
    flatpickr(this.endDateTarget, {})
  }
}
