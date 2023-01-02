part of '../code_scan_view.dart';

class _SelectFile extends StatelessWidget {
  const _SelectFile({
    Key? key,
    required this.data,
    required this.onSelect,
    required this.onDragFile,
  }) : super(key: key);

  final CodeScanState data;

  final ParamVoidCallback onSelect;

  final ParamSingleCallback<DropDoneDetails> onDragFile;

  @override
  Widget build(BuildContext context) {
    return _buildBg(children: [
      //展示
      _buildShow(),

      //拖拽 & 选择文件 区域
      _buildSelect()
    ]);
  }

  Widget _buildShow() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "文件路径",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
              SelectionArea(child: Text(data.path.value)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelect() {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: DropTarget(
          onDragDone: (detail) => onDragFile(detail),
          child: InkWell(
            onTap: () => onSelect(),
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 330,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26, width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: const Text("点击选择文件 或者 \n拖拽文件到该区域"),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBg({required List<Widget> children}) {
    return Row(children: children);
  }
}
