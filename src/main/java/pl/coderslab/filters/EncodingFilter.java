package pl.coderslab.filters;package pl.coderslab.filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "EncodingFilter")
public class EncodingFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}


import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "EncodingFilter",urlPatterns = "")
public class EncodingFilter implements Filter {
    private String charsetEncoding = "utf-8";
    private String contentType = "text/html";

    public void destroy() {
    }


    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException {
        request.setCharacterEncoding(charsetEncoding);
        response.setContentType(contentType);
        response.setCharacterEncoding(charsetEncoding);
        filterChain.doFilter(request, response);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}