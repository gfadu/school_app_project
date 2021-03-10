import 'package:flutter/material.dart';
import '../constants/color_constants.dart';

Widget studentClassContainer() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    decoration: BoxDecoration(
      color: appBlueColor,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(
      'Class VII A',
      style: TextStyle(
        color: Colors.white,
        fontSize: 10,
      ),
    ),
  );
}

class ElevatedIconContainer extends StatelessWidget {
  const ElevatedIconContainer({this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}

class AccountDetailsRow extends StatelessWidget {
  const AccountDetailsRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Hero(
          tag: 'imagePageTransition',
          child: Image.asset('assets/profile__img.png'),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pratibha Yadav'),
            SizedBox(
              height: 5,
            ),
            studentClassContainer()
          ],
        ),
        Spacer(),
        ElevatedIconContainer(
          icon: Icons.arrow_drop_down,
        )
      ],
    );
  }
}
