<script lang="ts">
  import Header from "./lib/components/Header.svelte";
  import Footer from "./lib/components/Footer.svelte";
  import HomePage from "./lib/components/pages/HomePage.svelte";
  import AboutPage from "./lib/components/pages/AboutPage.svelte";
  import MusicPage from "./lib/components/pages/MusicPage.svelte";
  import EventsPage from "./lib/components/pages/EventsPage.svelte";
  import GalleryPage from "./lib/components/pages/GalleryPage.svelte";
  import ContactPage from "./lib/components/pages/ContactPage.svelte";

  // Handle navigation
  let activePage = "home";

  function handleHashChange() {
    const hash = window.location.hash || "#home";
    activePage = hash.replace("#", "");

    // Scroll to the section with an offset for the fixed header
    const section = document.getElementById(activePage);
    if (section) {
      // Smooth scroll handling with header offset
      setTimeout(() => {
        const headerHeight = 80; // Match the header height
        const sectionTop = section.getBoundingClientRect().top + window.scrollY;
        window.scrollTo({
          top: sectionTop - headerHeight,
          behavior: "smooth",
        });
      }, 100);
    }
  }

  // Initialize on component mount
  import { onMount } from "svelte";

  onMount(() => {
    handleHashChange();
    window.addEventListener("hashchange", handleHashChange);

    return () => {
      window.removeEventListener("hashchange", handleHashChange);
    };
  });
</script>

<main>
  <Header {activePage} />

  <div class="content">
    <HomePage />
    <AboutPage />
    <MusicPage />
    <EventsPage />
    <GalleryPage />
    <ContactPage />
  </div>

  <Footer />
</main>

<style>
  :global(html) {
    scroll-behavior: smooth;
  }

  :global(body) {
    margin: 0;
    font-family:
      system-ui,
      -apple-system,
      BlinkMacSystemFont,
      "Segoe UI",
      Roboto,
      Oxygen,
      Ubuntu,
      Cantarell,
      "Open Sans",
      "Helvetica Neue",
      sans-serif;
    overflow-x: hidden;
    color: #333;
    background-color: #fff;
  }

  :global(h1, h2, h3, h4, h5, h6) {
    font-family: "Montserrat", sans-serif;
    font-weight: 700;
  }

  :global(section) {
    padding: 5rem 0;
    scroll-margin-top: 80px;
  }

  main {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
  }

  .content {
    flex: 1;
    margin-top: 82px; /* Header height */
  }
</style>
