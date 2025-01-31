import 'package:dartz/dartz.dart';
import 'package:taufiqsejati_travel/core/error/failures.dart';
import 'package:taufiqsejati_travel/features/destination/domain/entities/destination_entity.dart';
import 'package:taufiqsejati_travel/features/destination/domain/repositories/destination_repository.dart';

class SearchDestinationUseCase {
  final DestinationRepository _repository;

  SearchDestinationUseCase(this._repository);
  Future<Either<Failure, List<DestinationEntity>>> call(
      {required String query}) {
    return _repository.search(query);
  }
}
