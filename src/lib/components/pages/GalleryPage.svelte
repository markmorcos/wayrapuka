<script lang="ts">
  // Gallery data
  const photos = [
    {
      id: 1,
      url: "https://images.unsplash.com/photo-1501386761578-eac5c94b800a?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      caption: "Live at Kulturbrauerei, Berlin - Summer 2022",
      category: "live",
    },
    {
      id: 2,
      url: "https://images.unsplash.com/photo-1508973379184-7517410fb0bc?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      caption: "Wayra Puka performing at Berlin Cultural Festival",
      category: "live",
    },
    {
      id: 3,
      url: "https://images.unsplash.com/photo-1511192336575-5a79af67a629?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      caption: "Behind the scenes at album recording",
      category: "studio",
    },
    {
      id: 4,
      url: "https://images.unsplash.com/photo-1528149356763-0c0133e6be3e?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      caption: "Backstage moments before the show",
      category: "backstage",
    },
    {
      id: 5,
      url: "https://images.unsplash.com/photo-1415201364774-f6f0bb35f28f?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      caption: "Crowd dancing to Andean beats",
      category: "live",
    },
    {
      id: 6,
      url: "https://images.unsplash.com/photo-1438232992991-995b7058bbb3?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      caption: 'Recording sessions for "Melodías Migrantes"',
      category: "studio",
    },
    {
      id: 7,
      url: "https://images.unsplash.com/photo-1523897530406-7fa8a10c4470?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      caption: "Alejandro playing the charango",
      category: "instruments",
    },
    {
      id: 8,
      url: "https://images.unsplash.com/photo-1524649519654-c4fb37d52f54?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      caption: "Maria with her traditional Andean percussion",
      category: "instruments",
    },
    {
      id: 9,
      url: "https://images.unsplash.com/photo-1528489290497-22dd0cd9afee?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      caption: "Summer tour through Hamburg",
      category: "tour",
    },
  ];

  // Videos section
  const videos = [
    {
      id: 1,
      title: "Montañas de Berlín - Official Music Video",
      thumbUrl:
        "https://images.unsplash.com/photo-1516280440614-37939bbacd81?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      videoUrl: "https://www.youtube.com/embed/dQw4w9WgXcQ",
      duration: "4:47",
    },
    {
      id: 2,
      title: "Live at Club der Visionäre - Full Show",
      thumbUrl:
        "https://images.unsplash.com/photo-1501386761578-eac5c94b800a?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      videoUrl: "https://www.youtube.com/embed/dQw4w9WgXcQ",
      duration: "1:23:05",
    },
    {
      id: 3,
      title: "Behind the Scenes - Album Recording",
      thumbUrl:
        "https://images.unsplash.com/photo-1598488035139-bdbb2231ce04?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
      videoUrl: "https://www.youtube.com/embed/dQw4w9WgXcQ",
      duration: "10:15",
    },
  ];

  // State for the selected photo (for modal)
  let selectedPhoto = null;
  let selectedVideo = null;
  let activeFilter = "all";

  // Filter photos based on selected category
  $: filteredPhotos =
    activeFilter === "all"
      ? photos
      : photos.filter((photo) => photo.category === activeFilter);

  // Toggle functions for photos and videos
  function openPhotoModal(photo) {
    selectedPhoto = photo;
    document.body.style.overflow = "hidden";
  }

  function closePhotoModal() {
    selectedPhoto = null;
    document.body.style.overflow = "";
  }

  function openVideoModal(video) {
    selectedVideo = video;
    document.body.style.overflow = "hidden";
  }

  function closeVideoModal() {
    selectedVideo = null;
    document.body.style.overflow = "";
  }

  // Handle filter change
  function setFilter(filter) {
    activeFilter = filter;
  }
</script>

