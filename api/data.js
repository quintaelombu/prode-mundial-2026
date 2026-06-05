import { kv } from '@vercel/kv';

export default async function handler(req, res) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS');
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
  if (req.method === 'OPTIONS') return res.status(200).end();

  const { action, player } = req.query;

  try {
    if (req.method === 'GET') {
      if (action === 'players') {
        const players = await kv.get('players') || [];
        return res.json({ players });
      }
      if (action === 'results') {
        const results = await kv.get('results') || {};
        return res.json({ results });
      }
      if (action === 'predictions' && player) {
        const preds = await kv.get(`preds:${player}`) || {};
        return res.json({ preds });
      }
      if (action === 'all') {
        const [players, results, pts, winners] = await Promise.all([
          kv.get('players'),
          kv.get('results'),
          kv.get('pts'),
          kv.get('fechaWinners')
        ]);
        // get all predictions
        const playerList = players || [];
        const allPreds = {};
        for (const p of playerList) {
          allPreds[p] = await kv.get(`preds:${p}`) || {};
        }
        return res.json({
          players: playerList,
          results: results || {},
          pts: pts || {},
          fechaWinners: winners || {},
          allPreds
        });
      }
    }

    if (req.method === 'POST') {
      const body = req.body;

      if (action === 'save_players') {
        await kv.set('players', body.players);
        return res.json({ ok: true });
      }
      if (action === 'save_results') {
        await kv.set('results', body.results);
        return res.json({ ok: true });
      }
      if (action === 'save_prediction') {
        await kv.set(`preds:${body.player}`, body.preds);
        return res.json({ ok: true });
      }
      if (action === 'save_pts') {
        await kv.set('pts', body.pts);
        await kv.set('fechaWinners', body.fechaWinners);
        return res.json({ ok: true });
      }
    }

    return res.status(400).json({ error: 'Invalid action' });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
}
