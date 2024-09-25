import 'package:flutter/material.dart';

class Rs1 extends StatefulWidget {
  const Rs1({super.key});

  @override
  State<Rs1> createState() => _Rs1State();
}

class _Rs1State extends State<Rs1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Clear the site",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
        // leading: Container(),
      ),
      body: Container(
        width: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.1),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Coffee will establish properly only on clean, well prepared land. Prepare the land during the dry season. If the land is under forest, it must be cleared thoroughly, including removal of tree stumps and their roots. However, leave some selected trees for shade. The roots of old tree stumps are frequently a source of infection to the young coffee by the fungus Armillaria. This disease can be avoided by ring-barking the forest trees at least one year before they are felled and cleared. Some important practices for land preparation include:\n"
                      "\u2022 Leave some mature trees for shade. Aim for a\n   spacing of 20 x 20m. This gives a good shade\n   cover, while avoiding competition for water\n   and nutrients.\n"
                      "\u2022 Before land ploughing, any couch grass\n   (Lumbugu) must therefore be completely\n   eradicated either by digging and handpicking\n   it out by hand hoe or use of herbicides such\n   as Glyphosate (Roundup) prior to planting.\n"
                      "\u2022 Arable land must be cleared of all previous\n   crops in preparation for planting coffee.\n"
                      "\u2022 Carry out deep plough. It is a good way of\n   rejuvenating the soil.\n"
                      "\u2022 Plant banana trees for extra shade if required.\n"
                      "\u2022 Ground covers should be planted to avoid soil erosion.\n"
                      "\u2022 For sloped terrain, establish terraces.",
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
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
