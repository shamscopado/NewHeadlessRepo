/**
 * An apex page controller that exposes the change password functionality
 */
@IsTest public with sharing class ChangePasswordControllerTest {
   	@IsTest(SeeAllData=true) public static void testChangePasswordController() {
        // Instantiate a new controller with all parameters in the page
        ChangePasswordController controller = new ChangePasswordController();
        controller.oldPassword = '12345667';
        controller.newPassword = 'qwerty5'; 
        controller.verifyNewPassword = 'qwerty5';                
        
        System.assertEquals(controller.changePassword(),null);                           
    }    
}