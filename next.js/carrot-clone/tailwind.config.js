module.exports = {
  content: [
    // 해당 경로에서 tailwind가 사용된다는 것을 명시해 줍니다
    "./pages/**/*.{js,jsx,ts,tsx}",
    "./components/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {},
  },
  darkMode: "class",
  plugins: [require("@tailwindcss/forms")],
};
