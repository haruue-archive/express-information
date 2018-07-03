package moe.haruue.filter

import javax.servlet.http.HttpServletRequest

/**
 *
 * @author Haruue Icymoon haruue@caoyue.com.cn
 */
class AdminLoginFilter : UserLoginFilter() {

    override fun checkLogin(request: HttpServletRequest): Boolean {
        if (super.checkLogin(request)) {
            val pow = request.session.getAttribute("pow") as String?
            val name = request.session.getAttribute("name") as String?
            // admin 一定是管理，这个是 feature
            return pow == "admin" || name == "admin"
        }
        return false
    }

}