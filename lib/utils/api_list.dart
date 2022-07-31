class Apis {
  static const baseUrl = 'http://44.224.116.122:82/';
  static const sendOtp = '${baseUrl}auth/sendOtp';
  static const validateOtp = '${baseUrl}auth/validateOtp';
  static const register = '${baseUrl}auth/register';
  static const login = '${baseUrl}auth/login';
  static const getCardMasterData = '${baseUrl}auth/getCardMasterData';
  static const order = '${baseUrl}card/createOrder';
  static const updateOrder = '${baseUrl}card/updateOrderStatus';
  static const getUserDetails = '${baseUrl}auth/getUserDetails';

  //address
  static const addUserAddress = '${baseUrl}user/addUserAddress';
  static const getUserAddress = '${baseUrl}user/getUserAddress'; // GET
  static const updateUserAddress = '${baseUrl}user/updateUserAddress';
}