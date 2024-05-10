import 'dart:io';
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
  bool activeConnection = false;
  Future checkUserConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        setState(() {
          activeConnection = true;
        });
      }
    } on SocketException catch (_) {
      setState(() {
        activeConnection = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    checkUserConnection();
    Provider.of<DataPriceListAndCrypto>(context, listen: false).getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dplc = Provider.of<DataPriceListAndCrypto>(context);
    return Scaffold(
        backgroundColor: Constants.blackColor, body: checkUserInternet(dplc));
  }

  checkUserInternet(DataPriceListAndCrypto dplc) {
    if (activeConnection == true) {
      return dataLoadingAnimation(dplc);
    } else {
      return noInternetMessage(context);
    }
  }
}

Center noInternetMessage(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "دستگاه به اینترنت متصل نیست ...",
          style: TextStyle(
            fontSize: 18,
            fontFamily: "iransans",
            color: Colors.white,
          ),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const SplashScreen(),
              ),
              (route) => false,
            );
          },
          icon: const Icon(
            Icons.wifi_find_sharp,
            color: Colors.green,
          ),
          label: const Text(
            "دوباره تلاش کنید",
            style: TextStyle(
                fontFamily: "lalezar", fontSize: 18, color: Colors.green),
          ),
        ),
      ],
    ),
  );
}

Widget dataLoadingAnimation(DataPriceListAndCrypto dplc) {
  return dplc.loading
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
              ),
            ],
          ),
        )
      : const RootScreen();
}
