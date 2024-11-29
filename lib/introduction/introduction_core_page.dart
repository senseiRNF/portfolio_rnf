import 'package:flutter/material.dart';
import 'package:portfolio_rnf/introduction/introduction_display.dart';
import 'package:portfolio_rnf/services/local/enum_collections.dart';
import 'package:portfolio_rnf/services/local/jsons/introduction_card_json.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State createState() => IntroductionCore();
}

class IntroductionCore extends State<IntroductionPage> {
  List<IntroductionCardJson> introductionCardList = [];

  int introductionIndex = 0;

  @override
  void initState() {
    super.initState();

    onInitPage();
  }

  onInitPage() => setState(() {
    introductionCardList = [
      IntroductionCardJson(
        title: "Selamat Datang!",
        content: RichText(
          textAlign: TextAlign.justify,
          text: const TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: "Montserrat",
            ),
            children: [
              TextSpan(
                text: "___",
                style: TextStyle(
                  color: Colors.white,
                )
              ),
              TextSpan(
                text: "Perkenalkan saya Razy Novianrizki Firdana, seorang programmer yang telah berpengalaman dalam pengembangan sistem perangkat lunak"
                    " sejak tahun 2018 dan masih aktif dalam dunia pemrograman hingga saat ini. Terima kasih telah mengunduh aplikasi ini dan semoga"
                    " Anda tertarik dengan hasil pekerjaan yang telah saya kembangkan.",
              ),
              TextSpan(
                text: "\n\n",
              ),
              TextSpan(
                  text: "- RNF"
              ),
            ],
          ),
        ),
      ),
      IntroductionCardJson(
        title: "Latar Belakang Pendidikan & Pengalaman Kerja",
        content: RichText(
          textAlign: TextAlign.justify,
          text: const TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: "Montserrat",
            ),
            children: [
              TextSpan(
                  text: "___",
                  style: TextStyle(
                    color: Colors.white,
                  )
              ),
              TextSpan(
                text: "Setelah lulus dari sekolah menengah atas jurusan IPA di tahun 2014, kemudian saya meneruskan pendidikan ke sebuah perguruan tinggi swasta di"
                    " daerah Jakarta, yaitu ",
              ),
              TextSpan(
                text: "Universitas Mercu Buana",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: ". Jurusan yang saya tempuh adalah ",
              ),
              TextSpan(
                text: "Sistem Informasi",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: ", salah satu jurusan yang terdapat di fakultas ",
              ),
              TextSpan(
                text: "Ilmu Komputer",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: ".\n\n",
              ),
            ],
          ),
        ),
      ),
    ];
  });

  onChangeIntroductionIndex({required DirectionalType type}) {
    if(type == DirectionalType.next) {
      if(introductionIndex < introductionCardList.length) {
        setState(() {
          introductionIndex = introductionIndex + 1;
        });
      }
    } else {
      if(introductionIndex > 0) {
        setState(() {
          introductionIndex = introductionIndex - 1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionDisplay(core: this);
  }
}