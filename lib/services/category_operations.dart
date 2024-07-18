import 'package:music_app/models/category.dart';

class CategoryOperations {
  CategoryOperations._() {} // _ means private constructor
  static List<Category> getCategories() {
    return <Category>[
      Category('Top Hits',
          'https://images.crunchbase.com/image/upload/c_pad,h_256,w_256,f_auto,q_auto:eco,dpr_1/vp5jhbgvt9byjwuc3ug8'),
      Category('k-pop Music',
          'https://i1.sndcdn.com/artworks-000238705219-wqv8dm-t500x500.jpg'),
      Category('BollyWood Music',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaRvHQcEWV5NVuxVf7pNPsztn_UlhX7fw1qYpwpjK8JABLF4Gpy1my1TWuBjibMKfGLRA&usqp=CAU'),
      Category('Latest Punjabi',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHu-Eigur0aFkmGyQUR89b4S438V_pUWkJVNB67iz-Ud0tmITHOPYmQhhAwgoy-aIUwdA&usqp=CAU'),
      Category('New Releases',
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwCeYL2jD1hthAkFiVhxFgHQXM1nlk1TEqDQ&usqp=CAU'),
      Category('Love Hits ',
          'https://c.saavncdn.com/719/Love-Songs-2023-Hindi-2023-20230613183415-500x500.jpg'),
    ];
  }
}
