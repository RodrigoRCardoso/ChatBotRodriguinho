package br.com.fiap.watson_api.model.service;

import com.google.gson.Gson;
import com.ibm.cloud.sdk.core.service.security.IamOptions;
import com.ibm.cloud.sdk.core.service.security.IamOptions.Builder;
import com.ibm.watson.assistant.v1.Assistant;
import com.ibm.watson.assistant.v1.model.Context;
import com.ibm.watson.assistant.v1.model.MessageInput;
import com.ibm.watson.assistant.v1.model.MessageOptions;
import com.ibm.watson.assistant.v1.model.MessageResponse;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/v1" })
public class AssistantV1Servlet extends HttpServlet {
	private Context context = null;
	private static final long serialVersionUID = -8716683257301345455L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String msg = req.getParameter("question");
		System.out.println(msg);
		MessageResponse response = this.assistantAPICall(msg);
		resp.setContentType("application/json");
		resp.getWriter().write((new Gson()).toJson(response.getOutput().getText()));
	}

	private MessageResponse assistantAPICall(String msg) {
		IamOptions options = (new Builder()).apiKey("KMzLE-ssFOVTb_8EP8P6WrFtd4FCEfpKUPOPlmgj2Do3").build();
		Assistant service = new Assistant("2018-02-16", options);
		String workspaceId = "0d8989e4-6458-4d2e-95bc-26e6c3fb20e0";
		MessageInput input = new MessageInput();
		input.setText(msg);
		MessageOptions messageOptions = (new com.ibm.watson.assistant.v1.model.MessageOptions.Builder())
				.workspaceId(workspaceId).input(input).context(this.context).build();
		MessageResponse response = (MessageResponse) service.message(messageOptions).execute().getResult();
		this.context = response.getContext();
		return response;
	}
}