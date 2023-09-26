abstract class UserDomainEntity{
}


class ErrorEntity extends UserDomainEntity{
  ErrorEntity({required this.status , required this.message});
  final int status;
  final String message;
}