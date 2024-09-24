/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js}", "./node_modules/flowbite/**/*.js"],
  theme: {
    extend: {
      colors: {
          "primaryColor": "#2BA6DD",
          "secondaryColor": "#FFFF00",
          "chooseLangOn": "#E2EFF6",
          "chooseLangOff": "#EEEEEE",
          "questionColor": "#FFFF03",
          "blackColor": "#000",
          "btnPresentationIcon": "#A9A9A9"
      },
      fontSize: {
        "lSize": 48,
        "largeSize": 36,
        "mediumSize": 28,
        "btnText": 20,
        "langSize": 22,
        "textSize": 18,
        "iconSize": 22,
        "smallBtn": 15,
      },
      fontFamily: {
        "comfortaa": "Comfortaa",
        "dmSerifDisplay": "DM Serif Display",
        "openSans": "Open Sans",
      },
      borderRadius: {
        "borderRadius": 4,
        "borderBottomNavigationRadius": 24,
      },
      borderWidth: {
        "borderWidth": 1.5,
      },
      letterSpacing: {
        "letterSpacing": 0.5,
      },
      lineSpacing: {
        "lineSpacing": 0.8
      },
      padding: {
        "padVertical": 16,
        "pad": 24,
        "5percent": "5%",
        "3percent": "3%",
        "10percent": "10%",
        "15percent": "15%",
        "20percent": "20%",
        "30percent": "30%",
        "40percent": "40%",
        "50percent": "50%",
        "60percent": "60%",
        "70percent": "70%",
        "80percent": "80%",
        "90percent": "90%",
        "emptySpace": 50,
        "hSpacing": 20,
      },
      gap: {
        "padVertical": 16,
        "pad": 24,
      },
      margin: {
        "padVertical": 16,
        "pad": 24,
        "5percent": "5%",
        "3percent": "3%",
        "10percent": "10%",
        "15percent": "15%",
        "20percent": "20%",
        "30percent": "30%",
        "40percent": "40%",
        "50percent": "50%",
        "60percent": "60%",
        "70percent": "70%",
        "80percent": "80%",
        "90percent": "90%",
        "emptySpace": 50,
        "hSpacing": 20,
      },
      height: {
        "emptySpace": 50,
        "hSpacing": 20,
        "5percent": "5%",
        "3percent": "3%",
        "10percent": "10%",
        "15percent": "15%",
        "20percent": "20%",
        "30percent": "30%",
        "40percent": "40%",
        "50percent": "50%",
        "60percent": "60%",
        "70percent": "70%",
        "80percent": "80%",
        "90percent": "90%",
      },
      width: {
        "emptySpace": 50,
        "hSpacing": 20,
        "5percent": "5%",
        "3percent": "3%",
        "10percent": "10%",
        "15percent": "15%",
        "20percent": "20%",
        "30percent": "30%",
        "40percent": "40%",
        "50percent": "50%",
        "60percent": "60%",
        "70percent": "70%",
        "80percent": "80%",
        "90percent": "90%",
      }
    },
  },
  plugins: [
    require('flowbite/plugin')({
      charts: true,
    })
  ]
}