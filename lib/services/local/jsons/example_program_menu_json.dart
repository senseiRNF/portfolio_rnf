class ExampleProgramMenuJson {
  String? title;
  String? iconPath;
  Function? onPressed;

  ExampleProgramMenuJson({
    this.title,
    this.iconPath,
    this.onPressed,
  });

  executeOnPressed() => onPressed != null
      ? onPressed!()
      : {};
}