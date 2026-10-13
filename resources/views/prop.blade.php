<!doctype html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Propuesta Rincón Chami</title>
<meta name="robots" content="noindex, nofollow">
<style>
  @import url('https://fonts.googleapis.com/css2?family=Fraunces:ital,opsz,wght@0,9..144,500;0,9..144,600;0,9..144,700&family=IBM+Plex+Sans:wght@400;500;600;700&family=IBM+Plex+Mono:wght@500;600&display=swap');

  :root {
    --paper: #faf7f1;
    --paper-raised: #ffffff;
    --ink: #221d16;
    --ink-soft: #6c6153;
    --rule: #ddd2bd;
    --accent: #a8440a;
    --accent-soft: #f1e2cf;
    --navy: #16303a;
    --bar-track: #ece0cf;
    --bar-muted: #b7a890;
    --good: #3a6b4a;
    --good-soft: #e5ede6;
  }
  @media (prefers-color-scheme: dark) {
    :root:not([data-theme="light"]) {
      --paper: #1a1612;
      --paper-raised: #231e19;
      --ink: #efe6d8;
      --ink-soft: #b2a492;
      --rule: #3a3024;
      --accent: #e8793c;
      --accent-soft: #392a1c;
      --navy: #a9cdd9;
      --bar-track: #332920;
      --bar-muted: #6e5f4c;
      --good: #7fbd92;
      --good-soft: #213228;
    }
  }
  :root[data-theme="dark"] {
    --paper: #1a1612;
    --paper-raised: #231e19;
    --ink: #efe6d8;
    --ink-soft: #b2a492;
    --rule: #3a3024;
    --accent: #e8793c;
    --accent-soft: #392a1c;
    --navy: #a9cdd9;
    --bar-track: #332920;
    --bar-muted: #6e5f4c;
    --good: #7fbd92;
    --good-soft: #213228;
  }

  * { box-sizing: border-box; }
  body {
    background: var(--paper);
    color: var(--ink);
    font-family: 'IBM Plex Sans', system-ui, sans-serif;
    padding-inline: 20px;
    padding-block: 48px;
    line-height: 1.6;
    font-size: 15.5px;
    margin: 0;
  }
  .doc { max-width: 760px; margin: 0 auto; }

  .letterhead {
    display: flex; justify-content: space-between; align-items: flex-start;
    gap: 20px; flex-wrap: wrap;
    border-bottom: 2px solid var(--ink);
    padding-bottom: 22px; margin-bottom: 8px;
  }
  .letterhead .from strong { font-size: 1.05rem; display: block; }
  .letterhead .from span { color: var(--ink-soft); font-size: 0.85rem; }
  .letterhead .doc-meta {
    text-align: right; font-family: 'IBM Plex Mono', monospace;
    font-size: 0.8rem; color: var(--ink-soft); line-height: 1.7;
  }

  .titleblock { padding-block: 30px 10px; }
  .titleblock .eyebrow {
    font-family: 'IBM Plex Mono', monospace; font-size: 0.78rem;
    letter-spacing: 0.08em; text-transform: uppercase; color: var(--accent);
    margin-bottom: 10px;
  }
  .titleblock h1 {
    font-family: 'Fraunces', serif; font-weight: 600;
    font-size: clamp(1.75rem, 4.5vw, 2.3rem); line-height: 1.18;
    margin: 0 0 14px; text-wrap: balance;
  }
  .titleblock p.summary {
    font-size: 1rem; color: var(--ink-soft); max-width: 60ch; margin: 0;
  }

  .to-line {
    display: flex; gap: 32px; flex-wrap: wrap;
    margin-top: 22px; padding-top: 18px; border-top: 1px solid var(--rule);
    font-size: 0.88rem;
  }
  .to-line .f strong { display: block; font-size: 0.72rem; letter-spacing: 0.06em; text-transform: uppercase; color: var(--ink-soft); margin-bottom: 2px; }

  section { padding-block: 34px; border-bottom: 1px solid var(--rule); }
  section:last-of-type { border-bottom: none; }

  .sec-head { display: flex; align-items: baseline; gap: 10px; margin-bottom: 6px; }
  .sec-num {
    font-family: 'IBM Plex Mono', monospace; color: var(--accent);
    font-weight: 600; font-size: 0.92rem;
  }
  h2.h {
    font-family: 'Fraunces', serif; font-weight: 600; font-size: 1.32rem;
    margin: 0; text-wrap: balance;
  }
  p.sub { color: var(--ink-soft); margin: 10px 0 22px; max-width: 62ch; }

  .exec-box {
    background: var(--paper-raised); border: 1px solid var(--rule);
    border-left: 3px solid var(--accent); border-radius: 4px;
    padding: 20px 22px; font-size: 0.95rem;
  }
  .exec-box p { margin: 0 0 10px; }
  .exec-box p:last-child { margin: 0; }
  .exec-box strong { color: var(--accent); }

  .chart-card { background: var(--paper-raised); border: 1px solid var(--rule); border-radius: 6px; padding: 24px 24px 20px; }
  .chart-title { font-size: 0.92rem; font-weight: 600; margin: 0 0 2px; }
  .chart-caption { font-size: 0.8rem; color: var(--ink-soft); margin: 0 0 20px; }
  .bar-row { margin-bottom: 16px; }
  .bar-row:last-child { margin-bottom: 0; }
  .bar-label { display: flex; justify-content: space-between; align-items: baseline; font-size: 0.86rem; margin-bottom: 6px; }
  .bar-label .val { font-family: 'IBM Plex Mono', monospace; font-variant-numeric: tabular-nums; font-weight: 600; font-size: 0.92rem; }
  .bar-track { height: 13px; background: var(--bar-track); border-radius: 6px; overflow: hidden; }
  .bar-fill { height: 100%; border-radius: 6px; }
  .bar-row.muted .bar-fill { background: var(--bar-muted); }
  .bar-row.muted .val { color: var(--ink-soft); }
  .bar-row.win .bar-fill { background: var(--accent); }
  .bar-row.win .name, .bar-row.win .val { color: var(--accent); }

  table.ledger { width: 100%; border-collapse: collapse; font-size: 0.9rem; }
  table.ledger caption {
    text-align: left; font-weight: 600; font-size: 0.95rem;
    padding-bottom: 10px; caption-side: top;
  }
  table.ledger th {
    text-align: left; font-size: 0.72rem; letter-spacing: 0.05em; text-transform: uppercase;
    color: var(--ink-soft); font-weight: 600; padding: 0 0 8px; border-bottom: 1px solid var(--rule);
  }
  table.ledger th.num, table.ledger td.num { text-align: right; }
  table.ledger td { padding: 9px 0; border-bottom: 1px dashed var(--rule); font-variant-numeric: tabular-nums; }
  table.ledger td.num { font-family: 'IBM Plex Mono', monospace; }
  table.ledger tr.neg td { color: var(--ink-soft); }
  table.ledger tr.result td { border-top: 2px solid var(--ink); border-bottom: none; padding-top: 12px; font-weight: 600; }
  table.ledger tr.result td.num { font-size: 1.05rem; color: var(--good); }

  .side-by-side { display: grid; grid-template-columns: 1fr 1fr; gap: 18px; margin-top: 18px; }
  @media (max-width: 560px) { .side-by-side { grid-template-columns: 1fr; } }
  .panel { background: var(--paper-raised); border: 1px solid var(--rule); border-radius: 6px; padding: 18px 20px; }
  .panel.win { border-color: var(--good); border-left-width: 3px; }

  .delta-stat {
    display: flex; align-items: baseline; gap: 10px; flex-wrap: wrap;
    margin-top: 20px; padding: 16px 18px; background: var(--good-soft);
    border-radius: 6px;
  }
  .delta-stat .num { font-family: 'Fraunces', serif; font-weight: 600; font-size: 1.7rem; color: var(--good); }
  .delta-stat .txt { font-size: 0.86rem; color: var(--ink); }

  .formula-box {
    background: var(--paper-raised); border: 1px solid var(--rule); border-radius: 6px;
    padding: 18px 20px; font-family: 'IBM Plex Mono', monospace; font-size: 0.86rem;
    line-height: 1.8; overflow-x: auto;
  }
  .formula-box .lbl { color: var(--ink-soft); }

  .steps { counter-reset: step; }
  .step { display: grid; grid-template-columns: 34px 1fr; gap: 14px; padding-block: 14px; border-bottom: 1px dashed var(--rule); }
  .step:last-child { border-bottom: none; }
  .step .n { counter-increment: step; font-family: 'IBM Plex Mono', monospace; color: var(--accent); font-weight: 600; font-size: 0.9rem; }
  .step .n::before { content: counter(step, decimal-leading-zero); }
  .step strong { display: block; margin-bottom: 2px; font-size: 0.95rem; }
  .step span { color: var(--ink-soft); font-size: 0.87rem; }

  .pricing-box { background: var(--navy); color: var(--paper); border-radius: 8px; padding: 26px 24px; }
  .pricing-box .row { display: flex; justify-content: space-between; align-items: baseline; padding-block: 10px; border-bottom: 1px solid rgba(255,255,255,0.14); }
  .pricing-box .row:last-child { border-bottom: none; padding-top: 14px; }
  .pricing-box .row .label { font-size: 0.9rem; opacity: 0.82; }
  .pricing-box .row .amt { font-family: 'IBM Plex Mono', monospace; font-weight: 600; font-size: 1.05rem; font-variant-numeric: tabular-nums; }
  .pricing-box .row.total .amt { font-size: 1.4rem; color: var(--accent); }
  .pricing-box .row.total .label { font-size: 0.98rem; opacity: 1; font-weight: 500; }
  .pricing-note { margin-top: 14px; font-size: 0.82rem; color: var(--ink-soft); }

  .closing { padding-top: 36px; }
  .closing p { margin: 0 0 14px; max-width: 60ch; }
  .sign { margin-top: 28px; font-size: 0.9rem; }
  .sign strong { display: block; font-family: 'Fraunces', serif; font-size: 1.05rem; font-weight: 600; }
  .sign span { color: var(--ink-soft); }
