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
public class GetPartialListServlet extends HttpServlet {
@EJB
private PersonFacadeLocal pfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer startIndex = Integer.parseInt(request.getParameter("startIndex"));
        Integer endIndex = Integer.parseInt(request.getParameter("endIndex"));
        
        int[] range = {startIndex,endIndex};
        
        List<Person> partialList = pfl.findRange(range);
        request.setAttribute("partialList", partialList);
        request.setAttribute("startIndex", startIndex);
        request.setAttribute("endIndex", endIndex);
        
        request.getRequestDispatcher("get_partial_list_outcome.jsp").forward(request, response);
    }

}
