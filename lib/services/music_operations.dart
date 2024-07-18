import 'package:music_app/models/music.dart';

class MusicOperations {
  MusicOperations._() {}
    // ignore: unused_element
  static List<Music> getMusic() {
      return <Music>[
        Music(
            'Chichore',
            'https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/9771/1599771-h-2ce23e9cb135',
            'Pritam',
            'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview126/v4/40/fe/78/40fe788a-6cca-0278-aa15-dea00a07df50/mzaf_10011044951809371351.plus.aac.p.m4a'),
        Music(
            'Ek Dil Ek Jaan',
            'https://c-fa.cdn.smule.com/rs-s79/arr/5e/ed/eda4e6af-5b04-4da2-ac5f-ea8bc831e772.jpg',
            'From("Padmaavat")',
            'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview126/v4/40/fe/78/40fe788a-6cca-0278-aa15-dea00a07df50/mzaf_10011044951809371351.plus.aac.p.m4a'),
        Music(
            'Bandeya',
            'https://i.scdn.co/image/ab67616d0000b2735cd31847e786b7e1e185e062',
            'From("Dil Junglee)',
            'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview116/v4/58/da/a7/58daa7fd-f7e2-6796-21ae-80292a1283d0/mzaf_4714488747172576712.plus.aac.p.m4a')
      ];
    }
  

  
}