import consumer from "./consumer"

consumer.subscriptions.create("MailChannel", {
  connected() {
    console.log("Por fin")
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('#text_box').append('<div class="message">' + data.content + '</div>')
    // Called when there's incoming data on the websocket for this channel
  }
});
