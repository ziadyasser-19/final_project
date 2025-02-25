import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());

  void changePaymentMethod(bool selection) {
    selection = !selection;
    emit(Paymentchoosingmethods());
  }
}
