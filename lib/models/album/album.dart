import 'package:hive/hive.dart';
part 'album.g.dart';

@HiveType(typeId: 1)
class Album {
  @HiveField(0)
  final String wrapperType;
  @HiveField(1)
  final String collectionType;
  @HiveField(2)
  final int artistId;
  @HiveField(3)
  final int collectionId;
  @HiveField(4)
  final int? amgArtistId;
  @HiveField(5)
  final String artistName;
  @HiveField(6)
  final String collectionName;
  @HiveField(7)
  final String collectionCensoredName;
  @HiveField(8)
  final String artistViewUrl;
  @HiveField(9)
  final String collectionViewUrl;
  @HiveField(10)
  final String artworkUrl60;
  @HiveField(11)
  final String artworkUrl100;
  @HiveField(12)
  final double? collectionPrice;
  @HiveField(13)
  final String collectionExplicitness;
  @HiveField(14)
  final int trackCount;
  @HiveField(15)
  final String copyright;
  @HiveField(16)
  final String country;
  @HiveField(17)
  final String currency;
  @HiveField(18)
  final String releaseDate;
  @HiveField(19)
  final String primaryGenreName;

  Album(
      this.wrapperType,
      this.collectionType,
      this.artistId,
      this.collectionId,
      this.amgArtistId,
      this.artistName,
      this.collectionName,
      this.collectionCensoredName,
      this.artistViewUrl,
      this.collectionViewUrl,
      this.artworkUrl60,
      this.artworkUrl100,
      this.collectionPrice,
      this.collectionExplicitness,
      this.trackCount,
      this.copyright,
      this.country,
      this.currency,
      this.releaseDate,
      this.primaryGenreName);

  // tojson
  Map<String, dynamic> toJson() => {
        'wrapperType': wrapperType,
        'collectionType': collectionType,
        'artistId': artistId,
        'collectionId': collectionId,
        'amgArtistId': amgArtistId,
        'artistName': artistName,
        'collectionName': collectionName,
        'collectionCensoredName': collectionCensoredName,
        'artistViewUrl': artistViewUrl,
        'collectionViewUrl': collectionViewUrl,
        'artworkUrl60': artworkUrl60,
        'artworkUrl100': artworkUrl100,
        'collectionPrice': collectionPrice,
        'collectionExplicitness': collectionExplicitness,
        'trackCount': trackCount,
      };
//fromjson
  factory Album.fromJson(Map<String, dynamic> json) => Album(
        json['wrapperType'] as String,
        json['collectionType'] as String,
        json['artistId'] as int,
        json['collectionId'] as int,
        json['amgArtistId'] as int?,
        json['artistName'] as String,
        json['collectionName'] as String,
        json['collectionCensoredName'] as String,
        json['artistViewUrl'] as String,
        json['collectionViewUrl'] as String,
        json['artworkUrl60'] as String,
        json['artworkUrl100'] as String,
        json['collectionPrice'] as double?,
        json['collectionExplicitness'] as String,
        json['trackCount'] as int,
        json['copyright'] as String,
        json['country'] as String,
        json['currency'] as String,
        json['releaseDate'] as String,
        json['primaryGenreName'] as String,
      );

  @override
  String toString() {
    return 'Album{wrapperType: $wrapperType, collectionType: $collectionType, artistId: $artistId, collectionId: $collectionId, amgArtistId: $amgArtistId, artistName: $artistName, collectionName: $collectionName, collectionCensoredName: $collectionCensoredName, artistViewUrl: $artistViewUrl, collectionViewUrl: $collectionViewUrl, artworkUrl60: $artworkUrl60, artworkUrl100: $artworkUrl100, collectionPrice: $collectionPrice, collectionExplicitness: $collectionExplicitness, trackCount: $trackCount, copyright: $copyright, country: $country, currency: $currency, releaseDate: $releaseDate, primaryGenreName: $primaryGenreName}';
  }
}
