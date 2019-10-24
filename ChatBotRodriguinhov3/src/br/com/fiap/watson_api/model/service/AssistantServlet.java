package br.com.fiap.watson_api.model.service;

import com.google.gson.Gson;
import com.ibm.cloud.sdk.core.service.security.IamOptions;
import com.ibm.cloud.sdk.core.service.security.IamOptions.Builder;
import com.ibm.watson.assistant.v2.Assistant;
import com.ibm.watson.assistant.v2.model.CreateSessionOptions;
import com.ibm.watson.assistant.v2.model.MessageContext;
import com.ibm.watson.assistant.v2.model.MessageInput;
import com.ibm.watson.assistant.v2.model.MessageInputOptions;
import com.ibm.watson.assistant.v2.model.MessageOptions;
import com.ibm.watson.assistant.v2.model.MessageResponse;
import com.ibm.watson.assistant.v2.model.SessionResponse;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/assistant" })
public class AssistantServlet extends HttpServlet {
	private MessageContext context = new MessageContext();
	private static final long serialVersionUID = 9052436307776407283L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String msg = req.getParameter("question");
		System.out.println(msg);
		MessageResponse response = this.assistantAPICall(msg);
		resp.setContentType("application/json");
		resp.getWriter().write((new Gson()).toJson(response.getOutput().getGeneric()));
	}

	private MessageResponse assistantAPICall(String msg) {
		IamOptions options = (new Builder()).apiKey("KMzLE-ssFOVTb_8EP8P6WrFtd4FCEfpKUPOPlmgj2Do3").build();
		Assistant service = new Assistant("2019-02-28", options);
		String assistantId = "0d8989e4-6458-4d2e-95bc-26e6c3fb20e0";
		CreateSessionOptions sessionOptions = (new com.ibm.watson.assistant.v2.model.CreateSessionOptions.Builder())
				.assistantId(assistantId).build();
		SessionResponse session = (SessionResponse) service.createSession(sessionOptions).execute().getResult();
		String sessionId = session.getSessionId();
		MessageInputOptions inputOptions = new MessageInputOptions();
		inputOptions.setReturnContext(true);
		MessageInput input = (new com.ibm.watson.assistant.v2.model.MessageInput.Builder()).text(msg)
				.options(inputOptions).build();
		MessageOptions optionsMessage = (new com.ibm.watson.assistant.v2.model.MessageOptions.Builder())
				.assistantId(assistantId).sessionId(sessionId).input(input).context(this.context).build();
		MessageResponse response = (MessageResponse) service.message(optionsMessage).execute().getResult();
		this.context = response.getContext();
		return response;
	}
}