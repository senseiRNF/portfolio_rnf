import 'package:flutter/material.dart';
import 'package:portfolio_rnf/introduction/introduction_display.dart';
import 'package:portfolio_rnf/services/local/enum_collections.dart';
import 'package:portfolio_rnf/services/local/jsons/example_program_menu_json.dart';
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

  onInitPage() {
    List<ExampleProgramMenuJson> exampleProgramMenuList = [
      ExampleProgramMenuJson(
        title: "SPKPMS",
      ),
      ExampleProgramMenuJson(
        title: "Mitra Absensi",
      ),
      ExampleProgramMenuJson(
        title: "JNE Booking App",
      ),
      ExampleProgramMenuJson(
        title: "Anxiety Disorder Diagnostic",
      ),
      ExampleProgramMenuJson(
        title: "Kampung Tematik Tangerang",
      ),
      ExampleProgramMenuJson(
        title: "Petshop Services App",
      ),
      ExampleProgramMenuJson(
        title: "SIKOOPI App",
      ),
      ExampleProgramMenuJson(
        title: "SIQUROL App",
      ),
      ExampleProgramMenuJson(
        title: "Tivato App",
      ),
      ExampleProgramMenuJson(
        title: "Aerplus App",
      ),
      ExampleProgramMenuJson(
        title: "Semen Tiga Roda POS",
      ),
      ExampleProgramMenuJson(
        title: "JNY School App",
      ),
      ExampleProgramMenuJson(
        title: "JNY GSS App",
      ),
      ExampleProgramMenuJson(
        title: "Six Sense HR",
      ),
    ];

    setState(() {
      introductionCardList = [
        IntroductionCardJson(
          title: "Selamat Datang!",
          content: RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
              ),
              children: [
                TextSpan(
                  text: "___",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: "Perkenalkan saya ",
                ),
                TextSpan(
                  text: "Razy Novianrizki Firdana",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ", seorang ",
                ),
                TextSpan(
                  text: "Programmer",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: " yang telah berpengalaman dalam pengembangan sistem perangkat lunak"
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
          title: "Latar Belakang Pendidikan",
          content: RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
              ),
              children: [
                TextSpan(
                  text: "___",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: "Setelah lulus dari sekolah menengah atas jurusan IPA di tahun 2014, saya meneruskan pendidikan ke sebuah perguruan tinggi swasta di"
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
        IntroductionCardJson(
          title: "Pengalaman Kerja",
          content: RichText(
            textAlign: TextAlign.justify,
            text: const TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
              ),
              children: [
                TextSpan(
                  text: "___",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: "Memulai karir sebagai seorang ",
                ),
                TextSpan(
                  text: "Asisten Laboratorium Komputer",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                    text: " di "
                ),
                TextSpan(
                  text: "Universitas Mercu Buana",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: " sekitar tahun 2015 dan sempat bekerja lepas dengan menerima pesanan untuk membuat program yang ditujukan untuk tugas akhir.",
                ),
                TextSpan(
                  text: "\n\n",
                ),
                TextSpan(
                  text: "___",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: "Setelah lulus di tahun 2018, saya memulai karir sebagai seorang staff programmer di sebuah perusahaan konsultan IT"
                      " yaitu ",
                ),
                TextSpan(
                  text: "PT Makmur Supra Nusantara",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ", berlokasi di Kuningan, Jakarta Selatan. Hingga saat aplikasi ini dibuat pada tahun 2024 pun saya masih bekerja ditempat"
                      " ini dan masih menjabat posisi yang sama.",
                ),
              ],
            ),
          ),
        ),
        IntroductionCardJson(
          title: "Koleksi Program",
          content: Column(
            children: [
              RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "OpenSans",
                  ),
                  children: [
                    TextSpan(
                      text: "___",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: "Beberapa program yang telah saya buat di antaranya: ",
                    ),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: exampleProgramMenuList.length,
                itemBuilder: (gridContext, gridIndex) {
                  return InkWell(
                    onTap: () {},
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Center(
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            margin: const EdgeInsets.only(
                              bottom: 10.0,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                child: Text(
                                  exampleProgramMenuList[gridIndex].title ?? "",
                                  style: const TextStyle(
                                    fontSize: 10.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ];
    });
  }

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