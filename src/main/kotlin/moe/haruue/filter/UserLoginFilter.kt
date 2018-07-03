package moe.haruue.filter

import javax.servlet.*
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 *
 * @author Haruue Icymoon haruue@caoyue.com.cn
 */
open class UserLoginFilter : Filter {
    override fun destroy() {
    }

    override fun doFilter(request: ServletRequest, response: ServletResponse, chain: FilterChain) {
        request as HttpServletRequest
        response as HttpServletResponse
        if (!checkLogin(request)) {
            response.sendRedirect("/login.jsp")
            return
        }
        chain.doFilter(request, response)
    }

    override fun init(filterConfig: FilterConfig?) {
    }

    open fun checkLogin(request: HttpServletRequest): Boolean {
        val login = request.session.getAttribute("login")
        return login != null
    }

}