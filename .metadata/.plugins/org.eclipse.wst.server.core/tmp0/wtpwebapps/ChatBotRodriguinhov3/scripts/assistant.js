window.onload = function() {
	callBot("", 1);
}

function scrollDivDown(div) {
	for (var i = 0; i < div.offsetHeight; i++) {
		div.scrollTop++;
	}
}

function createMessage(message, type) {
	var chat = document.querySelector(".chat-container");
	var div = createDiv(message, type);
	chat.appendChild(div);
	scrollDivDown(chat);
}

function createDiv(text, type) {
	var div = document.createElement("div");
	div.classList.add("chat");
	div.classList.add(type);
	div.textContent = text;
	return div;
}

var btnSendQuestion = document.querySelector("#sendQuestion");
var question = document.querySelector("#question");
question.addEventListener("keyup", function(event) {
	  if (event.keyCode === 13) {
		  btnSendQuestion.click();
	  }
});

btnSendQuestion.addEventListener("click", function(event) {
	event.preventDefault();
	createMessage(question.value, "me");
	callBot(question.value, 1);
	question.value = "";
});

function callBot(msg, tipo) {
	var xhr = new XMLHttpRequest();
	xhr.open("POST", "v1", true);
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
	xhr.addEventListener("load", function() {
		if(xhr.status == 200) {
			// Codigo de sucesso
			var respostas = JSON.parse(xhr.responseText);
			respostas.forEach(function(resposta) {
				if(tipo == 1){
					createMessage(resposta, "bot");
				}
				else{
					sendMessageToVoice(resposta);
				}
			});
		}else{
			// Codigo de deu ruim!
			console.log(xhr.status);
			console.log(xhr.responseText);
		}
	});
	var data = "question=" + msg;
	xhr.send(data);
}











