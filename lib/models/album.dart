class Album {
  final String wrapperType;
  final String collectionType;
  final int artistId;
  final int collectionId;
  final int? amgArtistId;
  final String artistName;
  final String collectionName;
  final String collectionCensoredName;
  final String artistViewUrl;
  final String collectionViewUrl;
  final String artworkUrl60;
  final String artworkUrl100;
  final double? collectionPrice;
  final String collectionExplicitness;
  final int trackCount;
  final String copyright;
  final String country;
  final String currency;
  final String releaseDate;
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
