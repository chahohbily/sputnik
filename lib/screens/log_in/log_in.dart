import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:redux/redux.dart';
import 'package:sputnik_test_task/models/followers_model.dart';
import 'package:sputnik_test_task/models/repositories_model.dart';
import 'package:sputnik_test_task/models/user_model.dart';
import 'package:sputnik_test_task/pj_utils/pj_colors.dart';
import 'package:sputnik_test_task/pj_widgets/pj_formfield.dart';
import 'package:sputnik_test_task/pj_utils/pj_styles.dart';
import 'package:sputnik_test_task/pj_utils/pj_text.dart';
import 'package:sputnik_test_task/pj_widgets/pj_button.dart';
import 'package:sputnik_test_task/reduce/reduce.dart';
import 'package:sputnik_test_task/screens/log_in/network/login_requests.dart';
import 'package:sputnik_test_task/screens/main_screen/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final store = Store<String>(errorReducer, initialState: '');
  final TextEditingController _nameController = TextEditingController();
  UserModel? user;
  List<FollowersModel>? followers;
  List<RepositoriesModel>? repositories;
  bool isActiveButton = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: StoreProvider<String>(
            store: store,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: StoreConnector<String, String>(
                converter: (store) => store.state.toString(),
                builder: (context, count) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 45.h),
                      SizedBox(
                        height: 28.h,
                        width: 28.w,
                        child: Center(
                          child:
                              SvgPicture.asset('assets/icons/arrow_left.svg'),
                        ),
                      ),
                      SizedBox(height: 22.h),
                      PjText(
                        text: 'GitHub social',
                        style: PjStyles.bold34,
                        boxHeight: 51.h,
                        boxWidth: 338.w,
                      ),
                      PjText(
                        text: 'Enter nickname on github',
                        style: PjStyles.medium17,
                        boxHeight: 37.h,
                        boxWidth: 338.w,
                        isCenterAlignment: false,
                      ),
                      SizedBox(height: 46.h),
                      PjFormField(
                        labelText: 'Nickname',
                        controller: _nameController,
                        onChange: (text) {
                          if (text.isNotEmpty) {
                            setState(() {
                              isActiveButton = true;
                            });
                          }
                          if (isActiveButton && text.isEmpty) {
                            setState(() {
                              isActiveButton = false;
                            });
                          }
                        },
                      ),
                      if (store.state == 'Error') ...[
                        SizedBox(height: 40.h),
                        Center(
                          child: Container(
                            width: 100.h,
                            height: 100.h,
                            decoration: BoxDecoration(
                              color: PjColors.pink,
                              borderRadius: BorderRadius.circular(50.w),
                            ),
                            child: Center(
                              child:
                                  SvgPicture.asset('assets/icons/warning.svg'),
                            ),
                          ),
                        ),
                        SizedBox(height: 17.h),
                        Center(
                          child: PjText(
                            text: 'User with this nickname \nnot found!',
                            style: PjStyles.medium24,
                            boxHeight: 73.h,
                            boxWidth: 290.w,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                      if (store.state == 'Loading') ...[
                        Padding(
                          padding: EdgeInsets.only(top: 50.h),
                          child:
                              const Center(child: CupertinoActivityIndicator()),
                        ),
                      ],
                      const Spacer(),
                      Center(
                        child: StoreConnector<String, VoidCallback>(
                            converter: (store) {
                          return () => store.dispatch(Actions.Error);
                        }, builder: (context, callback) {
                          return PjButton(
                            isActive: isActiveButton,
                            callback: () async {
                              store.dispatch(Actions.Loading);
                              user = await getUserData(_nameController.text);
                              followers = await getFollowers(
                                  _nameController.text, user!.followers!);
                              repositories = await getRepositories(
                                  _nameController.text, user!.followers!);
                              log(followers![0].avatarUrl.toString());
                              log(repositories!.length.toString());
                              if (user!.name == null) {
                                store.dispatch(Actions.Error);
                              } else {
                                pushNext(user!, followers!, repositories!);
                              }
                            },
                            text: 'Search',
                          );
                        }),
                      ),
                      SizedBox(height: 25.h),
                      Center(
                        child: SizedBox(
                          height: 15.h,
                          width: 300.w,
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: 'By signing in, I agree with ',
                                style: PjStyles.medium13,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Terms of Use\n',
                                    style: PjStyles.medium13
                                        .copyWith(color: PjColors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          height: 25.h,
                          width: 300.w,
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: ' and ',
                                style: PjStyles.medium13,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: PjStyles.medium13
                                        .copyWith(color: PjColors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 44.h),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  void pushNext(UserModel user, List<FollowersModel> followers,
      List<RepositoriesModel> repositories) {
    Navigator.of(context).pushAndRemoveUntil(
      CupertinoPageRoute(builder: (context) {
        return MainScreen(
          user: user,
          followers: followers,
          repositories: repositories,
        );
      }),
      (route) => false,
    );
  }
}

enum Actions {
  Loaded,
  Error,
  Loading,
}
