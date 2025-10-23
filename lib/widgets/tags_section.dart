// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:to_do_list_app/widgets/add_tags.dart';
import 'package:to_do_list_app/widgets/tag_field.dart';
import 'package:to_do_list_app/widgets/tag_widget.dart';

class TagsSection extends StatefulWidget {
  const TagsSection({super.key, required this.tags});
  final List<String> tags;

  @override
  State<TagsSection> createState() => _TagsSectionState();
}

class _TagsSectionState extends State<TagsSection> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        ...widget.tags.map(
          (tag) => TagWidget(
            tagText: tag,
            onTap: () {
              widget.tags.remove(tag);
              setState(() {});
            },
          ),
        ),
        isActive
            ? TagField(
                onSubmitted: (value) {
                  setState(() {
                    if (value.trim().isNotEmpty) {
                      widget.tags.add(value);
                      isActive = false;
                    }
                  });
                },
              )
            : AddTags(
                isActive: isActive,
                onTap: () {
                  setState(() {
                    isActive = true;
                  });
                },
              ),
      ],
    );
  }
}
