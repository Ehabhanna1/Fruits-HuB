abstract class Failuer {
  final String message;
  const Failuer(this.message);
}

class ServerFailuer extends Failuer {
  const ServerFailuer(super.message);
}
