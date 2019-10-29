import 'package:flutter/material.dart';

class ListviewControllerExample extends StatefulWidget {
  @override
  _ListviewControllerExampleState createState() =>
      _ListviewControllerExampleState();
}

class _ListviewControllerExampleState extends State<ListviewControllerExample> {
  ScrollController _scrollController =
      ScrollController(initialScrollOffset: 500);

  @override
  void initState() {
    super.initState();
    // _scrollController.initialScrollOffset
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview controller example'),
        centerTitle: true,
      ),
      // body: ListView.builder(
      //   controller: _scrollController,
      //   itemCount: 30,
      //   itemBuilder: (context, index) {
      //     return _renderItem(index);
      //   },
      // ),
      body: CustomScrollView(
        center: Key('item10'),
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return _renderItem(index);
              },
            ),
          )
        ],
      ),
    );
  }

  _renderItem(int index) {
    return Card(
      key: Key('item$index'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 4, top: 4, bottom: 10),
            child: SizedBox(
              height: 40,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                    border: Border.all(width: 4),
                  ),
                  width: 7,
                  height: 7,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 12,
            ),
            height: 28,
            width: 28,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Todo item $index',
                style: TextStyle(fontFamily: 'Lato', fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  '18 Jun',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  '10:26',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
