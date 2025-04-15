import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import path from 'path';

const isProd = process.env.NODE_ENV === 'production';

export default defineConfig({
  plugins: [react()],
  resolve: {
    alias: {
      '@components': isProd
        ? path.resolve(__dirname, 'node_modules/@bit-local-scope/components')
        : path.resolve(__dirname, 'component-library/src/components'),
    },
  },
});
