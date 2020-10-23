'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "1aad63de26a590b6f495c1b5204b08a4",
"assets/assets/bluepattern.jpg": "3c983af53935283e3c1bf1b9d31456af",
"assets/assets/childYoga.jpg": "12d44f47cfa583fb7833a956203c5f09",
"assets/assets/client1.jpg": "fb1f16627d21ddfcaa3c322cd5c14e99",
"assets/assets/client2.jpg": "bd73d8bd1b26854c7e046e99cbdd8c01",
"assets/assets/corporateYoga.jpg": "7e9242ff82a89b448576f4f014f14dc2",
"assets/assets/facebook.png": "307ff6afdc1bb9319fe0a9d8aa1dfbbd",
"assets/assets/groupYoga.jpg": "3ac9a48642dfdea9db42f503a628f194",
"assets/assets/hathaYoga.jpg": "d4fb5eeba07836748e25ecd5f1ddc518",
"assets/assets/instagram.png": "34ada1638ef7bef370e593e45e2cd29a",
"assets/assets/lotusbloom.jpg": "2adec7ddd3ec2ac361915ef264113814",
"assets/assets/meditation.jpg": "6c08527762fa36aa528062d6e5f6180e",
"assets/assets/privateYoga.jpg": "311416fe1a4bf6f27fd6e9b6508b76aa",
"assets/assets/tag.png": "8a0e6d02cea5714dfea12af3e9ea9186",
"assets/assets/twitter.png": "3d74e8bfd4ef7985f7529bb9f7650eca",
"assets/assets/yoga_class1.jpg": "4cdf2489d9ddff5304cccb5f2f145376",
"assets/assets/yoga_class2.jpg": "6b2ac0aa6cb4d27ac22c7a4ee646f919",
"assets/assets/yoga_class3.jpg": "74d5fca0f06003a85a3f49cf96d997a7",
"assets/assets/yoga_logo.png": "a4c96fca5511e2dc46130254e7caa137",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/NOTICES": "63b92e80230daee96c702cacdcc55759",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.ico": "383bfaae915d993aaa0d27c28d82dc98",
"icons/Icon-192.png": "383bfaae915d993aaa0d27c28d82dc98",
"icons/Icon-512.png": "7e626feb865f7037208a776d9455b986",
"index.html": "adabc533482831fd7230038e784bdd2c",
"/": "adabc533482831fd7230038e784bdd2c",
"main.dart.js": "370f18ac09837fb0c8e7b78faccc20d0",
"manifest.json": "f3765d36388fe5d48496f4d4bcac72a4"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/LICENSE",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');

      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }

      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.message == 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message = 'downloadOffline') {
    downloadOffline();
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.add(resourceKey);
    }
  }
  return Cache.addAll(resources);
}
