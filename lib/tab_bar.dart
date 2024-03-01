import 'package:flutter/material.dart';
import 'package:flutter_tabbar_page/flutter_tabbar_page.dart';
class TabBbar extends StatefulWidget {
  static const String routName = "bar";

  const TabBbar({super.key});

  @override
  State<TabBbar> createState() => _TabBbarState();
}

class _TabBbarState extends State<TabBbar> {
  List<PageTabItemModel> lstPages = <PageTabItemModel>[];
  final TabPageController _controller = TabPageController();

  @override
  void initState() {
    super.initState();
    lstPages.add(PageTabItemModel(title: "Men", page: const Center(child: Text(""))));
    lstPages.add(PageTabItemModel(title: "Women", page: const Center(child: Text("Item 2"))));
    lstPages.add(PageTabItemModel(title: "Kids", page: const Center(child: Text("Item 3"))));
  }
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample"),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: TabBarPage(
              controller: _controller,
              pages: lstPages,
              isSwipable: true,
              tabBackgroundColor: Colors.white,
              tabitemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _controller.onTabTap(index);
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / lstPages.length,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Center(
                          child: Text(
                            lstPages[index].title ?? "",
                            style: TextStyle(
                                fontWeight: _controller.currentIndex == index ? FontWeight.w700 : FontWeight.w400,
                                color: _controller.currentIndex == index ? Colors.indigoAccent : Colors.black26,
                                fontSize: 16),
                          ),
                        ),
                        Container(
                            height: 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: _controller.currentIndex == index ? Colors.indigoAccent : Colors.transparent)),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
