import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
            image: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/8/8e/Lima_-_Per%C3%BA.jpg"),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300.0,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ciudad de Lima',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Lima, Peru',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.red[500],
                    ),
                    const Text('50'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 30,
            ),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _ButtonColumn(
                  color: const Color.fromRGBO(32, 150, 243, 1.0),
                  icon: Icons.call,
                  label: "CALL",
                ),
                _ButtonColumn(
                  color: const Color.fromRGBO(32, 150, 243, 1.0),
                  icon: Icons.near_me,
                  label: "ROUTE",
                ),
                _ButtonColumn(
                  color: const Color.fromRGBO(32, 150, 243, 1.0),
                  icon: Icons.share,
                  label: "SHARE",
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child:const Text(
              "Lima es la capital y una megalópolis de la República del Perú.Se encuentra situada en la costa central del país, a orillas del océano Pacífico, conformando una extensa y poblada área urbana conocida como Lima Metropolitana de 70 km norte a sur, desde el distrito de Ancón hasta el distrito de Pucusana, y 44 km este a oeste, desde el distrito de La Punta hasta Chosica (distrito de Lurigancho-Chosica), flanqueada por el desierto costero y extendida sobre los valles de los ríos Chillón, Rímac y Lurín. Según proyecciones del INEI al año 2020, la ciudad de Lima cuenta con más de 9,5 millones de habitantes,1​ mientras que Lima Metropolitana bordea los 11 millones de habitantes (el 32% de la población peruana), cifras que la convierten en la ciudad más poblada del país.",
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

class _ButtonColumn extends StatelessWidget {
  _ButtonColumn({
    required this.color,
    required this.icon,
    required this.label,
  });
  Color color;
  IconData icon;
  String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }
}