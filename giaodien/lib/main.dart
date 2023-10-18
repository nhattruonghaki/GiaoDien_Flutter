import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Số sản phẩm đã mua',
      'Tổng chi tiêu',
      'Đã đánh giá',
    ];
    String? selectedValue;

    var _SPDM=20;
    var _TongChiTieu=2168547;
    var _DG=14;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(),
            /* Row(children: [
              Column(children:[ DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  isExpanded: true,
                  hint: Text(
                    'Chọn',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: items
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 40,
                    width: 180,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
              ],
              ),
            ],
            ), */
            
           /*  Row(children: [
              Container(child: 
              Row(children: [
                Icon(Icons.production_quantity_limits,color: Colors.redAccent),
                Text("\n Số sản phẩm đã mua          :          $_SPDM     \n",style: TextStyle(fontSize: 16,),),
              ]),
              ),
              Container(child: 
              Row(children: [
                Icon(Icons.paid,color: Colors.yellowAccent,),
                Text("\n Tổng chi tiêu          :          $_TongChiTieu Đ     \n",style: TextStyle(fontSize: 16,),),
              ]),
              ),
              
              Container(child: 
              Row(children: [
                Icon(Icons.star_border,color: Colors.yellow,),
                Text("\n Đã đánh giá          :          $_DG     \n",style: TextStyle(fontSize: 16),),
              ]),
              ),
            ],
            ), */
            Row(children: [Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Container(child:
              Row(children: [
                Icon(Icons.production_quantity_limits,color: Colors.redAccent),
                Text("\n Số sản phẩm đã mua          :          $_SPDM     \n",style: TextStyle(fontSize: 16,),),
                SizedBox(width: 50,),
                Text("Sản phẩm",style: TextStyle(fontSize: 16),)
              ]),
              ),
              Container(child: 
              Row(children: [
                Icon(Icons.paid,color: Colors.yellowAccent,),
                Text("\n Tổng chi tiêu                       :          $_TongChiTieu\n",style: TextStyle(fontSize: 16,),),
                SizedBox(width: 30,),
                Text("Đồng",style: TextStyle(fontSize: 16),)
              ]),
              ),
              
              Container(child: 
              Row(children: [
                Icon(Icons.star_border,color: Colors.yellow,),
                Text("\n Đã đánh giá                        :          $_DG     \n",style: TextStyle(fontSize: 16),),
                SizedBox(width: 50,),
                Text("Sản phẩm",style: TextStyle(fontSize: 16),)
              ]),
              ),
            ],
            ),
            ],
            ),
            Row(),
          ],
         ),
       ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
