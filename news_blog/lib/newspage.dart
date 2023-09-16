import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<String> img = [
    'https://zimsonwatches.com/cdn/shop/files/2000x886px_LE23.jpg?v=1689245966&width=1070',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTPZ-2aJ9qXk5BIqiMMc0-ISQirSz_WfFeRcmtySaP_t3vp3TDnocFzEvLz4jeHHpuCCk&usqp=CAU'
  ];
  List<String> title = [
    'All news',
    'Technology',
    'Fashion',
    'Sports',
    'Science'
  ];
  List<String> date = [
    '20 jan 2023',
    '25 feb 2020',
    '3 jul 2000',
    '5 sep 2023',
    '13 Apr 2020'
  ];
  List<String> news = [
    'Rain interrupts Nepal,India match',
    'Government denies U-turn on encrypted messaging row',
    "Victoira's secret to Host In-store 'The Tour of experience' at New York Flagship",
    'Nepal women enter Asia Region Qualifier semi-final',
    'Study In astronauts could improve health In space and on Earth'
  ];
  List<String> trailimg = [
    'https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/1-1693832242.jpg&w=900&height=601',
    'https://ichef.bbci.co.uk/news/1024/cpsprodpb/10749/production/_130410476_gettyimages-1295785535.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvRevC3s6lUg5oTuShrHT0qz_v_CoU58ESibSvZsaowAsEbPm7fJtNJpW0ssPb1NKsviw&usqp=CAU',
    'https://assets-api.kathmandupost.com/thumb.php?src=https://assets-cdn.kathmandupost.com/uploads/source/news/2023/third-party/thumb20230904T112344289-1693805940.jpg&w=900&height=601',
    'https://cie.spacefoundation.org/wp-content/uploads/2022/07/Astronaut.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Swiper(
                    itemCount: img.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Card(
                            elevation: 5,
                            child: Image.network(
                              img[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                    pagination: const SwiperPagination(),
                    control: null,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    child: const Text(
                      'Latest News',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    child: const Text(
                      'Show More',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: news.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title[index],
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Text(
                            news[index],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      subtitle: Text(date[index]),
                      trailing: Column(
                        children: [
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(trailimg[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
