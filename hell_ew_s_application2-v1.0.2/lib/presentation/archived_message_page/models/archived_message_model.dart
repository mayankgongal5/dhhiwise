import 'package:equatable/equatable.dart';
import 'listavatar_item_model.dart';

// ignore: must_be_immutable
class ArchivedMessageModel extends Equatable {
  ArchivedMessageModel({this.listavatarItemList = const []});

  List<ListavatarItemModel> listavatarItemList;

  ArchivedMessageModel copyWith(
      {List<ListavatarItemModel>? listavatarItemList}) {
    return ArchivedMessageModel(
      listavatarItemList: listavatarItemList ?? this.listavatarItemList,
    );
  }

  @override
  List<Object?> get props => [listavatarItemList];
}
