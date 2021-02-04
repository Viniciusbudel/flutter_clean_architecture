import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/ui/pages/pages.dart';

import '../../components/components.dart';

class LoginPage extends StatelessWidget {
  final LoginPresenter presenter;

  LoginPage(this.presenter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LoginHeader(),
            Headline1(
              text: 'Login',
            ),
            Padding(
              padding: EdgeInsets.all(32),
              child: Form(
                  child: Column(
                children: [
                  StreamBuilder<String>(
                      stream: presenter.emailErrorStream,
                      builder: (context, snapshot) {
                        return TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            errorText: snapshot.data?.isEmpty == true ? null : snapshot.data,
                            icon: Icon(
                              Icons.email,
                              color: Theme.of(context).primaryColorLight,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          onChanged: presenter.validateEmail,
                        );
                      }),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 32),
                    child: StreamBuilder<String>(
                      stream: presenter.passwordErrorStream,
                      builder: (context, snapshot) {
                        return TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            errorText: snapshot.data?.isEmpty == true ? null : snapshot.data,

                            icon: Icon(
                              Icons.lock,
                              color: Theme.of(context).primaryColorLight,
                            ),
                          ),
                          obscureText: true,
                          onChanged: presenter.validatePassword,
                        );
                      }
                    ),
                  ),
                  RaisedButton(
                    onPressed: null,
                    child: Text("Entrar".toUpperCase()),
                  ),
                  FlatButton.icon(
                    onPressed: () {},
                    label: Text('Criar Conta'),
                    icon: Icon(Icons.person),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
