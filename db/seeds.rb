
if true

  album_images = AlbumImage.create([
    { album_id: 1, 
      remote_cover_image_url: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRuKOTntgVlsj6o_ASwVYvkpR7a4GY0R_Kbr2aDuWzBbBCnyJn3FP9q1g' },
    { album_id: 2, 
      remote_cover_image_url: 'http://assets.rollingstone.com/assets/images/gallery/5bc7a62a92ccc1ddaa755290d3a97e567a62ec7b.jpg' },
    { album_id: 3, 
      remote_cover_image_url: 'https://upload.wikimedia.org/wikipedia/en/c/ca/ExileMainSt.jpg' },
    { album_id: 4, 
      remote_cover_image_url: 'https://upload.wikimedia.org/wikipedia/en/e/e5/BetweenthebuttonsUK.jpg' },
    { album_id: 5, 
      remote_cover_image_url: 'https://upload.wikimedia.org/wikipedia/en/f/ff/SomethingElseKinksCover.jpg' },
    { album_id: 6, 
      remote_cover_image_url: 'https://consequenceofsound.files.wordpress.com/2013/11/the-kinks-1000.jpg' },
    { album_id: 7, 
      remote_cover_image_url: 'http://41.media.tumblr.com/362eb28fd73deebc100bf0c7970ac642/tumblr_o0xizglz2A1spitb2o1_1280.jpg' },
    { album_id: 8, 
      remote_cover_image_url: 'https://upload.wikimedia.org/wikipedia/en/0/01/ZiggyStardust.jpg' },
    { album_id: 9, 
      remote_cover_image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e5/Plaguesoundscapes.jpg/220px-Plaguesoundscapes.jpg' },
    { album_id: 10, 
      remote_cover_image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/5/56/Safety_Second_Body_Last.jpg/220px-Safety_Second_Body_Last.jpg' },
    { album_id: 11, 
      remote_cover_image_url: 'https://images.rapgenius.com/f26e5f94cff389121e8c597f3d0aa2a4.1000x1000x1.jpg' },
    { album_id: 12, 
      remote_cover_image_url: 'https://s-media-cache-ak0.pinimg.com/736x/b5/c7/d5/b5c7d5add9e17a2ce8fc372e518050f4.jpg' },
    { album_id: 13, 
      remote_cover_image_url: 'http://i33.photobucket.com/albums/d61/madmcgregor/punkslime/51NT10KGMEL._SS500_.jpg' },
    { album_id: 14, 
      remote_cover_image_url: 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Jay_Reatard_Watch_Me_Fall.jpg/220px-Jay_Reatard_Watch_Me_Fall.jpg' },
    { album_id: 15, 
      remote_cover_image_url: 'http://vignette3.wikia.nocookie.net/lyricwiki/images/5/5d/Glassjaw_-_Worship_And_Tribute_Pre-Production_Demo.jpg/revision/latest?cb=20140831144839' },
    { album_id: 16, 
      remote_cover_image_url: 'http://rymimg.com/lk/f/l/1052f199c326f3adbff188f6ced2eab0/1255980.jpg' },
    { album_id: 17, 
      remote_cover_image_url: 'https://upload.wikimedia.org/wikipedia/en/9/9c/MilesDavisKindofBlue.jpg' },
    { album_id: 18, 
      remote_cover_image_url: 'https://upload.wikimedia.org/wikipedia/en/7/72/Bitches_brew.jpg' },
    { album_id: 19, 
      remote_cover_image_url: 'http://cdn.shopify.com/s/files/1/0383/4805/products/JB105_1024x1024.jpeg?v=1429679813' },
    { album_id: 20, 
      remote_cover_image_url: 'http://thefirenote.com/wp-content/uploads/2013/07/builders-butchers-western-medicine-cover.jpg' }
    ])
    
  albums = Album.create([
    { title: 'Rubber Soul', 
      artist_id: 1,
      genre_id: 1 },
    { title: 'Revolver',
      artist_id: 1,
      genre_id: 1 },
    { title: 'Exile on Main Street',
      artist_id: 2,
      genre_id: 2 },
    { title: 'Between the Buttons',
      artist_id: 2,
      genre_id: 2 },
    { title: 'Something Else',
      artist_id: 3,
      genre_id: 3 },
    { title: 'Village Green Preservation Society',
      artist_id: 3,
      genre_id: 3 },
    { title: 'Aladdin Sane',
      artist_id: 4,
      genre_id:  5 },
    { title: 'The Rise and Fall of Ziggy Stardust',
      artist_id: 4,
      genre_id: 6 },
    { title: 'Plague Soundscapes',
      artist_id: 5,
      genre_id: 7 },
    { title: 'Safety Second, Body Last',
      artist_id: 5,
      genre_id: 8 },
    { title: 'Burn Piano Island, Burn',
      artist_id: 6,
      genre_id: 9 },
    { title: 'Young Machetes',
      artist_id: 6,
      genre_id: 10 },
    { title: 'Blood Visions',
      artist_id: 7,
      genre_id: 11 },
    { title: 'Watch Me Fall',
      artist_id: 7,
      genre_id: 12 },
    { title: 'Worship and Tribute',
      artist_id: 8,
      genre_id: 13 },
    { title: 'Fresh Fruit for Rotting Vegetables',
      artist_id: 9,
      genre_id: 14 },
    { title: 'Kind of Blue',
      artist_id: 10,
      genre_id: 15 },
    { title: 'Bitches Brew',
      artist_id: 10,
      genre_id: 16 },
    { title: 'The Builders and the Butchers',
      artist_id: 11,
      genre_id: 17 },
    { title: 'Western Medicine',
      artist_id: 11,
      genre_id: 18 }
    ])

  areas = Area.create([
    { name: 'Omaha' }, 
    { name: 'Lincoln' },
    { name: 'Grand Island' },
    { name: 'Kearney' },
    { name: 'Columbus' },
    { name: 'North Platte' },
    { name: 'Scottsbluff' },
    { name: 'McCook' },
    { name: 'Bellevue' },
    { name: 'Fremont' },
    { name: 'Hastings' },
    { name: 'Norfolk' },
    { name: 'York' },
    { name: 'Lexington' },
    { name: 'Wayne' },
    { name: 'Broken Bow' },
    { name: 'Valentine' },
    { name: 'Ord' },
    { name: 'Imperial' }
    ])

  artist_images = ArtistImage.create([
    { artist_id: 1, 
      remote_image_2_url: 'http://www.apple.com/itunesaffiliates/beatles/beatles_300x250.jpg' },
    { artist_id: 2, 
      remote_image_2_url: 'http://assets.rollingstone.com/assets/images/list_container/100-greatest-rolling-stones-songs-20131015/stones-624-1381341116.jpg' },
    { artist_id: 3, 
      remote_image_2_url: 'http://i.dailymail.co.uk/i/pix/2014/10/24/1414109764217_wps_36_The_Kinks_Dave_Davies_Mic.jpg' },
    { artist_id: 4, 
      remote_image_2_url: 'http://www.slate.com/content/dam/slate/articles/arts/culturebox/2016/01/david-bowie/160111_CBOX_David-Bowie-08.jpg.CROP.promo-xlarge2.jpg' },
    { artist_id: 5, 
      remote_image_2_url: 'https://cdn.discogs.com/AYLO3X6OOJloDu7s7bFcJ7sDHY4=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb()/discogs-images/A-125425-1132046941.jpeg.jpg' },
    { artist_id: 6, 
      remote_image_2_url: 'http://www.mxdwn.com/wp-content/uploads/2014/08/bloodbrothers.jpg' },
    { artist_id: 7, 
      remote_image_2_url: 'https://consequenceofsound.files.wordpress.com/2014/03/jay-reatard.jpg' },
    { artist_id: 8, 
      remote_image_2_url: 'http://www.altpress.com/images/made/chrootimages/uploads/news/news_glassjaw_633_461_70_s_c1.jpg' },
    { artist_id: 9, 
      remote_image_2_url: 'https://i.ytimg.com/vi/ytoJAL20Rr8/maxresdefault.jpg' },
    { artist_id: 10, 
      remote_image_2_url: 'http://assets.rollingstone.com/assets/images/artists/miles-davis.jpg' },
    { artist_id: 11, 
      remote_image_2_url: 'http://thefirenote.com/wp-content/uploads/2013/07/buildersandbutchers-pic.jpg' }
    ])

  artists = Artist.create([
    { name: 'The Beatles',
      bio: 'England and stuff',
      area_id: 1,
      start_year: 1962,
      end_year: 1970 },
    { name: 'The Rolling Stones',
      bio: 'Drugs and stuff',
      area_id: 2,
      start_year: 1961,
      end_year: 2015 },
    { name: 'The Kinks',
      bio: 'Fights and stuff',
      area_id: 2,
      start_year: 1960,
      end_year: 1985 },
    { name: 'David Bowie',
      bio: 'Mind expansion and stuff',
      area_id: 3,
      start_year: 1964,
      end_year: 2016 },
    { name: 'The Locust',
      bio: 'Being fast and stuff',
      area_id: 4,
      start_year: 1995,
      end_year: 2007 },
    { name: 'The Blood Brothers',
      bio: 'Being loud and stuff',
      area_id: 5,
      start_year: 1997,
      end_year: 2007 },
    { name: 'Jay Reatard',
      bio: 'DIY and stuff',
      area_id: 6,
      start_year: 1998,
      end_year: 2010 },
    { name: 'Glassjaw',
      bio: 'Post-hardcore and stuff',
      area_id: 7,
      start_year: 1994,
      end_year: 2005 },
    { name: 'Dead Kennedys',
      bio: 'Controversy and stuff',
      area_id: 8,
      start_year: 1978,
      end_year: 1986 },
    { name: 'Miles Davis',
      bio: 'Being influential and stuff',
      area_id: 9,
      start_year: 1944,
      end_year: 1991 },
    { name: 'The Builders and the Butchers',
      bio: 'Punk and Folk and stuff',
      area_id: 10,
      start_year: 2006,
      end_year: 2015 }
    ])
    

  formats = Format.create([
    { name: 'LP' }, 
    { name: 'EP' },
    { name: 'Single' },
    { name: '7-Inch Single' },
    { name: '10-Inch Single' },
    { name: '12-Inch Single' }
    ])

  genres = Genre.create([
    { name: 'Rock' }, 
    { name: 'Pop' },
    { name: 'Rap/Hip Hop' },
    { name: 'Soul/R&B' },
    { name: 'Garage' },
    { name: 'Indie' },
    { name: 'Punk' },
    { name: 'Hardcore' },
    { name: 'Metal' },
    { name: 'Noise' },
    { name: 'Ska' },
    { name: 'Reggae' },
    { name: 'Folk' },
    { name: 'Bluegrass' },
    { name: 'Country' },
    { name: 'Americana' },
    { name: 'Rockabilly' },
    { name: 'Electronic' },
    { name: 'Jazz' },
    { name: 'Swing' },
    { name: 'Blues' },
    { name: 'Classical' },
    { name: 'New Age' },
    { name: 'Instrumental' },
    { name: 'Latin' },
    { name: 'World' },
    { name: 'Christian' }
    ])

  instruments = Instrument.create([
    { name: 'Guitar' }, 
    { name: 'Vocals' },
    { name: 'Bass' },
    { name: 'Drums' },
    { name: 'Keyboards' },
    { name: 'Violin' },
    { name: 'Banjo' },
    { name: 'Trumpet' },
    { name: 'Trombone' },
    { name: 'Sax' },
    { name: 'Multi-Instrumentalist' },
    { name: 'Percussion' },
    { name: 'Other' }
    ])

  members = Member.create([
    { artist_id: 1,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 1,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 1,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 2,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 2,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 2,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 3,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 3,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 3,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 4,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 4,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 4,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 5,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 5,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 5,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 6,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 6,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 6,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 7,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 7,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 7,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 8,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 8,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 8,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 9,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 9,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 9,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 10,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 10,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 10,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 11,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 11,
      first_name: 'Some',
      last_name: 'Guy' },
    { artist_id: 11,
      first_name: 'Some',
      last_name: 'Guy' }
    ])

  releases = Release.create([
    { album_id: 1,
      format_id: 1,
      release_date: 1965 },
    { album_id: 2,
      format_id: 2,
      release_date: 1966 },
    { album_id: 3,
      format_id: 3,
      release_date: 1972 },
    { album_id: 4,
      format_id: 4,
      release_date: 1967 },
    { album_id: 5,
      format_id: 5,
      release_date: 1967 },
    { album_id: 6,
      format_id: 1,
      release_date: 1968 },
    { album_id: 7,
      format_id: 2,
      release_date: 1923 },
    { album_id: 8,
      format_id: 3,
      release_date: 1937 },
    { album_id: 9,
      format_id: 4,
      release_date: 1946 },
    { album_id: 10,
      format_id: 5,
      release_date: 1955 },
    { album_id: 11,
      format_id: 1,
      release_date: 1972 },
    { album_id: 12,
      format_id: 2,
      release_date: 1981 },
    { album_id: 13,
      format_id: 3,
      release_date: 1994 },
    { album_id: 14,
      format_id: 4,
      release_date: 2001 },
    { album_id: 15,
      format_id: 5,
      release_date: 2011 },
    { album_id: 16,
      format_id: 1,
      release_date: 2005 },
    { album_id: 17,
      format_id: 2,
      release_date: 2015 },
    { album_id: 18,
      format_id: 3,
      release_date: 1988 },
    { album_id: 19,
      format_id: 4,
      release_date: 1999 },
    { album_id: 20,
      format_id: 5,
      release_date: 1932 }
    ])

  roles = Role.create([
    { member_id: 1,
      instrument_id: 1 },
    { member_id: 2,
      instrument_id: 2 },
    { member_id: 3,
      instrument_id: 3 },
    { member_id: 4,
      instrument_id: 4 },
    { member_id: 5,
      instrument_id: 5 },
    { member_id: 6,
      instrument_id: 6 },
    { member_id: 7,
      instrument_id: 7 },
    { member_id: 8,
      instrument_id: 8 },
    { member_id: 9,
      instrument_id: 9 },
    { member_id: 10,
      instrument_id: 10 },
    { member_id: 11,
      instrument_id: 11 },
    { member_id: 12,
      instrument_id: 12 },
    { member_id: 13,
      instrument_id: 13 },
    { member_id: 14,
      instrument_id: 1 },
    { member_id: 15,
      instrument_id: 2 },
    { member_id: 16,
      instrument_id: 3 },
    { member_id: 17,
      instrument_id: 4 },
    { member_id: 18,
      instrument_id: 5 },
    { member_id: 19,
      instrument_id: 6 },
    { member_id: 20,
      instrument_id: 7 },
    { member_id: 21,
      instrument_id: 8 },
    { member_id: 22,
      instrument_id: 9 },
    { member_id: 23,
      instrument_id: 10 },
    { member_id: 24,
      instrument_id: 11 },
    { member_id: 25,
      instrument_id: 12 },
    { member_id: 26,
      instrument_id: 13 },
    { member_id: 27,
      instrument_id: 1 },
    { member_id: 28,
      instrument_id: 2 },
    { member_id: 29,
      instrument_id: 3 },
    { member_id: 30,
      instrument_id: 4 },
    { member_id: 31,
      instrument_id: 5 },
    { member_id: 32,
      instrument_id: 6 },
    { member_id: 33,
      instrument_id: 7 }
    ])

  tracks = Track.create([
    { title: 'Song', 
      album_id: 1,
      length: 240 },
    { title: 'Song', 
      album_id: 1,
      length: 240 },
    { title: 'Song', 
      album_id: 1,
      length: 240 },
    { title: 'Song', 
      album_id: 2,
      length: 240 },
    { title: 'Song', 
      album_id: 2,
      length: 240 },
    { title: 'Song', 
      album_id: 2,
      length: 240 },
    { title: 'Song', 
      album_id: 3,
      length: 240 },
    { title: 'Song', 
      album_id: 3,
      length: 240 },
    { title: 'Song', 
      album_id: 3,
      length: 240 },
    { title: 'Song', 
      album_id: 4,
      length: 240 },
    { title: 'Song', 
      album_id: 4,
      length: 240 },
    { title: 'Song', 
      album_id: 4,
      length: 240 },
    { title: 'Song', 
      album_id: 5,
      length: 240 },
    { title: 'Song',
      album_id: 5,
      length: 240 },
    { title: 'Song', 
      album_id: 5,
      length: 240 },
    { title: 'Song', 
      album_id: 6,
      length: 240 },
    { title: 'Song', 
      album_id: 6,
      length: 240 },
    { title: 'Song', 
      album_id: 6,
      length: 240 },
    { title: 'Song', 
      album_id: 7,
      length: 240 },
    { title: 'Song', 
      album_id: 7,
      length: 240 },
    { title: 'Song', 
      album_id: 7,
      length: 240 },
    { title: 'Song', 
      album_id: 8,
      length: 240 },
    { title: 'Song', 
      album_id: 8,
      length: 240 },
    { title: 'Song', 
      album_id: 8,
      length: 240 },
    { title: 'Song', 
      album_id: 9,
      length: 240 },
    { title: 'Song', 
      album_id: 9,
      length: 240 },
    { title: 'Song', 
      album_id: 9,
      length: 240 },
    { title: 'Song', 
      album_id: 10,
      length: 240 },
    { title: 'Song', 
      album_id: 10,
      length: 240 },
    { title: 'Song', 
      album_id: 10,
      length: 240 },
    { title: 'Song', 
      album_id: 11,
      length: 240 },
    { title: 'Song', 
      album_id: 11,
      length: 240 },
    { title: 'Song', 
      album_id: 11,
      length: 240 },
    { title: 'Song', 
      album_id: 12,
      length: 240 },
    { title: 'Song', 
      album_id: 12,
      length: 240 },
    { title: 'Song', 
      album_id: 12,
      length: 240 },
    { title: 'Song', 
      album_id: 13,
      length: 240 },
    { title: 'Song', 
      album_id: 13,
      length: 240 },
    { title: 'Song', 
      album_id: 13,
      length: 240 },
    { title: 'Song', 
      album_id: 14,
      length: 240 },
    { title: 'Song', 
      album_id: 14,
      length: 240 },
    { title: 'Song', 
      album_id: 14,
      length: 240 },
    { title: 'Song', 
      album_id: 15,
      length: 240 },
    { title: 'Song', 
      album_id: 15,
      length: 240 },
    { title: 'Song', 
      album_id: 15,
      length: 240 },
    { title: 'Song', 
      album_id: 16,
      length: 240 },
    { title: 'Song', 
      album_id: 16,
      length: 240 },
    { title: 'Song', 
      album_id: 16,
      length: 240 },
    { title: 'Song', 
      album_id: 17,
      length: 240 },
    { title: 'Song', 
      album_id: 17,
      length: 240 },
    { title: 'Song', 
      album_id: 17,
      length: 240 },
    { title: 'Song', 
      album_id: 18,
      length: 240 },
    { title: 'Song', 
      album_id: 18,
      length: 240 },
    { title: 'Song', 
      album_id: 18,
      length: 240 },
    { title: 'Song', 
      album_id: 19,
      length: 240 },
    { title: 'Song', 
      album_id: 19,
      length: 240 },
    { title: 'Song', 
      album_id: 19,
      length: 240 },
    { title: 'Song', 
      album_id: 20,
      length: 240 },
    { title: 'Song', 
      album_id: 20,
      length: 240 },
    { title: 'Song', 
      album_id: 20,
      length: 240 }
    ])
    
end