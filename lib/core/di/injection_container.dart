import 'package:get_it/get_it.dart';
import '../../features/auth/domain/usecases/login_usecase.dart';

// ننشئ نسخة واحدة (Singleton) من GetIt
final sl = GetIt.instance;

Future<void> init() async {
  /// Features - Auth
  
  // 1. حقن الـ UseCases
  // كلما طلبنا LoginUseCase، سيقوم بإنشائه وحقن AuthRepository الذي عرفناه بالأسفل
  sl.registerLazySingleton(() => LoginUseCase(sl()));

  // 2. حقن الـ Repositories
  // هنا نقول للتطبيق: كلما طلب أحد AuthRepository، لا يمكننا إعطاؤه الواجهة (Abstract)
  // لذلك لاحقاً سنضع هنا الكلاس الحقيقي (Implementation) من طبقة Data
  // ملاحظة: حالياً سنتركه كتعليق لأننا لم ننشئ طبقة Data بعد لتجنب الأخطاء
  // sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(remoteDataSource: sl()));
}