'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"index.html": "922502a2cf6a9a405bb58ed43f07e5f6",
"/": "922502a2cf6a9a405bb58ed43f07e5f6",
"assets/NOTICES": "ef2f5905e8cdcece50193feb24464da0",
"assets/asset/image/image_fire_ant_2.png": "a29484cb3cb3a845c63bf2c8727f8df5",
"assets/asset/image/image_investar_kor_2.png": "f7c938fd7d21022120aa0eed41aea8b1",
"assets/asset/image/image_investar_kor_4.png": "156d915a10f6a7801f1f57dc688293c7",
"assets/asset/image/image_sbl_app_4.png": "4bf568ef9a72dc1f9c4d4945396dbfde",
"assets/asset/image/image_cover_letter_4.png": "812d2cf6a5ba37ee26245235c55872de",
"assets/asset/image/image_cover_letter_background_1.png": "7737c93788780c059562978c4ffb911a",
"assets/asset/image/image_fire_ant_1.png": "c7bb476363ff226f3924bfce7bce2acd",
"assets/asset/image/image_cover_letter_background_2.png": "db56381026c1ba5f8f91660d21a8a270",
"assets/asset/image/image_cover_letter_3.png": "983429c7bc39d9a4065c1bec06064d3b",
"assets/asset/image/image_investar_eng_6.png": "2c889f050bbbef52ffa9dd58eef555b2",
"assets/asset/image/image_cover_letter_1.png": "323beaee679acca9c0a67d4e222bfb65",
"assets/asset/image/image_investar_kor_7.png": "0d406963d8e46eba5bc7827365ae7ba7",
"assets/asset/image/image_investar_kor_3.png": "f3f292eb3acef6231dd04ca06c19b131",
"assets/asset/image/image_fire_ant_3.png": "8496172568c2b02dedd05770eab23a45",
"assets/asset/image/image_sbl_app_2.png": "2972a66f19e8908eb0d0a36afa4535a0",
"assets/asset/image/image_fire_ant_4.png": "4c49bfa8f3413ffe188603c66a8f7e37",
"assets/asset/image/image_investar_backoffice.png": "5b23005b97432a5ea2d95a7334671d4d",
"assets/asset/image/image_investar_eng_2.png": "7cbce960fd11f25f8d65f3ec395f6b9c",
"assets/asset/image/image_investar_kor_8.png": "64e384266cf0993cc89e846875c95cfd",
"assets/asset/image/image_investar_kor_1.png": "ba9aada996b648069e28b517acbe4cdf",
"assets/asset/image/image_investar_eng_4.png": "f6baf0ea6ce4b190c7bf42cb9c30aeb6",
"assets/asset/image/image_investar_kor_6.png": "72dba2ec5a824867bdfecfa461ddd7e6",
"assets/asset/image/image_fire_ant_5.png": "57ebb4188ada9bb49e800a74bd01eabe",
"assets/asset/image/image_sbl_app_1.png": "5d47c91c91ea96986b1a33a6de995107",
"assets/asset/image/image_investar_eng_1.png": "e4ff35931726973e6d6b72afe9f474b9",
"assets/asset/image/image_fire_ant_6.png": "9dcefa242fd3c8b9f5176cd042e95e7a",
"assets/asset/image/image_investar_eng_5.png": "9002f298444289c9e19438bb28a99ce8",
"assets/asset/image/image_main.png": "94ea95329beb6f988dc29469844e7c21",
"assets/asset/image/image_cover_letter_2.png": "c7198341e046ee06690308e4f9a42a93",
"assets/asset/image/image_investar_eng_7.png": "413ed40126155a9623600d583053b8b2",
"assets/asset/image/image_investar_kor_5.png": "b17119aa1ed480590e5a5e4b683cf56b",
"assets/asset/image/image_sbl_app_3.png": "1d97c47356e2cc7b8ad99e815b77d3d8",
"assets/asset/image/image_investar_eng_3.png": "1d45c3fc00b256b519a1b018aec39f77",
"assets/asset/font/NanumSquareNeo/NanumSquareNeo-aLt.ttf": "e7218dfd0284a5e5b4a9ce231f88db65",
"assets/asset/font/NanumSquareNeo/NanumSquareNeo-eHv.ttf": "f7b7b6ffc8b5f20ed73cdb8f19f279d2",
"assets/asset/font/NanumSquareNeo/NanumSquareNeo-dEb.ttf": "7775f17c10a169509b8fca4156c621b6",
"assets/asset/font/NanumSquareNeo/NanumSquareNeo-bRg.ttf": "8e204e046fce31563177dd08b27ce94b",
"assets/asset/font/NanumSquareNeo/NanumSquareNeo-cBd.ttf": "d437afc2ea82bd95d2bc0c4b88de9573",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "b42f6ab2d18731be4a8e06302779c820",
"assets/fonts/MaterialIcons-Regular.otf": "eb76985b57fe5e722cf734bf9b1c8d41",
"assets/FontManifest.json": "b132d37337e24aed7070f0af135b2b09",
"assets/AssetManifest.bin.json": "122e94455c85e417ea37e6b20be397e5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/AssetManifest.json": "356fc08f784e861ccaa409a1c05a76d8",
"version.json": "6287e8a67c848231ae03677d60a5c009",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"main.dart.js": "1dde97182311a774e6a8f4404ae8953d",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"manifest.json": "2e80b11771bfece860bf33f24e3b47ca",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter_bootstrap.js": "dfb94672120eefed02d1cc38376b4c79"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
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
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
