// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_card_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$skillCardViewModelHash() =>
    r'65ae48306cd78b139d7c54d91a74f44dd8b0f57a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$SkillCardViewModel
    extends BuildlessAutoDisposeNotifier<SkillCardPresentationModel> {
  late final SkillItem skill;

  SkillCardPresentationModel build(
    SkillItem skill,
  );
}

/// See also [SkillCardViewModel].
@ProviderFor(SkillCardViewModel)
const skillCardViewModelProvider = SkillCardViewModelFamily();

/// See also [SkillCardViewModel].
class SkillCardViewModelFamily extends Family<SkillCardPresentationModel> {
  /// See also [SkillCardViewModel].
  const SkillCardViewModelFamily();

  /// See also [SkillCardViewModel].
  SkillCardViewModelProvider call(
    SkillItem skill,
  ) {
    return SkillCardViewModelProvider(
      skill,
    );
  }

  @override
  SkillCardViewModelProvider getProviderOverride(
    covariant SkillCardViewModelProvider provider,
  ) {
    return call(
      provider.skill,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'skillCardViewModelProvider';
}

/// See also [SkillCardViewModel].
class SkillCardViewModelProvider extends AutoDisposeNotifierProviderImpl<
    SkillCardViewModel, SkillCardPresentationModel> {
  /// See also [SkillCardViewModel].
  SkillCardViewModelProvider(
    SkillItem skill,
  ) : this._internal(
          () => SkillCardViewModel()..skill = skill,
          from: skillCardViewModelProvider,
          name: r'skillCardViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$skillCardViewModelHash,
          dependencies: SkillCardViewModelFamily._dependencies,
          allTransitiveDependencies:
              SkillCardViewModelFamily._allTransitiveDependencies,
          skill: skill,
        );

  SkillCardViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.skill,
  }) : super.internal();

  final SkillItem skill;

  @override
  SkillCardPresentationModel runNotifierBuild(
    covariant SkillCardViewModel notifier,
  ) {
    return notifier.build(
      skill,
    );
  }

  @override
  Override overrideWith(SkillCardViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SkillCardViewModelProvider._internal(
        () => create()..skill = skill,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        skill: skill,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SkillCardViewModel,
      SkillCardPresentationModel> createElement() {
    return _SkillCardViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SkillCardViewModelProvider && other.skill == skill;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, skill.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SkillCardViewModelRef
    on AutoDisposeNotifierProviderRef<SkillCardPresentationModel> {
  /// The parameter `skill` of this provider.
  SkillItem get skill;
}

class _SkillCardViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<SkillCardViewModel,
        SkillCardPresentationModel> with SkillCardViewModelRef {
  _SkillCardViewModelProviderElement(super.provider);

  @override
  SkillItem get skill => (origin as SkillCardViewModelProvider).skill;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
