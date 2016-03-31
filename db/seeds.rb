
if true
  albums = Album.create([
    { title: 'Rubber Soul', 
      artist_id: 1,
      genre_id: 1 }
    { title: 'Revolver',
      artist_id: 1,
      genre_id: 1 }
    { title: 'Exile on Main Street',
      artist_id: 2,
      genre_id: 2 }
    { title: 'Between the Buttons',
      artist_id: 2,
      genre_id: 2 }
    { title: 'Something Else',
      artist_id: 3,
      genre_id: 3 }
    { title: 'Village Green Preservation Society',
      artist_id: 3,
      genre_id: 3 }
    { title: 'Aladdin Sane',
      artist_id: 4,
      genre_id:  5 }
    { title: 'The Rise and Fall of Ziggy Stardust',
      artist_id: 4,
      genre_id: 6 }
    { title: 'Plague Soundscapes',
      artist_id: 5,
      genre_id: 7 }
    { title: 'Safety Second, Body Last',
      artist_id: 5,
      genre_id: 8 }
    { title: 'Burn Piano Island, Burn',
      artist_id: 6,
      genre_id: 9 }
    { title: 'Young Machetes',
      artist_id: 6,
      genre_id: 10 }
    { title: 'Blood Visions',
      artist_id: 7,
      genre_id: 11 }
    { title: 'Watch Me Fall',
      artist_id: 7,
      genre_id: 12 }
    { title: 'Worship and Tribute',
      artist_id: 8,
      genre_id: 13 }
    { title: 'Fresh Fruit for Rotting Vegetables',
      artist_id: 9,
      genre_id: 14 }
    { title: 'Kind of Blue',
      artist_id: 10,
      genre_id: 15 }
    { title: 'Bitches Brew',
      artist_id: 10,
      genre_id: 16 }
    { title: 'The Builders and the Butchers',
      artist_id: 11,
      genre_id: 17 }
    { title: 'Western Medicine',
      artist_id: 11,
      genre_id: 18 }
    ])

  releases = Release.create([
    { album_id: 1,
      format_id: 1,
      release_date: 1965 }
    { album_id: 2,
      format_id: 2,
      release_date: 1966 }
    { album_id: 3,
      format_id: 3,
      release_date: 1972 }
    { album_id: 4,
      format_id: 4,
      release_date: 1967 }
    { album_id: 5,
      format_id: 5,
      release_date: 1967 }
    { album_id: 6,
      format_id: 1,
      release_date: 1968 }
    { album_id: 7,
      format_id: 2,
      release_date: 1923 }
    { album_id: 8,
      format_id: 3,
      release_date: 1937 }
    { album_id: 9,
      format_id: 4,
      release_date: 1946 }
    { album_id: 10,
      format_id: 5,
      release_date: 1955 }
    { album_id: 11,
      format_id: 1,
      release_date: 1972 }
    { album_id: 12,
      format_id: 2,
      release_date: 1981 }
    { album_id: 13,
      format_id: 3,
      release_date: 1994 }
    { album_id: 14,
      format_id: 4,
      release_date: 2001 }
    { album_id: 15,
      format_id: 5,
      release_date: 2011 }
    { album_id: 16,
      format_id: 1,
      release_date: 2005 }
    { album_id: 17,
      format_id: 2,
      release_date: 2015 }
    { album_id: 18,
      format_id: 3,
      release_date: 1988 }
    { album_id: 19,
      format_id: 4,
      release_date: 1999 }
    { album_id: 20,
      format_id: 5,
      release_date: 1932 }
    ])
    

  areas = Area.create([
    { name: 'Omaha' }, 
    { name: 'Lincoln' }
    { name: 'Grand Island' }
    { name: 'Kearney' }
    { name: 'Columbus' }
    { name: 'North Platte' }
    { name: 'Scottsbluff' }
    { name: 'McCook' }
    { name: 'Bellevue' }
    { name: 'Fremont' }
    { name: 'Hastings' }
    { name: 'Norfolk' }
    { name: 'York' }
    { name: 'Lexington' }
    { name: 'Wayne' }
    { name: 'Broken Bow' }
    { name: 'Valentine' }
    { name: 'Ord' }
    { name: 'Imperial' }
    ])

  artists = Artist.create([
    { name: 'The Beatles'
      bio: 'England and stuff'
      area_id: 1
      start_year: 1962
      end_year: 1970 }
    { name: 'The Rolling Stones'
      bio: 'Drugs and stuff'
      area_id: 2
      start_year: 1961
      end_year:  }
    { name: 'The Kinks'
      bio: 'Fights and stuff'
      area_id: 2
      start_year: 1960
      end_year: 1985 }
    { name: 'David Bowie'
      bio: 'Mind expansion and stuff'
      area_id: 3
      start_year: 1964
      end_year: 2016 }
    { name: 'The Locust'
      bio: 'Being fast and stuff'
      area_id: 4
      start_year: 1995
      end_year:  }
    { name: 'The Blood Brothers'
      bio: 'Being loud and stuff'
      area_id: 5
      start_year: 1997
      end_year: 2007 }
    { name: 'Jay Reatard'
      bio: 'DIY and stuff'
      area_id: 6
      start_year: 1998
      end_year: 2010 }
    { name: 'Glassjaw'
      bio: 'Post-hardcore and stuff'
      area_id: 7
      start_year: 1994
      end_year:  }
    { name: 'Dead Kennedys'
      bio: 'Controversy and stuff'
      area_id: 8
      start_year: 1978
      end_year: 1986 }
    { name: 'Miles Davis'
      bio: 'Being influential and stuff'
      area_id: 9
      start_year: 1944
      end_year: 1991 }
    { name: 'The Builders and the Butchers'
      bio: 'Punk and Folk and stuff'
      area_id: 10
      start_year: 2006
      end_year:  }
    ])
    

  formats = Format.create([
    { name: 'LP' }, 
    { name: 'EP' }
    { name: 'Single' }
    { name: '7-Inch Single' }
    { name: '10-Inch Single' }
    { name: '12-Inch Single' }
    ])

  genres = Genre.create([
    { name: 'Rock' }, 
    { name: 'Pop' }
    { name: 'Rap/Hip Hop' }
    { name: 'Soul/R&B' }
    { name: 'Garage' }
    { name: 'Indie' }
    { name: 'Punk' }
    { name: 'Hardcore' } 
    { name: 'Metal' }
    { name: 'Noise' } 
    { name: 'Ska' }
    { name: 'Reggae' }
    { name: 'Folk' }
    { name: 'Bluegrass' }
    { name: 'Country' }
    { name: 'Americana' }
    { name: 'Rockabilly' }
    { name: 'Electronic' }
    { name: 'Jazz' }
    { name: 'Swing' }
    { name: 'Blues' }
    { name: 'Classical' }
    { name: 'New Age' }
    { name: 'Instrumental' }
    { name: 'Latin' }
    { name: 'World' }
    { name: 'Christian' }
    ])

  instruments = Instrument.create([
    { name: 'Guitar' }, 
    { name: 'Vocals' }
    { name: 'Bass' }
    { name: 'Drums' }
    { name: 'Keyboards' }
    { name: 'Violin' }
    { name: 'Banjo' }
    { name: 'Trumpet' }
    { name: 'Trombone' }
    { name: 'Sax' }
    { name: 'Multi-Instrumentalist' }
    { name: 'Percussion' 
    { name: 'Other' }
    ])
end


