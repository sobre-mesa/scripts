echo "Initializing TailwindCSS..."
npm install tailwindcss@latest postcss@latest autoprefixer@latest
npx tailwindcss init
echo "Add:  content: ['./src/**/*.{html,js}'], to tailwind.config.js"
TAILWIND_CJS="/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./src/**/*.{html,js}'],
  theme: {
    extend: {},
  },
  plugins: [],
}"
rm ./tailwind.config.js
echo "$TAILWIND_CJS" > tailwind.config.js
echo "Done!"

echo "Prepend Tailwind Directives to src/styles.css"
echo "@tailwind base;" >> app/globals.css
echo "@tailwind components;" >> app/globals.css
echo "@tailwind utilities;" >> app/globals.css
echo "Done!"