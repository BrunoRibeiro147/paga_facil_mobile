import 'dart:ui';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  bool showInputs = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          LoginOptions(
            animationController: _animationController,
          ),
          LoginInputs(
            animationController: _animationController,
          ),
        ],
      ),
    );
  }
}

class LoginOptions extends StatelessWidget {
  final AnimationController animationController;

  LoginOptions({
    @required this.animationController,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          right: 0,
          child: SlideTransition(
            position: Tween<Offset>(begin: Offset.zero, end: Offset(0, -0.50))
                .animate(animationController),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.9),
                    BlendMode.dstATop,
                  ),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0)),
                ),
              ),
            ),
          ),
        ),
        SlideTransition(
          position: Tween<Offset>(
            begin: Offset.zero,
            end: Offset(0, -1),
          ).animate(animationController),
          child: FadeTransition(
            opacity: Tween(begin: 1.0, end: 0.0).animate(animationController),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 170),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        child: Column(
                          children: <Widget>[
                            SvgPicture.asset(
                              'images/logo.svg',
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 18),
                              child: Text(
                                'Seja Bem-Vindo',
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 2,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Text(
                              'Faça seu Login ou\n Cadastre-se no Sistema.',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                letterSpacing: 1.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 60,
                      child: RaisedButton(
                        onPressed: () {
                          animationController.forward();
                        },
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Faça seu Login',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(FeatherIcons.mail)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 60,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Login com o Google',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                height: 24,
                                width: 24,
                                child:
                                    SvgPicture.asset('images/google_icon.svg'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class LoginInputs extends StatelessWidget {
  final AnimationController animationController;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginInputs({@required this.animationController});

  _textField({String title, bool isPassword}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        textAlign: TextAlign.center,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: title,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[500])),
          labelStyle: TextStyle(
            color: Colors.grey[400],
            fontWeight: FontWeight.w100,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(0, 1),
        end: Offset.zero,
      ).animate(animationController),
      child: FadeTransition(
        opacity: Tween(begin: 0.0, end: 1.0).animate(animationController),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        animationController.reverse();
                      },
                      color: Colors.white,
                      shape: CircleBorder(),
                      child: Icon(FeatherIcons.x),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 21),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(style: GoogleFonts.lato(), children: [
                          TextSpan(
                            text:
                                'Realize seus empréstimos e controle suas finanças com o ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          TextSpan(
                            text: 'PagueFácil.',
                            style: TextStyle(
                              color: Theme.of(context).buttonColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          _textField(title: 'Usuário', isPassword: false),
                          _textField(title: 'Senha', isPassword: true),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 21, bottom: 32),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 60,
                        child: RaisedButton(
                          onPressed: () =>
                              Modular.to.pushReplacementNamed('/home'),
                          color: Theme.of(context).buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: InkWell(
                        onTap: () {},
                        child: RichText(
                          text: TextSpan(style: GoogleFonts.lato(), children: [
                            TextSpan(
                              text: 'Primeira vez no Sistema? ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'Cadastre-se.',
                              style: TextStyle(
                                  color: Theme.of(context).buttonColor),
                            )
                          ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
