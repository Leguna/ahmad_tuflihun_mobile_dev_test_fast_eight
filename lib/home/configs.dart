import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import 'models/icon_menu/icon_menu_mdl.dart';

final List<IconMenuMdl> menus = [
  IconMenuMdl(
    title: 'Urun',
    icon: Assets.svgs.people,
    badge: 'New',
  ),
  IconMenuMdl(
    title: 'Pembiayaan Porsi Haji',
    icon: Assets.svgs.muslim,
  ),
  IconMenuMdl(
    title: 'Financial Check Up',
    icon: Assets.svgs.note,
  ),
  IconMenuMdl(
    title: 'Asuransi Mobil',
    icon: Assets.svgs.car,
  ),
  IconMenuMdl(
    title: 'Asuransi Properti',
    icon: Assets.svgs.home,
  ),
];
final List<IconMenuMdl> categories = [
  IconMenuMdl(
    title: 'Hobi',
    icon: Assets.svgs.hobby,
  ),
  IconMenuMdl(
    title: 'Merchandise',
    icon: Assets.svgs.merch,
  ),
  IconMenuMdl(
    title: 'Gaya Hidup Sehat',
    icon: Assets.svgs.health,
  ),
  IconMenuMdl(
    title: 'Konseling & Rohani',
    icon: Assets.svgs.chat,
  ),
  IconMenuMdl(
    title: 'Self Development',
    icon: Assets.svgs.brain,
  ),
  IconMenuMdl(
    title: 'Perencanaan Keuangan',
    icon: Assets.svgs.card,
  ),
  IconMenuMdl(
    title: 'Konsultasi Medis',
    icon: Assets.svgs.mask,
  ),
  IconMenuMdl(
    title: 'Lihat Semua',
    icon: Assets.svgs.all,
  ),
];
final colors = [
  Colors.amber,
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
];
