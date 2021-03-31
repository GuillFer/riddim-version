const addSongArtist = () => {
  const addArtist = document.getElementById('add-artist');
  if (addArtist) {
    const artistList = document.querySelectorAll('.song_song_artists_artist');
    addArtist.addEventListener('click', () => {
      const artistNumber = artistList.length;
      const selectTag = document.querySelector('select');
      const newSelectTag = selectTag.cloneNode(true);
      newSelectTag.setAttribute('id', `song_song_artists_attributes_${artistNumber}_artist_id`);
      newSelectTag.setAttribute('name', `song[song_artists_attributes][${artistNumber}][artist_id]`);
      const songTitleField = document.querySelector('.song_title');
      songTitleField.insertAdjacentHTML('beforebegin', newSelectTag.outerHTML);
    });
  }
}

export { addSongArtist };
