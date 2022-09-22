import 'package:dynamic_island_iphone/model/views_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ViewsScreens(),
    );
  }
}

class ViewsScreens extends StatefulWidget {
  const ViewsScreens({super.key});

  @override
  State<ViewsScreens> createState() => _ViewsScreensState();
}

class _ViewsScreensState extends State<ViewsScreens> {
  int activePageIndex = 0;
  bool collapsed = true;
  bool showViews = true;

  @override
  initState() {
//Fullscreen display with status and navigation bars presentable through a
//swipe gesture at the edges of the display.
// Available starting at SDK 19 or Android K.
//Earlier versions of Android will not be affected by this setting.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  setActivePageIndex(i) {
    setState(() {
      activePageIndex = i;
    });
  }

  toggleViews() {
    setState(() {
      showViews = false;
      collapsed = !collapsed;
    });
  }

  static const animationDuration = Duration(milliseconds: 250);
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    final activeViews = views[activePageIndex];
    final viewsToShow =
        collapsed ? activeViews.collapsedViews : activeViews.expandedViews;
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Stack(
        children: [
          GestureDetector(
            onTap: (() => setState(() {
                  if (!collapsed) {
                    toggleViews();
                  }
                })),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFF512F),
                      Color(0xFFDD2476),
                    ]),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: PageView(
                  controller: controller,
                  onPageChanged: setActivePageIndex,
                  children: <Widget>[
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Music',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(
                            height: 150,
                            width: 100,
                            child: Lottie.network(
                                "https://assets1.lottiefiles.com/packages/lf20_6K4Hjs.json"),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Calls',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(
                            height: 150,
                            width: 100,
                            child: Lottie.network(
                                "https://assets9.lottiefiles.com/datafiles/q7kPYy3BPNV4s7r/data.json"),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Location',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(
                            height: 150,
                            width: 100,
                            child: Lottie.network(
                                "https://assets2.lottiefiles.com/packages/lf20_UgZWvP.json"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: GestureDetector(
              onTap: toggleViews,
              child: AnimatedContainer(
                onEnd: () => setState(() {
                  showViews = true;
                }),
                margin: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(
                      collapsed ? 20.0 : activeViews.expandedBorderRadius),
                ),
                duration: animationDuration,
                curve: Curves.easeInOut,
                height: collapsed ? 40 : activeViews.expandedHeight,
                width: MediaQuery.of(context).size.width *
                    (collapsed ? 0.5 : 0.95),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (collapsed ? 10.0 : 15.0), vertical: 5),
                  child: AnimatedSwitcher(
                    duration: animationDuration,
                    child: showViews ? viewsToShow : const SizedBox(),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
