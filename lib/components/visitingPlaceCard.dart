import 'package:flutter/material.dart';

class VistingPlaceCard extends StatefulWidget {
  const VistingPlaceCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });
  final String? title;
  final String? description;
  final String? image;

  @override
  State<VistingPlaceCard> createState() => _VistingPlaceCardState();
}

class _VistingPlaceCardState extends State<VistingPlaceCard> {
  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
          child: Row(
            spacing: 16.0,
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Hero(
                    tag: widget!.image!,
                    transitionOnUserGestures: true,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        widget!.image!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget!.title ?? 'Grand Canyon',
                      style:
                      Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(

                        widget!.description??
                        'Arizona, USA',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: Theme.of(context).textTheme.bodyLarge,
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