</style>
</head>
<body>

<div class="doc">

  <div class="letterhead">
    <div class="from">
      <strong>Nilver Ayala Gaytán — Desarrollo Web</strong>
      <span>fullstacklver.dev</span>
    </div>
    <div class="doc-meta">
      <div>PROP-2026-RC01</div>
      <div>12 de octubre, 2026</div>
      <div>Válida 30 días</div>
    </div>
  </div>

  <div class="titleblock">
    <div class="eyebrow">Propuesta comercial</div>
    <h1>Sistema de pedidos online con pago integrado para Rincón Chami</h1>
    <p class="summary">Implementación de checkout propio (tarjeta, Yape, Plin), cálculo automático de envío y confirmación por WhatsApp, sobre el sitio web que Rincón Chami ya tiene.</p>

    <div class="to-line">
      <div class="f"><strong>Preparado para</strong>Rincón Chami · rinconchami.com</div>
      <div class="f"><strong>Preparado por</strong>Nilver Ayala Gaytán, fullstacklver.dev</div>
    </div>
  </div>

  <section>
    <div class="sec-head"><span class="sec-num">01</span><h2 class="h">Resumen ejecutivo</h2></div>
    <div class="exec-box">
      <p>Rincón Chami ya cuenta con un sitio web propio, desarrollado y pagado previamente, que hoy no genera ventas. En paralelo, una parte importante de sus pedidos de delivery pasa por plataformas de terceros que retienen entre <strong>15% y 30%</strong> del valor de cada venta.</p>
      <p>Esta propuesta activa el sitio existente con pedidos online, pago integrado y cálculo automático de envío, permitiendo capturar directamente la venta de la clientela recurrente — sin reemplazar el sistema de facturación actual y sin afectar el uso de plataformas de delivery para la captación de nuevos clientes.</p>
    </div>
  </section>

  <section>
    <div class="sec-head"><span class="sec-num">02</span><h2 class="h">Comparación de canales</h2></div>
    <p class="sub">Mismo pedido, mismo cliente. La diferencia está en qué canal lo procesa y qué porcentaje retiene.</p>

    <div class="chart-card">
      <p class="chart-title">Monto retenido por el restaurante, por canal</p>
      <p class="chart-caption">Referencia: pedido de S/ 50, comisiones promedio Perú 2026</p>

      <div class="bar-row muted">
        <div class="bar-label"><span>Rappi — plan básico (28%)</span><span class="val">S/ 36.00</span></div>
        <div class="bar-track"><div class="bar-fill" style="width:72%"></div></div>
      </div>
      <div class="bar-row muted">
        <div class="bar-label"><span>Rappi — reparto propio (17%)</span><span class="val">S/ 41.50</span></div>
        <div class="bar-track"><div class="bar-fill" style="width:83%"></div></div>
      </div>
      <div class="bar-row win">
        <div class="bar-label"><span>Pedido por canal propio</span><span class="val">S/ 48.00</span></div>
        <div class="bar-track"><div class="bar-fill" style="width:96%"></div></div>
      </div>
    </div>
  </section>

  <section>
    <div class="sec-head"><span class="sec-num">03</span><h2 class="h">Caso aplicado — Lomo Saltado, S/ 62</h2></div>
    <p class="sub">Precio real tomado del listado actual de Rincón Chami en Rappi, vendido al mismo precio por canal propio — sin inflar el plato. Comparado contra el mismo pedido procesado por Rappi, a dos distancias de entrega.</p>

    <div class="side-by-side">
      <div class="panel">
        <table class="ledger">
          <caption>Vía Rappi (plan básico, 28%)</caption>
          <tbody>
            <tr><td>Producto (precio listado en Rappi)</td><td class="num">S/ 62.00</td></tr>
            <tr class="neg"><td>Comisión Rappi (28%)</td><td class="num">− S/ 17.36</td></tr>
            <tr class="result"><td>Le queda al restaurante</td><td class="num">S/ 44.64</td></tr>
          </tbody>
        </table>
      </div>

      <div class="panel win">
        <table class="ledger">
          <caption>Vía canal propio — entrega a 5 km</caption>
          <tbody>
            <tr><td>Producto (mismo precio de carta)</td><td class="num">S/ 62.00</td></tr>
            <tr><td>Envío (a cargo del cliente)</td><td class="num">+ S/ 9.50</td></tr>
            <tr class="neg"><td>Comisión Culqi (3.44% + $0.20 + IGV)</td><td class="num">− S/ 3.80</td></tr>
            <tr class="neg"><td>Pago a conductor de reparto</td><td class="num">− S/ 6.00</td></tr>
            <tr class="result"><td>Le queda al restaurante</td><td class="num">S/ 61.70</td></tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="side-by-side" style="margin-top:14px">
      <div class="panel win" style="grid-column:1/-1">
        <table class="ledger">
          <caption>Vía canal propio — entrega a 10 km</caption>
          <tbody>
            <tr><td>Producto (mismo precio de carta)</td><td class="num">S/ 62.00</td></tr>
            <tr><td>Envío (a cargo del cliente)</td><td class="num">+ S/ 17.00</td></tr>
            <tr class="neg"><td>Comisión Culqi (3.44% + $0.20 + IGV)</td><td class="num">− S/ 4.10</td></tr>
            <tr class="neg"><td>Pago a conductor de reparto</td><td class="num">− S/ 11.00</td></tr>
            <tr class="result"><td>Le queda al restaurante</td><td class="num">S/ 63.90</td></tr>
          </tbody>
        </table>
      </div>
    </div>

    <div class="delta-stat">
      <span class="num">+S/ 17 a +S/ 19</span>
      <span class="txt">más por pedido vs. Rappi, según la distancia de entrega — vendiendo siempre al mismo precio de carta. El margen del envío cubre por completo la comisión de la pasarela de pago, y crece mientras más lejos es la entrega.</span>
    </div>
  </section>

  <section>
    <div class="sec-head"><span class="sec-num">04</span><h2 class="h">Cálculo del costo de envío</h2></div>
    <p class="sub">Tarifa estructurada en dos tramos, calibrada sobre el costo real de reparto por aplicativo (InDrive), con margen garantizado en ambos tramos.</p>
    <div class="formula-box">
