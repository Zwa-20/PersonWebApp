/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import static java.nio.file.Files.size;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.PersonFacadeLocal;

/**
 *
 * @author sandi
 */
public class GetListSizeServlet extends HttpServlet {
@EJB
private PersonFacadeLocal pfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer size = pfl.count();
        request.setAttribute("size", size);
        
        request.getRequestDispatcher("get_list_size_outcome.jsp").forward(request, response);
    }

}
