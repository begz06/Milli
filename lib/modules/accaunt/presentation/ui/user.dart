import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milli/assets/constants/app_colors.dart';
import 'package:milli/assets/constants/svg_images.dart';
import 'package:milli/modules/accaunt/presentation/ui/helpers/user_info_page.dart';
import 'package:milli/modules/accaunt/presentation/ui/helpers/widgets/card_widget.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: SizedBox(
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              SvgImages.user_notification,
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Привет, Имя Фамилия',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF9F9F9),
            fontSize: 16,

            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Container(
            alignment: Alignment.centerRight,
            width: 60,
            child: InkWell(
              onTap: () {
                Navigator.of(context,rootNavigator: true).push(MaterialPageRoute(
                  builder: (context) => UserInfoPage(),
                ));
              },
              child: Stack(
                children: [
                  const CircleAvatar(),
                  Positioned(
                    right: 23,
                    top: 19,
                    child: Image.asset(
                      SvgImages.user_setting,
                      fit: BoxFit.fill,
                      height: 20,
                      width: 20,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 24),
        child: Column(
          children: [
            CardWidgets(
              title: 'Чеки',
              icon: SvgImages.user_check,
              onTap: () {},
            ),
            CardWidgets(
              title: 'Любимые бренды',
              icon: SvgImages.user_star,
              onTap: () {},
            ),
            CardWidgets(
              title: 'Покупки',
              icon: SvgImages.user_bag,
              onTap: () {},
            ),
            CardWidgets(
              title: 'Избранное',
              icon: SvgImages.user_saved,
              onTap: () {},
            ),
            CardWidgets(
              title: 'Мои карты',
              icon: SvgImages.user_card,
              onTap: () {},
            ),
            CardWidgets(
              title: 'Отзывы',
              icon: SvgImages.user_like,
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        backgroundColor: primaryColor,
        child: SvgPicture.asset(SvgImages.user_percent),
      ),
    );
  }
}
