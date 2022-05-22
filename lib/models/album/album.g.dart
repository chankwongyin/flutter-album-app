// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AlbumAdapter extends TypeAdapter<Album> {
  @override
  final int typeId = 1;

  @override
  Album read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Album(
      fields[0] as String,
      fields[1] as String,
      fields[2] as int,
      fields[3] as int,
      fields[4] as int?,
      fields[5] as String,
      fields[6] as String,
      fields[7] as String,
      fields[8] as String,
      fields[9] as String,
      fields[10] as String,
      fields[11] as String,
      fields[12] as double?,
      fields[13] as String,
      fields[14] as int,
      fields[15] as String,
      fields[16] as String,
      fields[17] as String,
      fields[18] as String,
      fields[19] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Album obj) {
    writer
      ..writeByte(20)
      ..writeByte(0)
      ..write(obj.wrapperType)
      ..writeByte(1)
      ..write(obj.collectionType)
      ..writeByte(2)
      ..write(obj.artistId)
      ..writeByte(3)
      ..write(obj.collectionId)
      ..writeByte(4)
      ..write(obj.amgArtistId)
      ..writeByte(5)
      ..write(obj.artistName)
      ..writeByte(6)
      ..write(obj.collectionName)
      ..writeByte(7)
      ..write(obj.collectionCensoredName)
      ..writeByte(8)
      ..write(obj.artistViewUrl)
      ..writeByte(9)
      ..write(obj.collectionViewUrl)
      ..writeByte(10)
      ..write(obj.artworkUrl60)
      ..writeByte(11)
      ..write(obj.artworkUrl100)
      ..writeByte(12)
      ..write(obj.collectionPrice)
      ..writeByte(13)
      ..write(obj.collectionExplicitness)
      ..writeByte(14)
      ..write(obj.trackCount)
      ..writeByte(15)
      ..write(obj.copyright)
      ..writeByte(16)
      ..write(obj.country)
      ..writeByte(17)
      ..write(obj.currency)
      ..writeByte(18)
      ..write(obj.releaseDate)
      ..writeByte(19)
      ..write(obj.primaryGenreName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlbumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
