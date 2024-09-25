import 'package:flutter/material.dart';

class Acphhap extends StatefulWidget {
  const Acphhap({super.key});

  @override
  State<Acphhap> createState() => _AcphhapState();
}

class _AcphhapState extends State<Acphhap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Arabica Coffee post-harvest handling and processing",
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      "Proper Arabica Coffee post-harvest handling and processing is important because it sustains bean quality, adds value and ensures better prices to growers. Two methods for Arabica Coffee processing exist. These are dry processing and wet processing. The major difference between wet and dry processing is how the fresh cherry is treated.\n",
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    // const SizedBox(height: 15),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Wet processing ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    const Text(
                      "Wet processing is more complex than dry processing, requiring specific equipment and the availability of large quantities of clean water. Green coffee produced in this way is usually of better quality and commands higher prices. Two methods exist and they include a) Full wash and b) Semi-wash process\n",
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            "Diagrammatic presentation of the wet processing method",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/wet.png',
                            width: 400,
                            height: 470,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "In the full wash process the skin of fresh cherry is physically removed using a manual or powered pulping machine with addition of water. The sugar coating (mucilage) on the resultant parchment is allowed to ferment over one to two days and then the parchment is washed thoroughly to remove all traces of fermented mucilage. The parchment is dried until the bean inside reaches 12%13% moisture content. This process can produce high quality coffee, but requires large quantities of water - between 2-10L water/kg of fresh cherry and good management of the fermentation and washing process to ensure the coffee flavor is not compromised in the process.\n",
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            "A manual pulper for removing the skins off fresh cherries",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/puplher.png',
                            width: 400,
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "The drying of parchment coffee takes between 7 - 10 days. Parchment coffee must be properly dried to avoid mould growth and achieve/maintain good quality. It is advisable that parchment coffee be dried under shade during the full sun to avoid cracking of the parchment skin during drying. The drying should be on clean surface, preferably raised tables or trays with a mesh base. Parchment Coffee should not be dried directly on bare ground/ soil or dirty surface as this leads to contamination and poor cup quality such as earthy flavors in the finished coffee. Also, during drying, parchment coffee should not be spread out too thick on the drying surface/areas as this prolongs drying and may lead to development of mould. The coffee should be continuously turned until the moisture content has reached 12%-13%.\n",
                            style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            "Trays with a mesh base recommended drying of parchment coffee",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/tray.png',
                            width: 400,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Column(
                        children: [
                          const Text(
                            "Dry parchment coffee awaiting bagging",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Image.asset(
                            'assets/images/parc.png',
                            width: 400,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "In the semi-wash process, the mucilage is removed immediately after pulping using a mucilage remover, the Parchment washed straight away and dried. Notably, this process does not ferment the mucilage with the coffee parchment as it is mechanically removed during the pulping process by use of mucilage remover and the clean parchment, ready for drying. Recent technological advancements have shown that wet pulpers combined with mucilage removers are cost efficient and are effective in consistently producing high quality coffee without the need for fermentation. These units also save on water costs as they typically use only about 0.5L of water per kg of fresh cherry, in addition to reducing the risk of over-fermentation and quality problems in the final coffee product. While there is an initial capital cost to purchase the pulper and demucilager units, there is no need for fermentation tanks, washing systems and waste water lagoons. This provides a big saving to the farmer.\n",
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
