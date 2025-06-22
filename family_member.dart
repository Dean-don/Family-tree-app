class FamilyMember {
  final String id;
  final String name;
  final String? gender;
  final DateTime? birthDate;
  final String? partnerId;
  final String? parentId;
  final List<String> childrenIds;

  FamilyMember({
    required this.id,
    required this.name,
    this.gender,
    this.birthDate,
    this.partnerId,
    this.parentId,
    this.childrenIds = const [],
  });
}
