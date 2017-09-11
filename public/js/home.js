var modal = document.querySelector("#modal")
var btn = document.querySelector("#modal-pop")

btn.addEventListener("click", function(){
  
    modal.classList.remove("hidden")
})

var close = document.querySelector("#close")

close.onclick = function() {
	modal.classList.add("hidden")
}