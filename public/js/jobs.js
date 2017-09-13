var btn = document.querySelector("#accept")

btn.addEventListener("click", function(){
	alert("Your info has been sent to the Employer")
	btn.disabled = true;
	btn.innerHTML = "Accepted"
	btn.classList.remove("submitty")
})