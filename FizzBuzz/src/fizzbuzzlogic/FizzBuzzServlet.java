package fizzbuzzlogic;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FizzBuzzServlet
 */
public class FizzBuzzServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FizzBuzzServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String number = request.getParameter("fizz"); 
		if(number != null){
		fizzBuzzController(Integer.valueOf(number), request, response);
		}
	}
	
	public void fizzBuzzController(int number, HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		ArrayList<Object> listFizzBuzz = new ArrayList<Object>();
		for(int i=1; i<=number ; i++){
			if(i%15 == 0){
				listFizzBuzz.add("FizzBuzz");
			}else if(i%5 == 0){
				listFizzBuzz.add("Buzz");
			}else if(i%3 == 0){
				listFizzBuzz.add("Fizz");
			}else{
				listFizzBuzz.add(i);
			}
		}
		req.setAttribute("listFizz", listFizzBuzz);
		req.setAttribute("number", number);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/fizzbuzz.jsp");  
		rd.forward(req, res);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/fizzbuzz.jsp");  
		rd.forward(req, res);
	}

}
