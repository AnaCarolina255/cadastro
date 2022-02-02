package cadastro;

import java.io.IOException;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastrar")
public class InfServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nome = req.getParameter("name");
		String sobrenome = req.getParameter("sobrenome");
		String genero = req.getParameter("generos");
		String email = req.getParameter("email");
		String tel = req.getParameter("tel");
		System.out.println(nome);
		System.out.println(sobrenome);
		System.out.println(genero);
		System.out.println(email);
		System.out.println(tel);
		InfPessoas person = new InfPessoas();
		person.setNome(nome);
		person.setSobrenome(sobrenome);
		person.setGenero(genero);
		person.setEmail(email);
		person.setTelefone(tel);
		
		String resultado = null;
		LocalTime hora = LocalTime.now();
		
		
		switch (genero) {
		case "F":
			resultado = "Sra";
			break;
		case "M":
			resultado = "Sr";
		default:
			break;
		}
		
		
		String horaAgora;
		if(hora.getHour() < 12) {
			
			horaAgora = "Bom Dia";
			
			
		}else if(hora.getHour() > 18) {
			 
			horaAgora = "Boa Tarde";
			
			
		}else {
			
			horaAgora = "Boa Noite";
		}
		
		
		req.setAttribute("pessoa", person);
		req.setAttribute("generos", resultado);
		req.setAttribute("horaAgora", horaAgora);
		req.getRequestDispatcher("success.jsp").forward(req, resp);
	}
}
