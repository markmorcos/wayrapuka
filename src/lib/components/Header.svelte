<script lang="ts">
  import logo from "../../assets/logo.svg";

  // Track active page for navigation highlighting
  export let activePage: string = "home";
</script>

<header>
  <div class="logo">
    <a href="#home">
      <img src={logo} alt="Wayra Puka" />
    </a>
  </div>
  <nav>
    <ul>
      <li class:active={activePage === "home"}>
        <a href="#home">Home</a>
      </li>
      <li class:active={activePage === "about"}>
        <a href="#about">About</a>
      </li>
      <li class:active={activePage === "music"}>
        <a href="#music">Music</a>
      </li>
      <li class:active={activePage === "events"}>
        <a href="#events">Events</a>
      </li>
      <li class:active={activePage === "gallery"}>
        <a href="#gallery">Gallery</a>
      </li>
      <li class:active={activePage === "contact"}>
        <a href="#contact">Contact</a>
      </li>
    </ul>
  </nav>
</header>

<style>
  header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1rem 2rem;
    background-color: rgba(0, 0, 0, 0.8);
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000;
  }

  .logo img {
    height: 50px;
    width: auto;
  }

  nav ul {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
    gap: 1.5rem;
  }

  nav li {
    font-size: 1rem;
    text-transform: uppercase;
    letter-spacing: 1px;
  }

  nav a {
    color: white;
    text-decoration: none;
    padding: 0.5rem 0;
    position: relative;
    transition: color 0.3s;
  }

  nav a:hover,
  li.active a {
    color: #e76f51;
  }

  nav a::after {
    content: "";
    position: absolute;
    width: 0;
    height: 2px;
    bottom: 0;
    left: 0;
    background-color: #e76f51;
    transition: width 0.3s;
  }

  nav a:hover::after,
  li.active a::after {
    width: 100%;
  }

  @media (max-width: 768px) {
    header {
      flex-direction: column;
      padding: 1rem;
    }

    nav ul {
      margin-top: 1rem;
      flex-wrap: wrap;
      justify-content: center;
      gap: 1rem;
    }
  }
</style>
