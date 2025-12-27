    package vn.edu.nlu.fit.demo.controller;

    import jakarta.servlet.ServletException;
    import jakarta.servlet.annotation.WebServlet;
    import jakarta.servlet.http.HttpServlet;
    import jakarta.servlet.http.HttpServletRequest;
    import jakarta.servlet.http.HttpServletResponse;
    import vn.edu.nlu.fit.demo.services.ProductService;

    import java.io.IOException;

    @WebServlet("/list-product")
    public class ProductListServlet extends HttpServlet {

        private ProductService service;

        @Override
        public void init() {
            service = ProductService.getInstance();
        }

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                throws ServletException, IOException {

            String keyword = req.getParameter("keyword");
            String sort = req.getParameter("sort");
            if (sort == null || sort.isBlank()) {
                sort = "default";
            }

            if (keyword == null || keyword.isBlank()) {
                req.setAttribute("productList", service.getAllProductsSorted(sort));
                req.setAttribute("pageTitle", "Tất cả sản phẩm | Biển Xanh");
            } else {
                req.setAttribute("productList", service.getProductsByKeywordSorted(keyword,sort));
                req.setAttribute("pageTitle", "Tìm kiếm: " + keyword + " | Biển Xanh");

            }
            req.setAttribute("currentSort", sort);
            req.setAttribute("contentPage", "products.jsp");
            req.getRequestDispatcher("/base.jsp").forward(req, resp);
        }
    }

