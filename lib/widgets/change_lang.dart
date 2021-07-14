import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kanban/app/language/language_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeLangComponent extends StatelessWidget {
  const ChangeLangComponent({Key? key}) : super(key: key);
  String getIcon(String locale) {
    switch (locale) {
      case 'ru':
        return 'assets/icons/ru.svg';
      case 'en':
        return 'assets/icons/en.svg';
      default:
        return 'assets/icons/ru.svg';
    }
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 40,
        child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    context
                        .read<LanguageBloc>()
                        .add(SetLanguageEvent(context.supportedLocales[index]));
                  },
                  child: SvgPicture.asset(
                      getIcon(context.supportedLocales[index].languageCode)),
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  width: 12,
                ),
            itemCount: context.supportedLocales.length),
      );
}
