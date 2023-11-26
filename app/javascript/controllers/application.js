import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// require("@rails/ujs").start()
// // JavaScriptイベント発火をするために、画面遷移高速化のGemを無効化する。
// // require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")
// require("../item_price");
// require("../card");
