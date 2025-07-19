console.log('test')
const initialize = function () {
  console.log(document.querySelector("#nav"))
}

document.addEventListener("turbo:load", function(e) {
  initialize();
});
