import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sortable"
export default class extends Controller {
  
  static value = {

  } 
  
  connect() {
    console.log("connected")
  }
}
