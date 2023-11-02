/** @type {import('tailwindcss').Config} */
module.exports = {
  prefix: 'tw-',
  content: ['./src/**/*.{html,ts,scss}'],
  theme: {
    extend: {
      flex: {
        1: '1 1 0', // Default is '1 1 0%'
      },
    },
  },
  plugins: [],
  important: true,
};
