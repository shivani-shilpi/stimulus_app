import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="remote"
export default class extends Controller {
  connect() {
  }
   
  // replace (event){
  //   event.preventDefault()
  //   event.stopPropagation()

  //   const [, , xhr] = event.detail
  //   this.element.outerHTML = xhr.response
  // }

  // append (event){
  //   event.preventDefault()
  //   event.stopPropagation()

  //   const [, , xhr] = event.detail
  //   this.element.insertAdjacentHTML('afterend', xhr.response)
  // }

  // prepend (event){
  //   event.preventDefault()
  //   event.stopPropagation()

  //   const [, , xhr] = event.detail

  //   this.element.insertAdjacentHTML('beforebegin', xhr.response)
  // }
}
