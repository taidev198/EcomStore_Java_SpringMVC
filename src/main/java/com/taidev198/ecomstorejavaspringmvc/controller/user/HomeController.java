package com.taidev198.ecomstorejavaspringmvc.controller.user;


import com.taidev198.ecomstorejavaspringmvc.dto.CategoryBrandDTO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductAttributeValueDTO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductCategoryTypeDTO;
import com.taidev198.ecomstorejavaspringmvc.dto.ProductVariantsValueDTO;
import com.taidev198.ecomstorejavaspringmvc.entity.ItemCheckBox;
import com.taidev198.ecomstorejavaspringmvc.entity.Product;
import com.taidev198.ecomstorejavaspringmvc.entity.User;
import com.taidev198.ecomstorejavaspringmvc.service.admin.UserServiceImpl;
import com.taidev198.ecomstorejavaspringmvc.service.user.*;
import com.taidev198.ecomstorejavaspringmvc.util.HomeUserUtils;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

@Controller
public class HomeController extends AbstractUserController{

    @Autowired
    private HomeServiceImpl homeService;

    @Autowired
    private UserServiceImpl userService;

    @Autowired
    private CategoryServiceImpl categoryService;

    @Autowired
    private ProductServiceImpl productService;

    @Autowired
    private ImageServiceImpl imageService;

    @Autowired
    private ProductAttributeValueServiceImpl productAttributeValueService;

    @Autowired
    private ProductVariantsValueServiceImpl
    productVariantsValueService;

    private final Map<String, List<ProductCategoryTypeDTO>> map = new HashMap<>();
    private List<CategoryBrandDTO> categoryBrandDTOList = new ArrayList<>();

    public void initCategory()
     {
         categoryBrandDTOList = categoryService.getAllBrands();
        List<ProductCategoryTypeDTO> productCategoryTypeDTOList = categoryService.getAllCategories();

        if (map.isEmpty()) {
        for (ProductCategoryTypeDTO productCategoryTypeDTO : productCategoryTypeDTOList) {
            if (map.isEmpty())
                map.put(productCategoryTypeDTO.getProductCategoryName(), new ArrayList<>());
            List<ProductCategoryTypeDTO> list = map.get(productCategoryTypeDTO.getProductCategoryName());
            if (list == null) {
                list = new ArrayList<>();
            }
            list.add(productCategoryTypeDTO);
            map.put(productCategoryTypeDTO.getProductCategoryName(),list);
        }}
    }

    public List<Product> setProductAttributeValues(List<Product> productList) {
        List<ProductAttributeValueDTO> list = productAttributeValueService.getAllProductAttributeValue();
        List<ProductVariantsValueDTO> productVariantsValueDTOList = new ArrayList<>();
        Map<Integer, List<ProductAttributeValueDTO>> map1 = new HashMap<>();
        for (ProductAttributeValueDTO productAttributeValueDTO : list) {
            if (map1.isEmpty())
                map1.put(productAttributeValueDTO.getProductId(), new ArrayList<>());
            List<ProductAttributeValueDTO> rs = map1.get(productAttributeValueDTO.getProductId());
//            List<ProductAttributeValueDTO> rs1 = (productList.get(productAttributeValueDTO.getProductId()).get);
            if (rs == null ) {
                rs = new ArrayList<>();
            }
            rs.add(productAttributeValueDTO);
            for (Product product : productList) {
                if (product.getProductId() == productAttributeValueDTO.getProductId()) {
                    product.setProductVariantsValues(productVariantsValueService.getProductVariantsValuesByProductId((long) product.getProductId()));
                    product.setProductAttributeValues(list);
                }
            }
        }
        return productList;
    }


    @RequestMapping(value = {"/","/trang-chu"}, method = RequestMethod.GET)
    public ModelAndView home(){

        modelAndView.setViewName("user/home_body");
        initCategory();
        modelAndView.addObject("categories", map);
        return modelAndView;
    }

    @RequestMapping(value = {"/category/category={category}&categorytype={categorytype}"}, method = RequestMethod.GET)
    public ModelAndView goOnCategoryType(Model model,
                                         @ModelAttribute("categorytype") String categorytype,
                                         @ModelAttribute("category") String category,
                                         HttpServletRequest request){

        ItemCheckBox itemCheckBox = new ItemCheckBox();
        initCategory();
        request.setAttribute("__SELF",request.getRequestURI());
        modelAndView.addObject("categories", map);
        modelAndView.addObject("listBrandFilter", itemCheckBox);
        modelAndView.addObject("brands", categoryBrandDTOList);
        modelAndView.addObject("products", setProductAttributeValues(productService.getProductsByCategoryType(categorytype)));
        modelAndView.addObject("avatars", imageService.getAvatarImages());
//        System.out.println(productService.getProductsByCategoryType(categorytype).toString());
        modelAndView.setViewName("user/category_details_user");
        return modelAndView;
    }

