/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.PersonFacadeLocal;
import za.ac.tut.entity.Person;

/**
 *
 * @author sandi
 */
public class GetListServlet extends HttpServlet {
@EJB
private PersonFacadeLocal pfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Person> list = pfl.findAll();
        request.setAttribute("list", list);
        
        request.getRequestDispatcher("get_list_outcome.jsp").forward(request, response);
    }

}
