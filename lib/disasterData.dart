import 'package:google_maps_flutter/google_maps_flutter.dart';

const Map<String, dynamic> disasterData = {
"New York, NY": {
"coordinates": LatLng(40.7128, -74.0060),
"disasters": ["Hurricanes", "Flooding", "Blizzards"],
"tips": [
"Stay indoors during hurricanes and blizzards.",
"Keep extra food and water for extended emergencies.",
"Avoid flooded areas and downed power lines.",
"Have a family communication plan in place.",
],
"equipment": [
"Portable generator for power outages.",
"Snow shovel and ice melt for clearing snow.",
"Waterproof boots for flood-prone conditions."
],
},
"Los Angeles, CA": {
"coordinates": LatLng(34.0522, -118.2437),
"disasters": ["Earthquakes", "Wildfires"],
"tips": [
"Secure heavy furniture to walls.",
"Prepare an emergency evacuation plan.",
"Store essential supplies in a grab-and-go kit.",
"Keep emergency contact numbers accessible.",
],
"equipment": [
"Fire-resistant blankets for wildfire safety.",
"Earthquake survival kit with water, food, and tools.",
"Portable air purifier for smoke-filled air."
],
},
"Chicago, IL": {
"coordinates": LatLng(41.8781, -87.6298),
"disasters": ["Blizzards", "Flooding", "Tornadoes"],
"tips": [
"Avoid travel during snowstorms unless necessary.",
"Secure outdoor items to prevent them from becoming projectiles.",
"Move to a basement or interior room during tornado warnings.",
"Keep a weather radio for updates.",
],
"equipment": [
"Heavy-duty snow boots for winter conditions.",
"Battery-powered weather radio for tornado alerts.",
"Submersible pump for flood-prone basements."
],
},
"Houston, TX": {
"coordinates": LatLng(29.7604, -95.3698),
"disasters": ["Hurricanes", "Flooding"],
"tips": [
"Know your hurricane evacuation route.",
"Avoid walking or driving through floodwaters.",
"Stockpile food and water for at least 72 hours.",
"Board up windows to protect against hurricane winds.",
],
"equipment": [
"Hurricane shutters for window protection.",
"Waterproof storage containers for valuables.",
"Life jackets for severe flooding situations."
],
},
"Phoenix, AZ": {
"coordinates": LatLng(33.4484, -112.0740),
"disasters": ["Extreme Heat", "Dust Storms"],
"tips": [
"Stay indoors during dust storms.",
"Keep hydrated and avoid outdoor activities during heatwaves.",
"Ensure air conditioning systems are in good working condition.",
"Carry extra water when traveling.",
],
"equipment": [
"Portable water filtration system for emergencies.",
"Wide-brim hat for sun protection.",
"Dust masks for protection during storms."
],
},
"Philadelphia, PA": {
"coordinates": LatLng(39.9526, -75.1652),
"disasters": ["Flooding", "Blizzards"],
"tips": [
"Clear snow from driveways and roofs to prevent collapses.",
"Avoid driving through flooded areas.",
"Stay informed with local emergency broadcasts.",
"Keep a car emergency kit for winter conditions.",
],
"equipment": [
"Snow chains for tires during heavy snow.",
"Waterproof document case for important papers.",
"Portable heater for winter emergencies."
],
},
"San Antonio, TX": {
"coordinates": LatLng(29.4241, -98.4936),
"disasters": ["Flooding", "Heatwaves"],
"tips": [
"Avoid low-lying areas during heavy rain.",
"Stay hydrated and avoid strenuous outdoor activities during heatwaves.",
"Keep important documents in waterproof containers.",
"Monitor local alerts during storms.",
],
"equipment": [
"Cooling towels for heat relief.",
"Sandbags to mitigate flood damage.",
"Waterproof flashlight for emergencies."
],
},
"San Diego, CA": {
"coordinates": LatLng(32.7157, -117.1611),
"disasters": ["Wildfires", "Flooding"],
"tips": [
"Create defensible space around your home.",
"Avoid driving through flooded areas.",
"Keep emergency supplies for 72 hours.",
"Have a flashlight and batteries in case of power outages.",
],
"equipment": [
"Fireproof safe for valuables.",
"Portable air purifier for wildfire smoke.",
"Water-resistant footwear for floods."
],
},
  "Dallas, TX": {
    "coordinates": LatLng(32.7767, -96.7970),
    "disasters": ["Tornadoes", "Flooding"],
    "tips": [
      "Move to a basement or an interior room during tornado warnings.",
      "Secure outdoor items that could become projectiles.",
      "Avoid walking or driving through flooded areas.",
      "Keep a weather radio for updates.",
    ],
    "equipment": [
      "Weather radio",
      "Flashlights and extra batteries",
      "First-aid kit",
      "Portable phone chargers",
    ],
  },
  "San Jose, CA": {
    "coordinates": LatLng(37.3382, -121.8863),
    "disasters": ["Earthquakes", "Wildfires"],
    "tips": [
      "Identify safe spots in your home (like under sturdy tables).",
      "Have a supply of food and water for 72 hours.",
      "Practice fire drills with family members.",
      "Inspect your property for wildfire risks.",
    ],
    "equipment": [
      "Fire extinguisher",
      "Earthquake straps for furniture",
      "Emergency water and food supply",
      "N95 masks for smoke",
    ],
  },
  "Austin, TX": {
    "coordinates": LatLng(30.2672, -97.7431),
    "disasters": ["Flooding", "Heatwaves"],
    "tips": [
      "Have a backup power source for heatwaves.",
      "Avoid driving through flooded areas.",
      "Keep your vehicle's fuel tank at least half full.",
      "Stock up on non-perishable food and water.",
    ],
    "equipment": [
      "Portable fan or cooling devices",
      "Solar-powered chargers",
      "Non-perishable food",
      "Sandbags for flood prevention",
    ],
  },
  "Jacksonville, FL": {
    "coordinates": LatLng(30.3322, -81.6557),
    "disasters": ["Hurricanes", "Flooding"],
    "tips": [
      "Know your evacuation zone.",
      "Avoid beaches and coastal areas during hurricanes.",
      "Have a weather radio for real-time updates.",
      "Board up windows to protect against high winds.",
    ],
    "equipment": [
      "Hurricane shutters or plywood",
      "Emergency water and food supply",
      "Weather radio",
      "Portable generator",
    ],
  },
  "Fort Worth, TX": {
    "coordinates": LatLng(32.7555, -97.3308),
    "disasters": ["Tornadoes", "Flooding"],
    "tips": [
      "Identify a safe room in your home for tornadoes.",
      "Avoid areas prone to flash flooding.",
      "Secure outdoor items to prevent wind damage.",
      "Sign up for local weather alerts.",
    ],
    "equipment": [
      "Emergency blankets",
      "Flashlights and batteries",
      "Multi-tool or utility knife",
      "Portable weather radio",
    ],
  },
  "Columbus, OH": {
    "coordinates": LatLng(39.9612, -82.9988),
    "disasters": ["Tornadoes", "Blizzards"],
    "tips": [
      "Stay indoors during snowstorms.",
      "Move to an interior room during tornado warnings.",
      "Have a backup heat source for winter emergencies.",
      "Stock up on food and water for extended power outages.",
    ],
    "equipment": [
      "Snow shovel",
      "Backup heating source (e.g., kerosene heater)",
      "Non-slip boots",
      "Weatherproof blankets",
    ],
  },
  "Charlotte, NC": {
    "coordinates": LatLng(35.2271, -80.8431),
    "disasters": ["Hurricanes", "Flooding"],
    "tips": [
      "Know your area's flood risks.",
      "Have sandbags ready to prevent water intrusion.",
      "Secure loose outdoor items before storms.",
      "Keep emergency cash in case of power outages.",
    ],
    "equipment": [
      "Hurricane straps",
      "Waterproof document container",
      "Sandbags",
      "Battery-operated lanterns",
    ],
  },
  "San Francisco, CA": {
    "coordinates": LatLng(37.7749, -122.4194),
    "disasters": ["Earthquakes", "Flooding"],
    "tips": [
      "Keep shoes and a flashlight near your bed.",
      "Know how to shut off utilities in your home.",
      "Avoid walking near cliffs during heavy rains.",
      "Check for local alerts frequently during storms.",
    ],
    "equipment": [
      "Emergency whistle",
      "Shoes with good grip",
      "Earthquake kit with water and food",
      "Waterproof flashlight",
    ],
  },
  "Seattle, WA": {
    "coordinates": LatLng(47.6062, -122.3321),
    "disasters": ["Earthquakes", "Flooding"],
    "tips": [
      "Secure heavy furniture to walls to prevent tipping.",
      "Avoid driving through flooded areas during storms.",
      "Have emergency kits in your car and home.",
      "Practice earthquake drills with family members.",
    ],
    "equipment": [
      "Non-skid pads for furniture",
      "Portable power bank",
      "Multi-tool for emergencies",
      "Rain poncho",
    ],
  },
  "Denver, CO": {
    "coordinates": LatLng(39.7392, -104.9903),
    "disasters": ["Blizzards", "Flooding"],
    "tips": [
      "Keep extra blankets and warm clothing for snowstorms.",
      "Avoid walking or driving through flooded areas.",
      "Carry chains or snow tires during winter.",
      "Stock up on emergency food and water supplies.",
    ],
    "equipment": [
      "Snow chains",
      "Extra warm clothing",
      "Solar-powered flashlight",
      "Insulated water bottles",
    ],
  },
  "Washington, DC": {
    "coordinates": LatLng(38.9072, -77.0369),
    "disasters": ["Flooding", "Hurricanes"],
    "tips": [
      "Avoid flood-prone areas during heavy rain.",
      "Secure outdoor furniture during hurricanes.",
      "Keep important documents in waterproof containers.",
      "Have backup power sources for extended outages.",
    ],
    "equipment": [
      "Waterproof containers for documents",
      "Portable phone chargers",
      "Battery-powered radio",
      "Heavy-duty tarps",
    ],
  },
  "Fresno, CA": {
    "coordinates": LatLng(36.7378, -119.7871),
    "disasters": ["Wildfires", "Drought"],
    "tips": [
      "Conserve water during drought conditions.",
      "Avoid outdoor burning during high fire risk periods.",
      "Have an escape route planned in case of wildfires.",
      "Stay hydrated and avoid strenuous outdoor activities during heat waves.",
    ],
    "equipment": [
      "Fire extinguisher",
      "Reusable water containers",
      "N95 masks for smoke protection",
      "Emergency hydration tablets",
    ],
  },
  "Sacramento, CA": {
    "coordinates": LatLng(38.5816, -121.4944),
    "disasters": ["Flooding", "Heatwaves"],
    "tips": [
      "Elevate appliances and furniture in flood-prone areas.",
      "Stay indoors during excessive heat advisories.",
      "Have sandbags ready to prevent water intrusion.",
      "Avoid outdoor activities during peak heat hours.",
    ],
    "equipment": [
      "Sandbags",
      "Cooling towels",
      "Portable fans",
      "Insulated water bottles",
    ],
  },
  "Long Beach, CA": {
    "coordinates": LatLng(33.7701, -118.1937),
    "disasters": ["Earthquakes", "Flooding"],
    "tips": [
      "Secure water heaters and heavy furniture.",
      "Avoid walking or driving through floodwaters.",
      "Have a designated meeting spot for family members.",
      "Check for updates from local authorities regularly.",
    ],
    "equipment": [
      "Earthquake safety straps",
      "Flashlights with extra batteries",
      "Portable water filters",
      "Waterproof boots",
    ],
  },
  "Oakland, CA": {
    "coordinates": LatLng(37.8044, -122.2711),
    "disasters": ["Earthquakes", "Wildfires"],
    "tips": [
      "Inspect your home's foundation for cracks.",
      "Prepare an emergency supply kit with medications and documents.",
      "Avoid outdoor activities during high fire danger.",
      "Sign up for local emergency alerts.",
    ],
    "equipment": [
      "Emergency supply kit",
      "Fireproof document bags",
      "Portable phone chargers",
      "Smoke alarms",
    ],
  },
  "Bakersfield, CA": {
    "coordinates": LatLng(35.3733, -119.0187),
    "disasters": ["Heatwaves", "Wildfires"],
    "tips": [
      "Drink plenty of fluids to stay hydrated.",
      "Install fire-resistant roofing on your home.",
      "Check on neighbors during heatwaves.",
      "Clear flammable vegetation around your property.",
    ],
    "equipment": [
      "Fire-resistant blankets",
      "Cooling fans",
      "Evacuation backpacks",
      "Hydration packs",
    ],
  },
  "Anaheim, CA": {
    "coordinates": LatLng(33.8366, -117.9143),
    "disasters": ["Wildfires", "Earthquakes"],
    "tips": [
      "Store extra water and non-perishable food.",
      "Create a defensible space around your home.",
      "Inspect your home for earthquake vulnerabilities.",
      "Practice evacuation routes with your family.",
    ],
    "equipment": [
      "Emergency water storage",
      "Non-perishable food supplies",
      "Earthquake preparedness kit",
      "Fireproof safe",
    ],
  },
  "Santa Ana, CA": {
    "coordinates": LatLng(33.7455, -117.8677),
    "disasters": ["Flooding", "Wildfires"],
    "tips": [
      "Clear gutters and drains to reduce flood risk.",
      "Avoid outdoor activities near canyons during fire season.",
      "Have an emergency communication plan.",
      "Check weather updates frequently during storms.",
    ],
    "equipment": [
      "Waterproof tarps",
      "Emergency radios",
      "Fire extinguishers",
      "Sturdy gloves",
    ],
  },
  "Riverside, CA": {
    "coordinates": LatLng(33.9806, -117.3755),
    "disasters": ["Wildfires", "Earthquakes"],
    "tips": [
      "Inspect chimneys and vents for fire safety.",
      "Bolt bookshelves to the walls to prevent falling.",
      "Keep your vehicle's gas tank at least half full.",
      "Have a battery-powered radio for updates during emergencies.",
    ],
    "equipment": [
      "Gas masks",
      "Seismic activity detectors",
      "Portable generators",
      "Safety goggles",
    ],
  },
  "Stockton, CA": {
    "coordinates": LatLng(37.9577, -121.2908),
    "disasters": ["Flooding", "Earthquakes"],
    "tips": [
      "Know your area's flood zones and evacuation routes.",
      "Ensure your home has adequate drainage systems.",
      "Practice earthquake drills regularly.",
      "Keep emergency kits both at home and in your car.",
    ],
    "equipment": [
      "Flood barriers",
      "Car emergency kits",
      "Flashlights with batteries",
      "Sturdy footwear",
    ],
  },
  "Chula Vista, CA": {
    "coordinates": LatLng(32.6401, -117.0842),
    "disasters": ["Wildfires", "Flooding"],
    "tips": [
      "Keep copies of important documents in a fireproof safe.",
      "Know how to turn off gas and water lines in your home.",
      "Avoid outdoor activities during heavy rains.",
      "Follow fire safety precautions during outdoor cooking.",
    ],
    "equipment": [
      "Fireproof safes",
      "Gas shut-off tools",
      "Rain-resistant clothing",
      "Waterproof flashlights",
    ],
  },
  "Irvine, CA": {
    "coordinates": LatLng(33.6846, -117.8265),
    "disasters": ["Earthquakes", "Wildfires"],
    "tips": [
      "Install smoke detectors and fire alarms in your home.",
      "Keep emergency cash in case ATMs are inaccessible.",
      "Avoid parking vehicles on dry grass during fire season.",
      "Review your homeowner's insurance policy for disaster coverage.",
    ],
    "equipment": [
      "Fire alarms",
      "Cash safes",
      "Emergency survival kits",
      "Water storage tanks",
    ],
  },
};
