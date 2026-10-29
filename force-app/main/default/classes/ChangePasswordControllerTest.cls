/**
 * An apex page controller that exposes the change password functionality
 */
@IsTest public with sharing class ChangePasswordControllerTest {
   	@IsTest(SeeAllData=true) public static void testChangePasswordController() {
        // Instantiate a new controller with all parameters in the page
        ChangePasswordController controller = new ChangePasswordController();
        controller.oldPassword = '123456';
        controller.newPassword = 'qwerty2'; 
        controller.verifyNewPassword = 'qwerty2';                
        //This is new headlless test from dev1
        System.assertEquals(controller.changePassword(),null);                           
    }    
}