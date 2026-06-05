const KV_URL = process.env.KV_REST_API_URL;
const KV_TOKEN = process.env.KV_REST_API_TOKEN;

async function kvGet(key) {
  const r = await fetch(`${KV_URL}/get/${encodeURIComponent(key)}`, {
    headers: { Authorization: `Bearer ${KV_TOKEN}` }
  });
  const d = await r.json();
  if (d.result === null || d.result === undefined) return null;
  try { return JSON.parse(d.result); } catch { return d.result; }
}

async function kvSet(key, value) {
  await fetch(`${KV_URL}/set/${encodeURIComponent(key)}`, {
    method: 'POST',
    headers: { Authorization: `Bearer ${KV_TOKEN}`, 'Content-Type': 'application/json' },
    body: JSON.stringify(JSON.stringify(value))
  });
}

export default async function handler(req, res) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
  if (req.method === 'OPTIONS') return res.status(200).end();
  const { action, player } = req.query;
  try {
    if (req.method === 'GET') {
      if (action === 'players') { return res.json({ players: await kvGet('players') || [] }); }
      if (action === 'results') { return res.json({ results: await kvGet('results') || {} }); }
      if (action === 'predictions' && player) { return res.json({ preds: await kvGet(`preds:${player}`) || {} }); }
      if (action === 'all') {
        const players = await kvGet('players') || [];
        const results = await kvGet('results') || {};
        const pts = await kvGet('pts') || {};
        const fechaWinners = await kvGet('fechaWinners') || {};
        const allPreds = {};
        for (const p of players) { allPreds[p] = await kvGet(`preds:${p}`) || {}; }
        return res.json({ players, results, pts, fechaWinners, allPreds });
      }
    }
    if (req.method === 'POST') {
      const body = req.body;
      if (action === 'save_players') { await kvSet('players', body.players); return res.json({ ok: true }); }
      if (action === 'save_results') { await kvSet('results', body.results); return res.json({ ok: true }); }
      if (action === 'save_prediction') { await kvSet(`preds:${body.player}`, body.preds); return res.json({ ok: true }); }
      if (action === 'save_pts') { await kvSet('pts', body.pts); await kvSet('fechaWinners', body.fechaWinners); return res.json({ ok: true }); }
    }
    return res.status(400).json({ error: 'Invalid action' });
  } catch (e) { return res.status(500).json({ error: e.message }); }
}
