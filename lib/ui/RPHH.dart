// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RPHH extends StatefulWidget {
  const RPHH({super.key});

  @override
  State<RPHH> createState() => _RPHHState();
}

class _RPHHState extends State<RPHH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Post Harvest Handling",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
        // leading: Container(),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.brown.withOpacity(0.1),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.zero,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        "Robusta Coffee Harvest and Postharvest Handling Practice",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Harvesting is one of the critical steps within the coffee value chain where quality of coffee can be either compromised or maintained. Harvesting is the process of picking the ripened fruit (berries) from the coffee trees. Coffee berries ripen progressively and may be picked at intervals of 10-15 days over a period of several months. Good post-harvest practices are critical in maintaining quality.\n",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Robusta Coffee harvesting best practices",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "The best quality coffee is obtained from “selective picking of red ripe cherries” and this is recommended for all farmers. Selective picking is the best way to ensure that quality in the tree is transferred to the cup. This harvesting method maximizes the amount of ripe coffee harvested, as the unripe green beans are left to mature and harvested after 6 to 8 days after. In order to harvest properly farmers must stick to the following harvesting quality controls",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "\u2022 Ripe red cherries should be selectively picked\n  by hand as shown in Figure 56. Well-harvested\n  coffee maintains quality and attracts better\n  prices on the market. Picking green cherries\n  leads to quality deterioration and loss of\n  income due to a lot of unripe or\n  underdeveloped beans and poor cup quality of\n  the final product – hence poor prices.\n"
                        "\u2022 Use clean containers while harvesting in order\n  to avoid development of mould. Have a clean\n  tarpaulin or hessian square under the tree\n  while harvesting. This will help the farmer to\n  separate qualities, coffee found fallen on the\n  ground from that freshly harvested. Secondly,\n  in case of rain, our farmers can gather the\n  harvested coffee quickly. \n"
                        "\u2022 Harvesting cherries picked from the ground\n  must be avoided. They are frequently highly\n  contaminated with Ochratoxin A that may be\n  from mould growths.\n"
                        "\u2022 Immediately after harvesting, remove leaves,\n  twigs and start drying the coffee.\n"
                        "\u2022 Avoid harvesting over- ripe and immature\n  cherries. The best cherries are usually of a\n  bright red colour. The delay to harvest is\n  normally done intentionally to have most of\n  the coffee ripen. However in the process\n  some coffee becomes overripe and this may\n  result in poor cup taste in addition to\n  possibility of mould growth (OTA) risk.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Robusta Coffee Processing",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            // fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Proper coffee processing is important because it sustains bean quality and thus ensures better prices to growers. Two methods for coffee processing exist. These are dry processing and wet processing. The major difference between dry and wet processing is how the fresh cherry is treated.\n"
                        "Dry processing involves direct drying, after picking the coffee cherry. Dry processing is a natural process and is simple. The cherries are dried with the seeds still in the fruit or in their entirety and mostly using the sun to produce dried coffee locally known as Kiboko.",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Wet processing ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            // fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Wet processing is more complex than dry processing, requiring specific equipment and the availability of large quantities of clean water. Green coffee produced in this way is usually of better quality and commands higher prices. Two methods exist and they include (a) Full wash and (b) Semi-wash process\n"
                        "In the full wash process the skin of fresh cherry is physically removed using a manual or powered pulping machine with addition of water (pulping). The sugar coating (mucilage) is allowed to ferment over one to two days and then the parchment is washed thoroughly to remove all traces of fermented mucilage. The parchment is dried until the bean inside reaches 12-13% moisture content.\n"
                        "In the semi-wash process, the skin of the fresh cherry is physically removed by a pulping machine (Figure 61) with addition of water, as with full-wash processing. The mucilage is then removed immediately after pulping using a mucilage remover. Notably, this process does not ferment the mucilage as it is mechanically removed by a mucilage remover. Immediately after removing the mucilage, the clean parchment is ready for drying until the bean inside reaches 12-13% moisture content. Recent technological advancements have shown that pulper/mucilage remover units are a cost efficient and an effective way to consistently produce high quality coffee without the need for fermentation and washing",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Dry processing",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            // fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        " The process of drying Kiboko coffee takes 14 -30 days depending on weather conditions. Dried Kiboko coffee must have moisture content of 13-14% prior to sale or processing. It should be black in colour and must have no smell and free of extraneous matters such as stones, dust and mould with a minimum out-turn of 50 %. Kiboko must be properly dried to avoid growth of mould including OTA. Proper drying of coffee leads to maintaining good quality of the coffee. Always dry coffee on cemented floor, tarpaulins, raised tables and raised wire mesh. To quicken the drying time, farmers are now shifting to the use of large or small scale solar dryers\n",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
