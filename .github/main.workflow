workflow "CI" {
  on = "push"
  resolves = ["Test"]
}

action "Test" {
  uses = "cedrickring/golang-action@1.3.0"
  env = {
    GOPROXY = "https://proxy.golang.org"
  }
}
