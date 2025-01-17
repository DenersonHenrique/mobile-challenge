import 'package:flutter/material.dart';
import 'package:mobile_challenge/app/common/constants/app_string.dart';
import 'package:mobile_challenge/app/modules/users_search/domain/entity/user_list_entity.dart';
import 'package:mobile_challenge/app/modules/users_search/ui/widgets/user_list_item_widget.dart';

class UserListWidget extends StatefulWidget {
  final bool showFavoriteOnly;
  final UserListEntity userList;
  const UserListWidget({
    Key? key,
    required this.userList,
    required this.showFavoriteOnly,
  }) : super(key: key);

  @override
  _UserListWidgetState createState() => _UserListWidgetState();
}

class _UserListWidgetState extends State<UserListWidget> {
  @override
  Widget build(BuildContext context) => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: widget.userList.userListEntity!.isNotEmpty
                  ? ListView.builder(
                      itemCount: widget.userList.userListEntity!.length,
                      itemBuilder: (ctx, index) {
                        final user = widget.userList.userListEntity![index];
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                          ),
                          child: UserItemWidget(
                            user: user,
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        AppString.emptyListText,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
            ),
          ],
        ),
      );
}
