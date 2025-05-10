import React from 'react';
import Layout from '@theme/Layout';

export default function Home() {
  return (
    <Layout title="Estudo QA" description="Portal de estudo de QA da EBAC">
      <main style={{ padding: '3rem', textAlign: 'center' }}>
        <h1>Bem-vindo ao Estudo de QA 📘</h1>
        <p style={{ fontSize: '1.2rem' }}>
          Explore os módulos no menu acima e aprofunde seus conhecimentos em Garantia de Qualidade.
        </p>
      </main>
    </Layout>
  );
}
