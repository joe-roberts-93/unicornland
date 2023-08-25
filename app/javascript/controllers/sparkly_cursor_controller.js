import { Controller } from "@hotwired/stimulus"
import cursorTrail from "cursor-trail"

// Connects to data-controller="sparkly-cursor"
export default class extends Controller {
  connect() {
    // cursorTrail({
    //     pattern: 'colorGlitter',
    //     animationType: 'flash'
    //   });
    //   cursorTrail.setPattern('goldFeather');
    cursorTrail({
      pattern: [
          '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="19" viewBox="0 0 91 86"><polygon points="45.5 71.3 17.6 85.9 22.9 54.8 0.3 32.8 31.5 28.3 45.5 0 59.5 28.3 90.7 32.8 68.1 54.8 73.4 85.9" fill="#ff0000"/></svg>'
      ],
      animationType: 'rightDown'
  });
  }
}
