export const config = { runtime: 'edge' };

const KV_URL = 'https://aware-mink-143835.upstash.io';
const KV_TOKEN = 'gQAAAAAAAjHbAAIgcDFkZDZmODNmZTlhOGE0OTIwYjY1Njg0ODJhYzRkYTYxNw';

async function kvGet(key) {
  const r = await fetch(`${KV_URL}/get/${encodeURIComponent(key)}`, {
    headers: { Authorization: `Bearer ${KV_TOKEN}` }
  });
  const d = await r.json();
  if (!d.result) return null;
  try { return JSON.parse(d.result); } catch { return d.result; }
}

async function kvSet(key, value) {
  await fetch(`${KV_URL}/set/${encodeURIComponent(key)}`, {
    method: 'POST',
    headers: { Authorization: `Bearer ${KV_TOKEN}`, 'Content-Type': 'application/json' },
    body: JSON.stringify(JSON.stringify(value))
  });
}

export default async function handler(req) {
  const url = new URL(req.url);
  const action = url.searchParams.get('action');
  const player = url.searchParams.get('player');
  const cors = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': 'GET, POST, OPTIONS',
    'Access-Control-Allow-Headers': 'Content-Type',
    'Content-Type': 'application/json'
  };
  if (req.method === 'OPTIONS') return new Response(null, { headers: cors });
  try {
    if (req.method === 'GET') {
      if (action === 'players') return new Response(JSON.stringify({ players: await kvGet('players') || [] }), { headers: cors });
      if (action === 'results') return new Response(JSON.stringify({ results: await kvGet('results') || {} }), { headers: cors });
      if (action === 'predictions' && player) return new Response(JSON.stringify({ preds: await kvGet(`preds:${player}`) || {} }), { headers: cors });
      if (action === 'all') {
        const players = await kvGet('players') || [];
        const results = await kvGet('results') || {};
        const pts = await kvGet('pts') || {};
        const fechaWinners = await kvGet('fechaWinners') || {};
        const allPreds = {};
        for (const p of players) { allPreds[p] = await kvGet(`preds:${p}`) || {}; }
        return new Response(JSON.stringify({ players, results, pts, fechaWinners, allPreds }), { headers: cors });
      }
    }
    if (req.method === 'POST') {
      const body = await req.json();
      if (action === 'save_players') { await kvSet('players', body.players); return new Response(JSON.stringify({ ok: true }), { headers: cors }); }
      if (action === 'save_results') { await kvSet('results', body.results); return new Response(JSON.stringify({ ok: true }), { headers: cors }); }
      if (action === 'save_prediction') { await kvSet(`preds:${body.player}`, body.preds); return new Response(JSON.stringify({ ok: true }), { headers: cors }); }
      if (action === 'save_pts') { await kvSet('pts', body.pts); await kvSet('fechaWinners', body.fechaWinners); return new Response(JSON.stringify({ ok: true }), { headers: cors }); }
    }
    return new Response(JSON.stringify({ error: 'Invalid action' }), { status: 400, headers: cors });
  } catch (e) {
    return new Response(JSON.stringify({ error: e.message }), { status: 500, headers: cors });
  }
}
