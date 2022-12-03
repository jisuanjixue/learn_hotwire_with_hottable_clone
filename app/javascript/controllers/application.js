import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application
document.documentElement.setAttribute('data-theme', window.localStorage.getItem('theme'))

export { application }
