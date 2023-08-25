import { Controller } from "@hotwired/stimulus"
import cursorTrail from "cursor-trail"

// Connects to data-controller="sparkly-cursor"
export default class extends Controller {
  connect() {
    cursorTrail({
      pattern: 'silverStars',
      animationType: 'rotation90',
      theme: 'light'
    })
  }
}
