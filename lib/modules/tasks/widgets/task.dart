import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wildtodo/core/core_utils.dart';

enum TaskStatus {
  undone,
  success,
  failed,
}

class Task extends StatelessWidget {
  const Task({
    super.key,
    required this.status,
    required this.isPrivate,
    required this.category,
    required this.isStarred,
    required this.time,
  });

  final TaskStatus status;
  final String time;
  final String category;
  final bool isPrivate;
  final bool isStarred;

  Widget _leading(BuildContext context) {
    if (isPrivate) {
      return Padding(
          padding: const EdgeInsets.all(12),
          child: Icon(
            CupertinoIcons.eye_slash_fill,
            color: context.theme.palette.grayscale.g5,
          ));
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isPrivate ? Colors.transparent : context.theme.palette.status.negative.vivid,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SvgPicture.asset('assets/icons/task.svg'),
    );
  }

  Color _backgroundColor(BuildContext context) {
    if (status == TaskStatus.undone) return context.theme.palette.grayscale.g4;

    return context.theme.palette.grayscale.g3;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12, right: 10),
      decoration: BoxDecoration(
        color: _backgroundColor(context),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          _leading(context),
          const SizedBox(width: 10),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Learn 655 words at summer',
                  textAlign: TextAlign.start,
                  style: context.theme.typeface.body2.medium.copyWith(
                    color: context.theme.palette.grayscale.g6,
                  ),
                ),
                const SizedBox(height: 5),
                _Subtitle(
                  categoryIcon: SvgPicture.asset(
                    width: 12,
                    'assets/icons/task.svg',
                    colorFilter: ColorFilter.mode(
                      context.theme.palette.grayscale.g5,
                      BlendMode.srcIn,
                    ),
                  ),
                  category: category,
                  isStarred: isStarred,
                  time: time,
                )
              ],
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: _TaskStatusWidget(status: status),
          ),
        ],
      ),
    );
  }
}

class _TaskStatusWidget extends StatelessWidget {
  const _TaskStatusWidget({
    required this.status,
  });

  final TaskStatus status;

  Color _backgroundColor(BuildContext context) {
    if (status == TaskStatus.failed) return context.theme.palette.status.negative.vivid;
    if (status == TaskStatus.success) return context.theme.palette.status.positive.vivid;

    return Colors.transparent;
  }

  Widget? _child(BuildContext context) {
    if (status == TaskStatus.failed) {
      return Icon(
        Icons.clear,
        size: 18,
        color: context.theme.palette.grayscale.g6,
      );
    }

    if (status == TaskStatus.success) {
      return Icon(
        Icons.check,
        size: 20,
        color: context.theme.palette.grayscale.g6,
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        border: status == TaskStatus.undone ? Border.all(color: context.theme.palette.grayscale.g5) : null,
        borderRadius: const BorderRadius.all(Radius.circular(100)),
        color: _backgroundColor(context),
      ),
      child: Center(child: _child(context)),
    );
  }
}

class _Subtitle extends StatelessWidget {
  const _Subtitle({
    this.category = '',
    this.isStarred = false,
    this.time = '',
    this.categoryIcon,
  });

  final String time;
  final String category;
  final bool isStarred;
  final Widget? categoryIcon;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        _SubtitleItem(
          title: category,
          icon: categoryIcon,
        ),
        _SubtitleItem(
          title: time,
          icon: Icon(
            CupertinoIcons.bell_fill,
            size: 14,
            color: context.theme.palette.grayscale.g5,
          ),
        ),
        if (isStarred)
          Icon(
            Icons.star,
            size: 14,
            color: context.theme.palette.accent.secondary.vivid,
          ),
      ],
    );
  }
}

class _SubtitleItem extends StatelessWidget {
  const _SubtitleItem({
    this.title = '',
    required this.icon,
  });

  final String title;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) icon!,
        const SizedBox(width: 4),
        Text(
          title,
          style: TextStyle(
            color: context.theme.palette.grayscale.g5,
          ),
        ),
      ],
    );
  }
}
