import 'package:appmobile/screens/guest/Auth.dart';
import 'package:appmobile/screens/guest/Password.dart';
import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  TermScreen({Key? key}) : super(key: key);

  @override
  State<TermScreen> createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Center(
            child: Text(
              'Terms & Conditions',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 28,
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(
                Icons.arrow_back_ios
            ),
            color: Colors.black87,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => AuthScreen(),
                    )
                );
              },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: 25.0,
            right: 25.0,
            bottom: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                Expanded(
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Nous nous soucions de votre vie privée \n\nNous et nos partenaires utilisons des cookies pour stocker et accéder à des données personnelles telles que les données de navigation à des fins telles que la diffusion et la personnalisation du contenu et de la publicité et l'analyse du trafic du site. Vous pouvez en savoir plus sur les objectifs pour lesquels nous et nos partenaires utilisons des cookies ou exercer vos préférences en cliquant sur le bouton Paramètres des cookies ci-dessous.\n\nVous pouvez revenir sur vos choix de consentement ou retirer votre consentement à tout moment en cliquant sur le lien de vos paramètres de cookies dans notre politique en matière de cookies. \n\nNous travaillons en coordination avec un cadre industriel, signalant vos préférences de manière globale pour tous les sites web participants. \n\nVous pouvez régler les préférences en matière de cookies dans Paramètres des cookies.\n\n\nNous et nos partenaires traitons les données :\n\nStocker et/ou accéder à des informations sur un appareil. Annonces personnalisées. Contenu personnalisé. Mesure des annonces et du contenu, analyse de l'audience et développement de produits. \nPour plus d'informations, veuillez lire notre Politique de Cookies.",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  elevation: 0,
                  padding: EdgeInsets.symmetric(
                      vertical: 15.0
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        0.0
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => PasswordScreen(),
                        )
                    );
                  },
                  child: Text(
                    'Valider',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
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
