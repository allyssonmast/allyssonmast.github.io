import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:page/app/data/model/about.dart';

class AboutUniversityWidget extends StatelessWidget {
  final AboutMe evento;
  const AboutUniversityWidget({Key? key, required this.evento})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dataInicialFormatada =
        DateFormat('MM/yyyy').format(evento.startDate);
    String dataFinalFormatada = DateFormat('MM/yyyy').format(evento.finalDate);

    Color color = evento.subTitle == 'noButeco App'
        ? const Color(0xffffcf41)
        : Colors.white;
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: color,
            child: Image.asset(
              evento.url,
              height: 200,
            ),
          ),
          const Spacer(),
          Text(
            evento.subTitle.tr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w800),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              evento.title.tr,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          if (evento.description != null)
            Text(
              '* ${evento.description!.tr}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('${'from'.tr}:$dataInicialFormatada'),
                Text('${'to'.tr}: $dataFinalFormatada'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