    @RequestMapping(value = {"/category/category={category}&categorytype={categorytype}/filterByBrand?listBrandName={brand}"}, method = RequestMethod.POST)
    public ModelAndView filterByCategoryTypeBrand(Model model,
                                                  @ModelAttribute("categorytype") String categorytype,
                                                  @ModelAttribute("category") String category,
                                                  @ModelAttribute("brand") String brand){
        initCategory();
        System.out.println("filterByBrand "+brand);
        modelAndView.addObject("categories", map);
        modelAndView.addObject("brands", categoryBrandDTOList);
        modelAndView.addObject("products", setProductAttributeValues(productService.getProductsByCategoryType(categorytype)));
        modelAndView.addObject("avatars", imageService.getAvatarImages());
//        System.out.println(productService.getProductsByCategoryType(categorytype).toString());
        modelAndView.setViewName("user/category_details_user");
        return modelAndView;
    }

//    @RequestMapping(value = {"/category/{category}"}, method = RequestMethod.GET)
//    public ModelAndView goOnCategory(@ModelAttribute String category){
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("user/category_details_user");
//
//        return modelAndView;
//    }

    @RequestMapping(value = {"/product/productId={ProductId}"}, method = RequestMethod.GET)
    public ModelAndView goOnProduct(@ModelAttribute("ProductId") int ProductId){
        modelAndView.addObject("images", imageService.getImagesByProductId((long) ProductId));
        Product product = productService.getProductById(ProductId);
        List<ProductVariantsValueDTO> productVariantsValueDTOList = productVariantsValueService.getProductVariantsValuesByProductId((long) ProductId);
        product.setProductVariantsValues(productVariantsValueDTOList);
        HomeUserUtils.setProductVariants(productVariantsValueDTOList, product);
        modelAndView.addObject("product", product);
        modelAndView.addObject("attributes", productAttributeValueService.getProductAttributeValueByProductId((long) ProductId));
        modelAndView.setViewName("user/product_body");
        return modelAndView;
    }

    //show profile information
    @RequestMapping(value = {"/user-profile-details"})
    public ModelAndView doProfile(HttpServletRequest request, Model model){

        HttpSession session = request.getSession();
        User userSession = (User) session.getAttribute("user");
        modelAndView.addObject("username", userSession.getUsername());
        User user = userService.getUserByUsername(userSession.getUsername());
        System.out.println(user.getUsername()+user.getNumber());
        modelAndView.addObject("user", user);
        //for init state
        if (model.getAttribute("message") == null && model.getAttribute("alert") == null){
            model.addAttribute("alert", "hidden");
            System.out.println("null");
        }
        modelAndView.setViewName("user/profile_details_user");
        return modelAndView;
    }

    //update profile
    @RequestMapping(value = {"/user-update-profile"}, method = RequestMethod.POST)
    public ModelAndView updateProfile(HttpServletRequest request,
                                      @ModelAttribute("user") User user, Model model){

//        User oldUser = (User) request.getSession().getAttribute("user");
//        String oldUsername = (String) request.getSession().getAttribute("username");
//        String oldPassword = (String) request.getSession().getAttribute("password");
//        String oldEmail = (String) request.getSession().getAttribute("email");
        User user1 = userService.getUserByUsername(user.getUsername());
        if( user1 != null ){
            System.out.println(user.getUsername() + " has exist");
            modelAndView.addObject("alert", "true");
            modelAndView.setViewName("user/profile_details_user");
            modelAndView.addObject("alert", "");
            modelAndView.addObject("message", user.getUsername() + " has exist");
            return modelAndView;
        }
        user1 = userService.getUserByEmail(user.getEmail());
        if(user1 != null){
            modelAndView.addObject("alert", "");
            modelAndView.addObject("message", user.getEmail() + " has exist");
            System.out.println(user.getUsername() + " has exist");
            modelAndView.setViewName("user/profile_details_user");
            return modelAndView;
        } else {
            userService.updateUser(user);
            modelAndView.setViewName("redirect:/user-profile-details");
        }
        modelAndView.addObject("user", user);
        request.getSession().removeAttribute("user");
        request.getSession().setAttribute("user", user);

        return modelAndView;
    }


}
