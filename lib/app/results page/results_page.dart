import 'package:currency_exchange/app/enums.dart';
import 'package:currency_exchange/app/injection_container.dart';
import 'package:currency_exchange/app/results%20page/cubit/last_month_cubit.dart';
import 'package:currency_exchange/app/root%20Page/models/exchange_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    Key? key,
    required this.title,
    required this.exchangeRate,
    required this.effectiveDate,
    required this.currency,
    required this.showLastMonth,
  }) : super(key: key);
  final String title;
  final String exchangeRate;
  final String effectiveDate;
  final String currency;
  final bool showLastMonth;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _DisplayCurrentWidget(
                  exchangeRate: exchangeRate,
                  effectiveDate: effectiveDate,
                  currency: currency.toUpperCase(),
                ),
                BlocProvider(
                  create: (context) => getIt<LastMonthCubit>()
                    ..getLastMonthData(
                      currency: currency,
                      showLastMonth: showLastMonth,
                    ),
                  child: BlocBuilder<LastMonthCubit, LastMonthState>(
                    builder: (context, state) {
                      switch (state.viewType) {
                        case ViewType.current:
                          return CurrentTextButton(currency: currency);
                        case ViewType.loading:
                          return const CircularProgressIndicator();
                        case ViewType.error:
                          return Text(state.errorMessage!);
                        case ViewType.lastMonth:
                          return _DisplayLastMonthWidget(
                              currency: currency.toUpperCase(),
                              results: state.results!);
                      }
                    },
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class CurrentTextButton extends StatelessWidget {
  const CurrentTextButton({
    Key? key,
    required this.currency,
  }) : super(key: key);

  final String currency;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context
              .read<LastMonthCubit>()
              .getLastMonthData(currency: currency, showLastMonth: true);
        },
        child: const Text("v Pokaż kursy z ostatnich 30 dni v"));
  }
}

class _DisplayLastMonthWidget extends StatelessWidget {
  const _DisplayLastMonthWidget({
    Key? key,
    required this.results,
    required this.currency,
  }) : super(key: key);
  final List<ExchangeModel> results;
  final String currency;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(children: [
        const LastMonthTextButton(),
        for (final result in results)
          LastMonthListViewItem(currency: currency, result: result),
      ]),
    );
  }
}

class LastMonthListViewItem extends StatelessWidget {
  const LastMonthListViewItem({
    Key? key,
    required this.currency,
    required this.result,
  }) : super(key: key);

  final String currency;
  final ExchangeModel result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: const Color.fromARGB(255, 216, 216, 216),
        padding: const EdgeInsets.all(10),
        child: Expanded(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Kurs $currency na dzień:"),
                Text(DateFormat('dd-MM-yyyy').format(result.effectiveDate))
              ],
            ),
            const SizedBox(height: 10),
            Text(
                style: const TextStyle(fontWeight: FontWeight.bold),
                "${result.exchangeRate.toString()} PLN")
          ],
        )),
      ),
    );
  }
}

class LastMonthTextButton extends StatelessWidget {
  const LastMonthTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.read<LastMonthCubit>().hideLastMonthData();
        },
        child: const Text("^ Schowaj kursy z ostatnich 30 dni ^"));
  }
}

class _DisplayCurrentWidget extends StatelessWidget {
  const _DisplayCurrentWidget({
    Key? key,
    required this.exchangeRate,
    required this.effectiveDate,
    required this.currency,
  }) : super(key: key);
  final String exchangeRate;
  final String effectiveDate;
  final String currency;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CurrentListvViewItem(
              currency: currency,
              effectiveDate: effectiveDate,
              exchangeRate: exchangeRate),
        ),
      ],
    );
  }
}

class CurrentListvViewItem extends StatelessWidget {
  const CurrentListvViewItem({
    Key? key,
    required this.currency,
    required this.effectiveDate,
    required this.exchangeRate,
  }) : super(key: key);

  final String currency;
  final String effectiveDate;
  final String exchangeRate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        color: Colors.grey,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Kurs $currency na dzień:"),
                Text(effectiveDate),
              ],
            ),
            const SizedBox(height: 20),
            Text(
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                "$exchangeRate PLN"),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