<span class="lbl">si distancia ≤ 4 km</span>  →  S/ 8.00 (tarifa fija)
<span class="lbl">si distancia &gt; 4 km</span>  →  S/ 8.00 + (km − 4) × S/ 1.50
    </div>
    <p class="sub" style="margin-top:16px; margin-bottom:0">Distancia calculada automáticamente a partir de la dirección del cliente (geocodificación vía OpenStreetMap, sin costo por consulta). Tarifa base y por kilómetro configurables desde el panel administrativo.</p>
  </section>

  <section>
    <div class="sec-head"><span class="sec-num">05</span><h2 class="h">Funcionamiento del sistema</h2></div>
    <div class="steps">
      <div class="step"><div class="n"></div><div><strong>Pedido y pago en la web</strong><span>El cliente arma su pedido y paga con tarjeta, Yape o Plin; el envío se calcula y se suma automáticamente</span></div></div>
      <div class="step"><div class="n"></div><div><strong>Confirmación automática</strong><span>El cliente recibe un WhatsApp de confirmación; el local recibe un WhatsApp con el detalle del pedido y contacto directo del cliente</span></div></div>
      <div class="step"><div class="n"></div><div><strong>Preparación</strong><span>El pedido aparece en el panel administrativo del local, ya pagado y confirmado</span></div></div>
      <div class="step"><div class="n"></div><div><strong>Reparto</strong><span>El operador coordina el envío (InDrive u otro) con el monto de envío ya cobrado al cliente</span></div></div>
      <div class="step"><div class="n"></div><div><strong>Facturación</strong><span>El pedido se registra en el sistema de facturación habitual del restaurante, sin cambios en ese proceso</span></div></div>
    </div>
  </section>

  <section>
    <div class="sec-head"><span class="sec-num">06</span><h2 class="h">Compatibilidad con el sistema actual</h2></div>
    <p class="sub">Esta implementación no reemplaza ni interfiere con el proveedor de facturación y punto de venta actualmente en uso. Se integra como canal adicional de captación de pedidos, manteniendo sin cambios el proceso de facturación electrónica existente.</p>
  </section>

  <section>
    <div class="sec-head"><span class="sec-num">07</span><h2 class="h">Inversión</h2></div>
    <p class="sub">Implementación de pago único más plan anual de hosting, mantenimiento y soporte técnico.</p>
    <div class="pricing-box">
      <div class="row"><span class="label">Implementación (pago único)</span><span class="amt">$370</span></div>
      <div class="row"><span class="label">Plan anual — hosting, soporte, actualizaciones</span><span class="amt">$500 / año</span></div>
      <div class="row total"><span class="label">Total para iniciar</span><span class="amt">$870</span></div>
    </div>
    <p class="pricing-note">A partir del segundo año: únicamente el plan anual, $500. La comisión de la pasarela de pago (Culqi) se descuenta automáticamente por transacción y no forma parte de este cobro.</p>
  </section>

  <div class="closing">
    <p>Quedo a disposición para resolver cualquier consulta y coordinar una reunión para revisar esta propuesta en detalle.</p>
    <div class="sign">
      <strong>Nilver Ayala Gaytán</strong>
      <span>Desarrollo Web — fullstacklver.dev</span>
    </div>
  </div>

</div>
</body>
</html>
