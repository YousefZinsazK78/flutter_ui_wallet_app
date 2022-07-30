import 'package:flutter/material.dart';
import 'package:flutter_ui_bitcoin_1/src/constants.dart';
import 'package:flutter_ui_bitcoin_1/src/widgets/card_item.dart';
import 'package:flutter_ui_bitcoin_1/src/widgets/quick_access_item.dart';

class ExchangeApp extends StatelessWidget {
  const ExchangeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.lightBlueAccent,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.area_chart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.change_circle_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //appbar or topbar
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "My Wallet",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.qr_code_scanner),
                        ),
                        const VerticalDivider(
                          thickness: 1.2,
                          indent: 5,
                          endIndent: 10,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_outlined),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              const CardItem(),
              const SizedBox(
                height: 25,
              ),
              //guide button , quick access buttons
              Container(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                height: 95,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    QuickAccessItem(
                        quickAccessItemText: "withdrawal",
                        quickAccessItemIcon: Icons.remove_circle_outline),
                    QuickAccessItem(
                      quickAccessItemText: "deposit",
                      quickAccessItemIcon: Icons.add_circle_outline_rounded,
                    ),
                    QuickAccessItem(
                      quickAccessItemText: "receive",
                      quickAccessItemIcon: Icons.arrow_circle_down_rounded,
                    ),
                    QuickAccessItem(
                      quickAccessItemText: "send",
                      quickAccessItemIcon: Icons.arrow_circle_up_outlined,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //live Prices
              Column(
                children: [
                  SizedBox(
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //logo
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/bitcoin.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        //title , subtitle
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "Ethereum",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "ETH",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        //price and profit or lose
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "\$21.543",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "+1.56%",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.green,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
