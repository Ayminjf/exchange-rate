import 'package:exchange_rate/constants/constants.dart';
import 'package:exchange_rate/screens/root_screens.dart';
import 'package:flutter/material.dart';
import 'package:exchange_rate/provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<DataPriceListAndCrypto>(context, listen: false).getData();
  }

  @override
  Widget build(BuildContext context) {
    final dplc = Provider.of<DataPriceListAndCrypto>(context);
    return Scaffold(
      backgroundColor: Constants.blackColor,
      body: dplc.loading
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 350,
                    width: 350,
                    child: RiveAnimation.asset("assets/images/loading.riv"),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "لطفا کمی صبر کنید ...",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: "lalezar",
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          : const RootScreen(),
    );
  }
}
