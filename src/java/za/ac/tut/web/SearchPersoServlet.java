/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
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
public class SearchPersoServlet extends HttpServlet {
@EJB
private PersonFacadeLocal pfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        
        Person p  = pfl.find(id);
        request.setAttribute("person", p);
        
        request.getRequestDispatcher("search_person_outcome.jsp").forward(request, response);
    }

}
