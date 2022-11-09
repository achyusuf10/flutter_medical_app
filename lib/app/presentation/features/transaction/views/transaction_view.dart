import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_app/app/presentation/features/transaction/bloc/history_transaction_bloc.dart';
import 'package:medical_app/app/presentation/features/transaction/widgets/card_product_history_transaction.dart';
import 'package:medical_app/core/utils/ui_utils.dart';
import 'package:medical_app/core/values/enum.dart';
import 'package:my_widget_package/widgets/circular_loading.dart';

class TransactionView extends HookWidget {
  const TransactionView({super.key});
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context
          .read<HistoryTransactionBloc>()
          .add(const HistoryTransactionEvent.started());
      return null;
    });
    return BlocConsumer<HistoryTransactionBloc, HistoryTransactionState>(
      listener: (context, state) {
        state.mapOrNull(
          loaded: (value) {
            if (value.viewState == ViewState.loading) {
              UiUtils.showCircularLoading(context);
            }
            if (value.viewState == ViewState.success) {
              Navigator.pop(context);
              Navigator.pop(context);
            }
            if (value.viewState == ViewState.failed) {
              Navigator.pop(context);
              Navigator.pop(context);
            }
          },
        );
      },
      builder: (context, state) {
        return state.mapOrNull(
              loading: (value) => const CircularLoading(),
              loaded: (value) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'History Transaction',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) =>
                          CardProductHistoryTransaction(
                            transactionEntity: value.listTransaction[index],
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 14,
                          ),
                      itemCount: value.listTransaction.length),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ) ??
            const SizedBox();
      },
    );
  }
}
