var btn = document.querySelector(".accept-btn")

btn.addEventListener("click", function(){
	alert("Your info has been sent to the Employer")
	btn.disabled = true;
	btn.innerHTML = "Accepted"
})