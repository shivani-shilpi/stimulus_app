import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["name"]

  connect() {
    console.log("Hello, stimulus!", this.element)
  }

  greet() {
    const element = this.nameTarget.value
    document.getElementById("demo").innerHTML = `hello, ${element}`
    // console.log(`Hello, ${this.name}!`)
  }

  get name() {
    return this.nameTarget.value
  }
}
