import { Controller } from "@hotwired/stimulus"
// import { SwiperOptions } from 'swiper'
import Swiper from 'swiper/bundle'
export default class extends Controller {
  
    static values = {
      options: object
    }

    connect(){
      this.swiper = new Swiper(this.element, {
        ...this.defaultOptions,
        ...this.optionValue
      })
    }

    disconnect(){
      this.swiper.destroy()
      this.swiper = undefined 
    }

    get defaultOptions() {
      return {}
    }
}