import 'package:carousel_slider/carousel_slider.dart';
import 'package:charity_finder/features/dashboard/components/carousel_widget.dart';
import 'package:charity_finder/features/dashboard/components/product_dashboard_widget.dart';
import 'package:charity_finder/features/onboarding/ui/components/carousel.dart';
import 'package:charity_finder/features/onboarding/ui/components/carousel_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  static const routeName = "/dashboard";

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text(
          'CharityFinder',
          style: TextStyle(fontSize: 22),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Destaques (Instituições)',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              const CarouselWidget(),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Instituições',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Ver mais pressionado");
                    },
                    child: const Text(
                      "Ver mais >",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductDashboardWidget(
                      text: "Lorem ipsum dolor sit amet",
                      onTap: () {},
                    ),
                    ProductDashboardWidget(
                      text: "Lorem ipsum dolor sit amet",
                      onTap: () {},
                    ),
                    ProductDashboardWidget(
                      text: "Lorem ipsum dolor sit amet",
                      onTap: () {},
                    ),
                    ProductDashboardWidget(
                      text: "Lorem ipsum dolor sit amet",
                      onTap: () {},
                    ),
                    ProductDashboardWidget(
                      text: "Lorem ipsum dolor sit amet",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Doações Necessárias',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Ver mais pressionado");
                    },
                    child: const Text(
                      "Ver mais >",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductDashboardWidget(
                      text: "Lorem ipsum dolor sit amet",
                      onTap: () {},
                    ),
                    ProductDashboardWidget(
                      text: "Lorem ipsum dolor sit amet",
                      onTap: () {},
                    ),
                    ProductDashboardWidget(
                      text: "Lorem ipsum dolor sit amet",
                      onTap: () {},
                    ),
                    ProductDashboardWidget(
                      text: "Lorem ipsum dolor sit amet",
                      onTap: () {},
                    ),
                    ProductDashboardWidget(
                      text: "Lorem ipsum dolor sit amet",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
