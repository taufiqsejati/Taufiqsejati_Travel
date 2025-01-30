import 'package:dartz/dartz.dart';
import 'package:taufiqsejati_travel/core/error/failures.dart';
import 'package:taufiqsejati_travel/features/destination/domain/entities/destination_entity.dart';

abstract class DestinationRepository {
  Future<Either<Failure, List<DestinationEntity>>> all();
  Future<Either<Failure, List<DestinationEntity>>> top();
  Future<Either<Failure, List<DestinationEntity>>> search(String query);
}
