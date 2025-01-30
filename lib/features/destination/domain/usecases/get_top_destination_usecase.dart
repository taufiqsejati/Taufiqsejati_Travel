import 'package:dartz/dartz.dart';
import 'package:taufiqsejati_travel/core/error/failures.dart';
import 'package:taufiqsejati_travel/features/destination/domain/entities/destination_entity.dart';
import 'package:taufiqsejati_travel/features/destination/domain/repositories/destination_repository.dart';

class GetTopDestinationUsecase {
  final DestinationRepository _repository;

  GetTopDestinationUsecase(this._repository);
  Future<Either<Failure, List<DestinationEntity>>> call() {
    return _repository.top();
  }
}
