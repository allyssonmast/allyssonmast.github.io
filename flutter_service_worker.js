'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"main.dart.js": "67460085161818b745ca24211b0518c6",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "484ce1a548d4f435903c043e89204ea3",
"manifest.json": "51dac60bd713900d3c1f6f850e350179",
"assets/asset/homebar_3.jpg": "43e70bd37b229c8965b3fa4d813233da",
"assets/asset/banda_1.jpg": "2f6b3a944e03e5f4ee1c94643e63da20",
"assets/asset/events.mp4": "2d4487a3e58a1690c4829c2ff0d98eeb",
"assets/asset/addprod_1.jpg": "bf983b9e4b03ecce34bcce62174c4ae6",
"assets/asset/event_3.jpg": "66faff00331d98c769976b45777809fe",
"assets/asset/historico_1.jpg": "6aa30ca288a0912e14b75992a7e4fee4",
"assets/asset/produtos_2.jpg": "e451e1cf21709aef27f337069696e676",
"assets/asset/reservabar_1.jpg": "cf9c07d48f428d364ccd531a19590f7a",
"assets/asset/band.jpg": "999913831c4865a7ced9f06919528380",
"assets/asset/event_2.jpg": "a4bd8066c0eee012a1a1c449eac32851",
"assets/asset/home_nobuteco.png": "97f3d52a68159190788385765d442bd7",
"assets/asset/produtos_3.jpg": "917fa2540df0f8adea5f0ff065351647",
"assets/asset/loginbar_2.jpg": "90a4f8831abe5689bc97b248fa7f60f5",
"assets/asset/home_erp.png": "1eed278863f99cb56bd3f75c47ea44b5",
"assets/asset/reserva_2.jpg": "ecb1e87728cb91d1c95983eabf7dc08d",
"assets/asset/perfil_2.jpg": "6041182db71cc74aeeecca6a1fe38089",
"assets/asset/pedido_3.jpg": "f4cd02bc111e1a211dab9bd6f43608ab",
"assets/asset/pagamentobar_2.jpg": "4d4a399bb95fb8eaef8534f68780f8b8",
"assets/asset/homebar_2.jpg": "b08c500be2b93e685a61550c3f808ed7",
"assets/asset/perfil_1.jpg": "c40c93b0cca2e91b5a50fe085554ddc1",
"assets/asset/login_2.jpg": "771e49d0f64a5f640af618f41c43b328",
"assets/asset/logo_app.png": "9a3e55227b4f5acca83c84626c3f9bfb",
"assets/asset/pedido_2.jpg": "061f776d073f975138189226c1721337",
"assets/asset/siemens.png": "bb7221ee9eb59526207e8b03f7455805",
"assets/asset/happy.jpg": "b559e1a1643b63bf568496dee70e9302",
"assets/asset/home_1.jpg": "c4f25f213942a099e067dcad67b16350",
"assets/asset/map_2.jpg": "2ccb0173bde2f0ccf86b7eb6d6494b93",
"assets/asset/lottie.json": "4fb901eda495bfe49b855e2c6629c6b1",
"assets/asset/pesquisa.mp4": "9f6fd7dc2b4320763e26329c7bd5b048",
"assets/asset/perfil_3.jpg": "ab8e587b2962d8a387ae87e2b9b7972b",
"assets/asset/baker.jpg": "5774162191298573b1864de108ddbeeb",
"assets/asset/homebar_4.jpg": "4b1ada97334b25c5238e45abe8e213b9",
"assets/asset/login_3.jpg": "89a877cfa1f8540884159ee932d03352",
"assets/asset/cardapio_.jpg": "0ebaa3da3622a20d0eb35eb60c4a136b",
"assets/asset/garcom.jpg": "b2e3892fd1e6bad8a9f6cc9df46d3b38",
"assets/asset/reservabar_3.jpg": "c4da048f78e361cc537a34e8dc0a521f",
"assets/asset/pagamentobar_1.jpg": "ee380cd89e28fa5ccdd837c7405522ec",
"assets/asset/historico_2.jpg": "7e0cfbf2fdfef5b50c46140eec041904",
"assets/asset/addprod_2.jpg": "60847dbd4d642d3a47905003d2301986",
"assets/asset/pagamento_1.jpg": "158e0b514ed13e5d1da8b8a838620b58",
"assets/asset/home_2.jpg": "f53abc8dacc45d1c81b7012ad7843edd",
"assets/asset/reserva_1.jpg": "a300d3b4cb100f26c90d6c7c49e71f48",
"assets/asset/lottie_2.json": "aa980003e1a3a684fbce968adb3e7ab7",
"assets/asset/login.jpg": "848c10f7a4761cfa10d38b47144848ef",
"assets/asset/logo_ufrn.png": "d974acdb2094d46164cea5a7da6cd1a6",
"assets/asset/homebar_5.jpg": "00464dc12af334fa8045c9448e2e4d5a",
"assets/asset/event_1.jpg": "87a67e334bb657ef4ab4c8d6da989997",
"assets/asset/pagamentobar_3.jpg": "761571fa7557898a588f467e2282b2ea",
"assets/asset/reservabar_2.jpg": "f76354e57f60fa2dfce9531f78032fe3",
"assets/asset/assinatura_2.jpg": "5dbc27bbb115faf63b9453277f4241d1",
"assets/asset/qr_2.jpg": "66a0251b42dfe30bf552fc4f36d3a037",
"assets/asset/home.mp4": "e95d17b8b355fe643b151147f3a67b94",
"assets/asset/produtos_1.jpg": "0551605bd3044ec7eecffb7295391e55",
"assets/asset/banda_2.jpg": "a5a498d1c996edf555ba05380569ffbf",
"assets/asset/loginbar_1.jpg": "9016b2782d168d6d5b8339420da15463",
"assets/asset/logo_erp.png": "82a0eff47d961873795443c626e003be",
"assets/asset/qr_1.jpg": "b58910c553a53591a82d0e6a6f189960",
"assets/asset/googleplay_appstore.png": "d9929e98e4438e220fee3edbadf8d3b9",
"assets/asset/assinatura_1.jpg": "611d4a8af629350eef4f5039b2b86203",
"assets/asset/cardapio_2.jpg": "8f960e162268833687de20ae9c52f4ac",
"assets/asset/map_1.jpg": "c084af0eb8a32fbdd532ac9070eb8cf2",
"assets/asset/pedido_1.jpg": "fe4f4ec947b82256ad9447186909c4ca",
"assets/asset/pesquisa_2.jpg": "73da9d75e33f670e6a70956e4d27b27d",
"assets/asset/pagamento_2.jpg": "d8ecb3db93908bbba5ff3921828f1c8b",
"assets/asset/pesquisa_1.jpg": "590579f0f9823b7a33775c9516cc9390",
"assets/asset/reserva_3.jpg": "8b943a5675652a71b6334ca67164dd72",
"assets/asset/me.jpeg": "8fe54d8434e279b6fd052618dac91512",
"assets/asset/homebar_1.jpg": "c1468c29d069ac995c96c738557a91e7",
"assets/asset/addprod_3.jpg": "406523148706035db680dc5b0ab203e8",
"assets/asset/produtos_4.jpg": "8a4d86ab558353b55b705619445ecb65",
"assets/asset/logo_ilmenau.png": "c3b10a2e4fa4b7438a314e998f5062cb",
"assets/asset/loginbar_3.jpg": "3fe6229181f11961450d5ab97557109a",
"assets/AssetManifest.json": "ab3d9701473c4ef3e11fc824a1346e6c",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "9cda082bd7cc5642096b56fa8db15b45",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "0a94bab8e306520dc6ae14c2573972ad",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b00363533ebe0bfdb95f3694d7647f6d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/simple_icons/fonts/SimpleIcons.ttf": "6f12ee07cbfada68d794ba108fed5106",
"assets/FontManifest.json": "e363a47fc8878b322af0dea56540fe8e",
"assets/NOTICES": "3120cb4fcab04ab849d4b28e7fb81a43",
"index.html": "a2e3b0186db069763036d2b01d28707e",
"/": "a2e3b0186db069763036d2b01d28707e",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"splash/splash.json": "aa980003e1a3a684fbce968adb3e7ab7",
"splash/style.css": "8933c6b9b0ba44f67ae7472f9866bad5"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
