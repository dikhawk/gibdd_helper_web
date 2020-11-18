enum NavigationMap {
  ROOT,
  MAIN,
  TEMPLATES_LIST,
  TEMPLATE_EDITOR,
  POLICY,
  ERROR
}

extension NavigationMapExtension on NavigationMap {
  String get path {
    switch (this) {
      case NavigationMap.ROOT:
        return "/";
      case NavigationMap.MAIN:
        return "/main";
      case NavigationMap.TEMPLATES_LIST:
        return "/templates-list";
      case NavigationMap.TEMPLATE_EDITOR:
        return "/template-editor";
      case NavigationMap.POLICY:
        return "/policy";
      case NavigationMap.ERROR:
        return "/error";
      default:
        return "";
    }
  }
}
