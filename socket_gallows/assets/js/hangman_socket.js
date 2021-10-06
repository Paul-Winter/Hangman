import { Socket } from "phoenix"

export default class HangmanSocket {

    constructor() {
        this.socket = new Socket("/socket", {})
        this.socket.connect()
    }

    connect_to_hangman() {
        this.channel = this.socket.channel("hangman:game", {})
        this.channel
            .join()
            .receive("ok", resp => {
                console.log("connected: " + resp)
                
            })
            .receive("error", resp => {
                alert(resp)
                throw(resp)
            })
    }
}