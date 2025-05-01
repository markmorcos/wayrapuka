<script lang="ts">
  // Albums data
  const albums = [
    {
      title: "Entre Montañas y Concreto",
      year: "2020",
      cover:
        "https://images.unsplash.com/photo-1465847899084-d164df4dedc6?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
      description:
        "Our debut album explores the contrast between the natural landscapes of the Andes and the urban environment of Berlin.",
      tracks: [
        { title: "Amanecer en Berlín", duration: "4:18" },
        { title: "Vientos del Sur", duration: "3:45" },
        { title: "La Cumbia del Ayer", duration: "5:02" },
        { title: "Entre Montañas", duration: "4:32" },
        { title: "Selva de Concreto", duration: "6:15" },
        { title: "Raíces Andinas", duration: "4:57" },
        { title: "Danza de la Lluvia", duration: "3:48" },
        { title: "Baile en las Calles", duration: "4:23" },
      ],
    },
    {
      title: "Melodías Migrantes",
      year: "2022",
      cover:
        "https://images.unsplash.com/photo-1557672172-298e090bd0f1?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=60",
      description:
        "Our second album dives deeper into the immigrant experience, blending nostalgic melodies with modern production techniques.",
      tracks: [
        { title: "Tierra Lejana", duration: "3:56" },
        { title: "Puentes Invisibles", duration: "4:12" },
        { title: "El Mar Entre Nosotros", duration: "5:23" },
        { title: "Cumbia del Extranjero", duration: "4:05" },
        { title: "Montañas de Berlín", duration: "4:47" },
        { title: "Memorias de Carnaval", duration: "3:38" },
        { title: "Noche en Europa", duration: "4:59" },
        { title: "Ritmos del Corazón", duration: "5:11" },
      ],
    },
  ];

  // Streaming platforms
  const streamingPlatforms = [
    { name: "Spotify", url: "https://open.spotify.com/", icon: "spotify" },
    { name: "Apple Music", url: "https://music.apple.com/", icon: "apple" },
    {
      name: "YouTube Music",
      url: "https://music.youtube.com/",
      icon: "youtube",
    },
    { name: "Bandcamp", url: "https://bandcamp.com/", icon: "bandcamp" },
    { name: "SoundCloud", url: "https://soundcloud.com/", icon: "soundcloud" },
  ];
</script>

