const canvas = document.querySelector('canvas.webgl');
const scene = new THREE.Scene();
const sphereShadow = new THREE.Mesh(
  new THREE.PlaneGeometry(1.5, 1.5),
  new THREE.MeshBasicMaterial({
    transparent: true,
    color: 0x000000,
    opacity: 0.5,
  })
)



const sizes = { width: 1920, height: 1080 };
// Camera
const camera = new THREE.PerspectiveCamera(40, sizes.width / sizes.height, 0.1, 1000);
camera.position.z = 20;
scene.add(camera);

// Renderer
const renderer = new THREE.WebGLRenderer({ canvas, alpha: true, antialias: true });
renderer.outputEncoding = THREE.sRGBEncoding;
renderer.setClearColor(0x000000, 0);
renderer.shadowMap.enabled = true;
renderer.shadowMap.type = THREE.PCFSoftShadowMap;
renderer.setSize(sizes.width, sizes.height);
renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2));

// Lights
const ambientLight = new THREE.AmbientLight(0xffffff, 0.8);
scene.add(ambientLight);

const directionalLight = new THREE.DirectionalLight(0xffffff, 1);
directionalLight.position.set(1, 2, 0);
directionalLight.castShadow = true;
scene.add(directionalLight);

// Loading Bar and Manager
const loadingBarElement = document.querySelector('.loading-bar');
const bodyElement = document.querySelector('body');
const loadingManager = new THREE.LoadingManager(
  () => {
    window.setTimeout(() => {
      loadingBarElement.classList.add('ended');
      bodyElement.classList.add('loaded');
      loadingBarElement.style.transform = '';
    }, 0.00);
  },
  (itemUrl, itemsLoaded, itemsTotal) => {
    const progressRatio = itemsLoaded / itemsTotal;
    loadingBarElement.style.transform = `scaleX(${progressRatio})`;
  },
  () => { }
);

// GLTF Model
let donut = null;
const loader = new THREE.GLTFLoader(loadingManager);
loader.load(
  '../gltf/0001.glb',
  (glb) => {
    console.log(glb);
    donut = glb.scene;

    
    scene.add(donut);
    console.log("Model Position:", donut.position);
  },
  (progress) => {
    console.log(progress);
  },
  (error) => {
    console.error(error);
  }
);


// Scroll Animation

let scrollY = window.scrollY;

let currentSection = 0;
const transformDonut = [
  { rotationZ: 0, rotationX: 0, positionX: 0, positionZ: 0},
  { rotationZ: -0.6, rotationX: 0.5, positionX: 2,  positionZ: 2},
  { rotationZ: -0.6, rotationX: 0.5, positionX: 8,  positionZ: 8 },
  { rotationZ: 0.0314, positionX: 10 },
];

window.addEventListener('scroll', () => {
  scrollY = window.scrollY;
  const newSection = Math.round(scrollY / sizes.height);
  if (newSection !== currentSection) {
    currentSection = newSection;
    
    if (!!donut) {
      gsap.to(donut.rotation, { duration: 0.5, z: transformDonut[currentSection].rotationZ });
      gsap.to(donut.rotation, { duration: 0.5, x: transformDonut[currentSection].rotationX });
      gsap.to(donut.position, { duration: 1.5, x: transformDonut[currentSection].positionX });
      gsap.to(donut.position, { duration: 0.5, z: transformDonut[currentSection].positionZ });


    }
  }
});

// Animation
const clock = new THREE.Clock();
let lastElapsedTime = 0;
const tick = () => {
  const elapsedTime = clock.getElapsedTime();
  const deltaTime = elapsedTime - lastElapsedTime;
  lastElapsedTime = elapsedTime;

  if (!!donut) {
    donut.position.y = Math.sin(elapsedTime * 1.5) * 0.1 - 0.1;

  }

  renderer.render(scene, camera);
  window.requestAnimationFrame(tick);
};

tick();

// On Reload
window.onbeforeunload = function () {
  window.scrollTo(0, 0);
};