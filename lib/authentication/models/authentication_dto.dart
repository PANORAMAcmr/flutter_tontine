class LoginRequest{
  final String email;
  final String password;

  LoginRequest({required this.email, required this.password});
}
class AuthenticationResponse{
  final String authenticationToken;
  final String refreshToken;
  final DateTime expiresAt;
  final String username;

  AuthenticationResponse({required this.authenticationToken, required this.refreshToken, required this.expiresAt, required this.username});
}