<section id="gallery" class="gallery-section">
  <div class="container">
    <h2 class="section-title">Gallery</h2>

    <div class="gallery-filters">
      <button
        class={activeFilter === "all" ? "active" : ""}
        on:click={() => setFilter("all")}
      >
        All
      </button>
      <button
        class={activeFilter === "live" ? "active" : ""}
        on:click={() => setFilter("live")}
      >
        Live Shows
      </button>
      <button
        class={activeFilter === "studio" ? "active" : ""}
        on:click={() => setFilter("studio")}
      >
        Studio
      </button>
      <button
        class={activeFilter === "backstage" ? "active" : ""}
        on:click={() => setFilter("backstage")}
      >
        Backstage
      </button>
      <button
        class={activeFilter === "instruments" ? "active" : ""}
        on:click={() => setFilter("instruments")}
      >
        Instruments
      </button>
      <button
        class={activeFilter === "tour" ? "active" : ""}
        on:click={() => setFilter("tour")}
      >
        Tour
      </button>
    </div>

    <div class="photo-gallery">
      {#each filteredPhotos as photo}
        <div class="photo-item" on:click={() => openPhotoModal(photo)}>
          <img src={photo.url} alt={photo.caption} loading="lazy" />
          <div class="photo-overlay">
            <span class="photo-caption">{photo.caption}</span>
          </div>
        </div>
      {/each}
    </div>

    <h3 class="videos-title">Videos</h3>

    <div class="video-gallery">
      {#each videos as video}
        <div class="video-item" on:click={() => openVideoModal(video)}>
          <div
            class="video-thumbnail"
            style="background-image: url('{video.thumbUrl}')"
          >
            <div class="play-overlay">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="48"
                height="48"
                viewBox="0 0 24 24"
                fill="currentColor"><path d="M8 5v14l11-7z" /></svg
              >
              <span class="video-duration">{video.duration}</span>
            </div>
          </div>
          <h4 class="video-title">{video.title}</h4>
        </div>
      {/each}
    </div>
  </div>

  {#if selectedPhoto}
    <div class="photo-modal" on:click={closePhotoModal}>
      <div class="modal-content" on:click|stopPropagation>
        <button class="close-button" on:click={closePhotoModal}>×</button>
        <img src={selectedPhoto.url} alt={selectedPhoto.caption} />
        <p class="modal-caption">{selectedPhoto.caption}</p>
      </div>
    </div>
  {/if}

  {#if selectedVideo}
    <div class="video-modal" on:click={closeVideoModal}>
      <div class="modal-content" on:click|stopPropagation>
        <button class="close-button" on:click={closeVideoModal}>×</button>
        <div class="video-container">
          <iframe
            src={selectedVideo.videoUrl}
            title={selectedVideo.title}
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen
          ></iframe>
        </div>
        <h3 class="modal-title">{selectedVideo.title}</h3>
      </div>
    </div>
  {/if}
</section>

<style>
  .gallery-section {
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

  .gallery-filters {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 1rem;
    margin-bottom: 2rem;
  }

  .gallery-filters button {
    background: none;
    border: 2px solid #e76f51;
    padding: 0.5rem 1.2rem;
    border-radius: 30px;
    font-size: 0.9rem;
    cursor: pointer;
    transition: all 0.3s ease;
    color: #333;
    font-weight: 600;
  }

  .gallery-filters button:hover,
  .gallery-filters button.active {
    background-color: #e76f51;
    color: white;
  }

  .photo-gallery {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 1.5rem;
    margin-bottom: 4rem;
  }

  .photo-item {
    position: relative;
    height: 250px;
    border-radius: 10px;
    overflow: hidden;
    cursor: pointer;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
  }

  .photo-item:hover {
    transform: scale(1.03);
  }

  .photo-item img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.5s ease;
  }

  .photo-item:hover img {
    transform: scale(1.1);
  }

  .photo-overlay {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    background: linear-gradient(to top, rgba(0, 0, 0, 0.8), transparent);
    padding: 1rem;
    opacity: 0;
    transition: opacity 0.3s ease;
  }

  .photo-item:hover .photo-overlay {
    opacity: 1;
  }

  .photo-caption {
    color: white;
    font-size: 0.9rem;
  }

  .videos-title {
    font-size: 1.8rem;
    color: #333;
    margin-bottom: 1.5rem;
    position: relative;
    display: inline-block;
  }

  .videos-title::after {
    content: "";
    display: block;
    width: 50px;
    height: 3px;
    background-color: #e76f51;
    margin-top: 0.5rem;
  }

  .video-gallery {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
    gap: 2rem;
  }

  .video-item {
    cursor: pointer;
    transition: transform 0.3s ease;
  }

  .video-item:hover {
    transform: translateY(-5px);
  }

  .video-thumbnail {
    height: 200px;
    border-radius: 10px;
    overflow: hidden;
    background-size: cover;
    background-position: center;
    position: relative;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
  }

  .play-overlay {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.3);
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    opacity: 0;
    transition: opacity 0.3s ease;
  }

  .video-item:hover .play-overlay {
    opacity: 1;
  }

  .video-duration {
    position: absolute;
    bottom: 10px;
    right: 10px;
    background-color: rgba(0, 0, 0, 0.7);
    padding: 0.2rem 0.5rem;
    border-radius: 4px;
    font-size: 0.8rem;
  }

  .video-title {
    margin-top: 1rem;
    margin-bottom: 0;
    font-size: 1.1rem;
    color: #333;
  }

  /* Modal styles */
  .photo-modal,
  .video-modal {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.9);
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 1000;
    padding: 2rem;
  }

  .modal-content {
    position: relative;
    max-width: 90%;
    max-height: 90%;
  }

  .photo-modal .modal-content img {
    max-width: 100%;
    max-height: 80vh;
    display: block;
    border-radius: 5px;
  }

  .close-button {
    position: absolute;
    top: -40px;
    right: 0;
    background: none;
    border: none;
    color: white;
    font-size: 2rem;
    cursor: pointer;
    z-index: 1001;
  }

  .modal-caption,
  .modal-title {
    color: white;
    margin-top: 1rem;
    text-align: center;
  }

  .video-container {
    position: relative;
    padding-bottom: 56.25%; /* 16:9 aspect ratio */
    height: 0;
    overflow: hidden;
    max-width: 100%;
  }

  .video-container iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border-radius: 5px;
  }

  @media (max-width: 768px) {
    .photo-gallery {
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    }

    .video-gallery {
      grid-template-columns: 1fr;
    }

    .gallery-filters {
      gap: 0.5rem;
    }

    .gallery-filters button {
      padding: 0.4rem 0.8rem;
      font-size: 0.8rem;
    }
  }
</style>
