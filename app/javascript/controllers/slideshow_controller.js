import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="slideshow"
export default class extends Controller {
  static targets = ["slide"]
  static values = { index: { type: Number, default: 0 } }
  
  connect() {
  }

  indexValueChanged(){
    this.showCurrentSlide()
  }

  next(){
    this.indexValue++
    this.showCurrentSlide()
  }

  previous() {
    this.indexValue--
    this.showCurrentSlide()
  }

  showCurrentSlide(){
    this.slideTargets.forEach((element, index) => {
      element.hidden = index != this.indexValue
    }) 
  }
}