<section id="music" class="music-section">
  <div class="container">
    <h2 class="section-title">Our Music</h2>

    <div class="featured-player">
      <div class="player-image">
        <img
          src="https://images.unsplash.com/photo-1557672172-298e090bd0f1?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
          alt="Featured track"
        />
        <div class="play-button">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="48"
            height="48"
            viewBox="0 0 24 24"
            fill="currentColor"><path d="M8 5v14l11-7z" /></svg
          >
        </div>
      </div>
      <div class="player-info">
        <h3>Latest Single: "Montañas de Berlín"</h3>
        <p>From our album "Melodías Migrantes"</p>
        <p class="track-description">
          This track captures the essence of our musical journey, blending the
          majestic imagery of the Andes with the vibrant pulse of Berlin's music
          scene. Traditional pan flutes and charangos dance alongside electronic
          beats and modern production.
        </p>
        <div class="track-listen">
          <a href="#" class="btn primary">Listen Now</a>
        </div>
      </div>
    </div>

    <div class="streaming-platforms">
      <h3>Listen On</h3>
      <div class="platform-icons">
        {#each streamingPlatforms as platform}
          <a
            href={platform.url}
            target="_blank"
            rel="noopener noreferrer"
            class="platform-icon"
            title={platform.name}
          >
            <span class="sr-only">{platform.name}</span>
            {#if platform.icon === "spotify"}
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="32"
                height="32"
                viewBox="0 0 24 24"
                fill="currentColor"
                ><path
                  d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm0 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm-2 13.5c2.188 0 4.334-.814 6-2.333l-1.434-1.334c-1.321 1.167-3.037 1.767-4.566 1.767-1.53 0-3.044-.6-4.366-1.767l-1.434 1.334c1.666 1.519 3.812 2.333 6 2.333zm-1.5-5c.828 0 1.5-.672 1.5-1.5s-.672-1.5-1.5-1.5-1.5.672-1.5 1.5.672 1.5 1.5 1.5zm7 0c.828 0 1.5-.672 1.5-1.5s-.672-1.5-1.5-1.5-1.5.672-1.5 1.5.672 1.5 1.5 1.5zm-7-5c4.667 0 8.5 1.566 11.5 4.667l-1.5 1.334c-2.333-2.334-5.666-3.667-10-3.667-4.333 0-7.833 1.333-10.166 3.667l-1.334-1.334c3-3.001 6.833-4.667 11.5-4.667z"
                /></svg
              >
            {:else if platform.icon === "apple"}
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="32"
                height="32"
                viewBox="0 0 24 24"
                fill="currentColor"
                ><path
                  d="M22 17.607c-.786 2.28-3.139 6.317-5.563 6.361-1.608.031-2.125-.953-3.963-.953-1.837 0-2.412.923-3.932.983-2.572.099-6.542-5.827-6.542-10.995 0-4.747 3.308-7.1 6.198-7.143 1.55-.028 3.014 1.045 3.959 1.045.949 0 2.727-1.29 4.596-1.101.782.033 2.979.315 4.389 2.377-3.741 2.442-3.158 7.549.858 9.426zm-5.222-17.607c-2.826.114-5.132 3.079-4.81 5.531 2.612.203 5.118-2.725 4.81-5.531z"
                /></svg
              >
            {:else if platform.icon === "youtube"}
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="32"
                height="32"
                viewBox="0 0 24 24"
                fill="currentColor"
                ><path
                  d="M19.615 3.184c-3.604-.246-11.631-.245-15.23 0-3.897.266-4.356 2.62-4.385 8.816.029 6.185.484 8.549 4.385 8.816 3.6.245 11.626.246 15.23 0 3.897-.266 4.356-2.62 4.385-8.816-.029-6.185-.484-8.549-4.385-8.816zm-10.615 12.816v-8l8 3.993-8 4.007z"
                /></svg
              >
            {:else if platform.icon === "bandcamp"}
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="32"
                height="32"
                viewBox="0 0 24 24"
                fill="currentColor"
                ><path
                  d="M0 12c0 6.627 5.373 12 12 12s12-5.373 12-12-5.373-12-12-12-12 5.373-12 12zm15.808-4.038l3.15.016-6.956 8.023h-3.153l6.959-8.039z"
                /></svg
              >
            {:else if platform.icon === "soundcloud"}
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="32"
                height="32"
                viewBox="0 0 24 24"
                fill="currentColor"
                ><path
                  d="M12 0c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-6.417 14.583c-.354-.318-.583-.79-.583-1.323 0-.532.229-1.003.583-1.323v2.646zm1.167.417c-.212 0-.323-.103-.323-.316v-3.438c0-.213.111-.316.323-.316s.327.103.327.316v3.438c0 .213-.115.316-.327.316zm1.167 0c-.212 0-.327-.103-.327-.316v-4.047c0-.213.115-.316.327-.316s.323.103.323.316v4.047c0 .213-.111.316-.323.316zm1.167 0c-.212 0-.323-.103-.323-.316v-5.047c0-.213.111-.316.323-.316s.327.103.327.316v5.047c0 .213-.115.316-.327.316zm1.166 0c-.212 0-.327-.103-.327-.316v-5.521c0-.213.115-.317.327-.317.21 0 .323.104.323.317v5.521c0 .213-.113.316-.323.316zm1.167 0c-.212 0-.323-.103-.323-.316v-4.938c0-.213.111-.316.323-.316s.327.103.327.316v4.938c0 .213-.115.316-.327.316zm1.167 0c-.212 0-.327-.103-.327-.316v-3.844c0-.213.115-.316.327-.316.21 0 .323.103.323.316v3.844c0 .213-.113.316-.323.316zm1.167-7.662v7.298c0 .197-.038.401-.111.582-.175.443-.538.695-1.021.729-1.168.033-2.377.048-3.56.014-.115-.013-.24-.025-.357-.025h-1.214c-.732-.063-1.486-.159-2.223-.245-.115-.016-.238-.042-.391-.054-1.143-.104-1.685-.795-1.692-1.983-.006-1.418 0-2.837 0-4.256 0-.922.286-1.686 1.173-2.174.954-.521 1.954-.825 3.039-.962.926-.112 1.686.384 2.45.781.527.273.918.7 1.089 1.283.065.208.102.423.102.641 0 .288.006.576.006.864.006.281.006.562.006.843.012.281.012.562.012.842.001.257.001.514.001.772z"
                /></svg
              >
            {/if}
          </a>
        {/each}
      </div>
    </div>

    <div class="albums-section">
      <h3>Albums</h3>
      <div class="albums-grid">
        {#each albums as album}
          <div class="album-card">
            <div
              class="album-cover"
              style="background-image: url('{album.cover}')"
            >
              <div class="album-year">{album.year}</div>
            </div>
            <div class="album-info">
              <h4 class="album-title">{album.title}</h4>
              <p class="album-description">{album.description}</p>

              <div class="album-tracks">
                <h5>Tracks</h5>
                <ul class="tracks-list">
                  {#each album.tracks as track, i}
                    <li class="track-item">
                      <span class="track-number">{i + 1}</span>
                      <span class="track-title">{track.title}</span>
                      <span class="track-duration">{track.duration}</span>
                    </li>
                  {/each}
                </ul>
              </div>
            </div>
          </div>
        {/each}
      </div>
    </div>
  </div>
</section>

<style>
  .music-section {
    padding: 5rem 1rem;
    background-color: #f8f8f8;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
  }

  .section-title {
    text-align: center;
    font-size: 2.5rem;
    margin-bottom: 3rem;
    color: #333;
    position: relative;
  }

  .section-title::after {
    content: "";
    display: block;
    width: 80px;
    height: 4px;
    background-color: #e76f51;
    margin: 0.5rem auto 0;
  }

  .featured-player {
    display: flex;
    gap: 2rem;
    margin-bottom: 4rem;
    background-color: white;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
  }

  .player-image {
    flex: 1;
    position: relative;
    min-height: 300px;
    overflow: hidden;
  }

  .player-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: center;
  }

  .play-button {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 80px;
    height: 80px;
    background-color: rgba(231, 111, 81, 0.8);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    cursor: pointer;
    transition: all 0.3s ease;
  }

  .play-button:hover {
    background-color: #e76f51;
    transform: translate(-50%, -50%) scale(1.1);
  }

  .player-info {
    flex: 1;
    padding: 2rem;
  }

  .player-info h3 {
    font-size: 1.8rem;
    color: #333;
    margin-top: 0;
    margin-bottom: 0.5rem;
  }

  .player-info p {
    color: #666;
    margin-bottom: 1rem;
  }

  .track-description {
    font-size: 1.1rem;
    line-height: 1.6;
    margin-bottom: 2rem;
  }

  .track-listen {
    margin-top: 2rem;
  }

  .btn {
    display: inline-block;
    padding: 0.8rem 2rem;
    border-radius: 50px;
    text-decoration: none;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 1px;
    transition: all 0.3s ease;
  }

  .btn.primary {
    background-color: #e76f51;
    color: white;
  }

  .btn.primary:hover {
    background-color: #d56344;
    transform: translateY(-2px);
  }

  .streaming-platforms {
    margin-bottom: 4rem;
    text-align: center;
  }

  .streaming-platforms h3 {
    font-size: 1.8rem;
    color: #333;
    margin-bottom: 1.5rem;
  }

  .platform-icons {
    display: flex;
    justify-content: center;
    gap: 2rem;
    flex-wrap: wrap;
  }

  .platform-icon {
    color: #555;
    transition:
      color 0.3s ease,
      transform 0.3s ease;
  }

  .platform-icon:hover {
    color: #e76f51;
    transform: translateY(-5px);
  }

  .sr-only {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    white-space: nowrap;
    border-width: 0;
  }

  .albums-section h3 {
    font-size: 1.8rem;
    color: #333;
    margin-bottom: 2rem;
    text-align: center;
  }

  .albums-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(500px, 1fr));
    gap: 3rem;
  }

  .album-card {
    display: flex;
    background-color: white;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
  }

  .album-card:hover {
    transform: translateY(-10px);
  }

  .album-cover {
    width: 250px;
    height: 250px;
    background-size: cover;
    background-position: center;
    position: relative;
  }

  .album-year {
    position: absolute;
    bottom: 0;
    right: 0;
    background-color: #e76f51;
    color: white;
    padding: 0.3rem 0.8rem;
    font-weight: 600;
  }

  .album-info {
    flex: 1;
    padding: 1.5rem;
    overflow: hidden;
  }

  .album-title {
    font-size: 1.5rem;
    color: #333;
    margin-top: 0;
    margin-bottom: 1rem;
  }

  .album-description {
    color: #666;
    font-size: 1rem;
    line-height: 1.6;
    margin-bottom: 1.5rem;
  }

  .album-tracks h5 {
    font-size: 1.1rem;
    color: #333;
    margin-bottom: 0.8rem;
    border-bottom: 1px solid #ddd;
    padding-bottom: 0.5rem;
  }

  .tracks-list {
    list-style: none;
    padding: 0;
    margin: 0;
    max-height: 210px;
    overflow-y: auto;
  }

  .track-item {
    display: flex;
    padding: 0.5rem 0;
    border-bottom: 1px solid #eee;
    font-size: 0.9rem;
  }

  .track-number {
    width: 25px;
    color: #888;
  }

  .track-title {
    flex: 1;
    color: #333;
  }

  .track-duration {
    color: #888;
    margin-left: 1rem;
  }

  @media (max-width: 992px) {
    .featured-player {
      flex-direction: column;
    }

    .player-image {
      height: 300px;
    }

    .albums-grid {
      grid-template-columns: 1fr;
    }
  }

  @media (max-width: 768px) {
    .album-card {
      flex-direction: column;
    }

    .album-cover {
      width: 100%;
    }

    .platform-icons {
      gap: 1rem;
    }
  }
</style>
