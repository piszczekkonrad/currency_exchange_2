import 'package:currency_exchange/app/enums.dart';
import 'package:currency_exchange/app/injection_container.dart';
import 'package:currency_exchange/app/results%20page/results_page.dart';
import 'package:currency_exchange/app/root%20Page/cubit/root_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class RootPage extends StatelessWidget {
  const RootPage(
      {Key? key, required this.currency, required this.showLastMonth})
      : super(key: key);
  final String currency;
  final bool showLastMonth;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RootCubit>()..getCurrent(currency: currency),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          switch (state.status) {
            case Status.loading:
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(),
                    ],
                  ),
                ),
              );
            case Status.error:
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(state.errorMessage!)],
                  ),
                ),
              );
            case Status.results:
              return ResultsPage(
                title: "Wymiana walut",
                exchangeRate: state.exchangeModel!.exchangeRate.toString(),
                effectiveDate: DateFormat('dd-MM-yyyy')
                    .format(state.exchangeModel!.effectiveDate),
                currency: currency,
                showLastMonth: showLastMonth,
              );
          }
        },
      ),
    );
  }
}
