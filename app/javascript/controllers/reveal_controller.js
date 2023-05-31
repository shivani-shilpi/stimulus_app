import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reveal"
export default class extends Controller {
  static targets = ['item']
  static classes = ['hidden']

  connect() {
    this.class = this.hasHiddenClass ? this.hiddenClass : 'hidden'
  }

  toggle(){
    this.itemTargets.forEach(item=> {
      item.classList.toggle(this.class)
    })
  }
}
