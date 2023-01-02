part of '../code_scan_view.dart';

class _InfoShow extends StatelessWidget {
  const _InfoShow({
    Key? key,
    required this.data,
  }) : super(key: key);

  final CodeScanState data;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Obx(() {
          return ListView.builder(
            itemCount: data.operateInfoList.length,
            controller: data.infoController,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Text(
                  data.operateInfoList[index],
                  style: const TextStyle(color: Colors.white),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
