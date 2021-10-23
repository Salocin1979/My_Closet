import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

const hello = () => {
  console.log("hello")
};




function initFlatPickr() {
  const bookingForm = document.getElementById('new_booking');
  console.log(bookingForm);
  if (bookingForm) {
    // const bookings = JSON.parse(bookingForm.dataset.bookings);
    flatpickr("#range_start", {
      plugins: [new rangePlugin({ input: "#range_end" })],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      // "disable": bookings,
    });
  }
}

export { initFlatPickr, hello };
