#!/bin/bash
cd ~/Downloads/prode2026 || { echo "No existe ~/Downloads/prode2026"; exit 1; }
echo "Escribiendo index.html..."
cat > index.html << 'HTMLEOF'
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Prode Mundial 2026 ⚽</title>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Barlow+Condensed:wght@400;600;700&family=Barlow:wght@400;500&display=swap" rel="stylesheet">
<style>
:root{--gold:#F5C842;--green:#1DB954;--red:#E63946;--dark:#0D0D0D;--dark2:#161616;--dark3:#1E1E1E;--dark4:#2A2A2A;--text:#F0F0F0;--muted:#888;--border:#2e2e2e;}
*{box-sizing:border-box;margin:0;padding:0;}
body{background:var(--dark);color:var(--text);font-family:'Barlow',sans-serif;min-height:100vh;}
header{background:linear-gradient(135deg,#0a0a00,#1a1500,#0a0a00);border-bottom:3px solid var(--gold);padding:20px;text-align:center;}
header h1{font-family:'Bebas Neue',sans-serif;font-size:clamp(1.8rem,6vw,3.5rem);color:var(--gold);letter-spacing:4px;}
header p{font-size:0.75rem;color:var(--muted);letter-spacing:2px;text-transform:uppercase;margin-top:4px;}
.container{max-width:640px;margin:0 auto;padding:16px;}
.card{background:var(--dark2);border:1px solid var(--border);border-radius:8px;padding:20px;margin-bottom:14px;}
.card h2{font-family:'Bebas Neue',sans-serif;font-size:1.3rem;color:var(--gold);letter-spacing:2px;margin-bottom:14px;padding-bottom:8px;border-bottom:1px solid var(--border);}
.inp{background:var(--dark3);border:1px solid var(--border);border-radius:6px;padding:10px 14px;color:var(--text);font-family:'Barlow',sans-serif;font-size:1rem;width:100%;}
.inp:focus{outline:none;border-color:var(--gold);}
.inp::placeholder{color:var(--muted);}
.btn{background:var(--gold);color:var(--dark);border:none;border-radius:6px;padding:12px 24px;font-family:'Barlow Condensed',sans-serif;font-size:1rem;font-weight:700;letter-spacing:1px;text-transform:uppercase;cursor:pointer;width:100%;}
.btn:hover{opacity:0.88;}
.btn:disabled{opacity:0.5;cursor:not-allowed;}
.btn.sec{background:var(--dark4);color:var(--text);border:1px solid var(--border);}
.btn.sm{padding:8px 16px;font-size:0.85rem;width:auto;}
.btn.green{background:var(--green);color:#fff;}
.select-list{display:flex;flex-direction:column;gap:8px;}
.player-opt{background:var(--dark3);border:2px solid var(--border);border-radius:8px;padding:14px 16px;cursor:pointer;font-family:'Barlow Condensed',sans-serif;font-size:1.1rem;text-align:left;color:var(--text);}
.player-opt:hover{border-color:var(--gold);}
.fase-header{display:flex;align-items:center;justify-content:space-between;margin:20px 0 8px;padding-bottom:6px;border-bottom:2px solid var(--border);flex-wrap:wrap;gap:6px;}
.fase-title{font-family:'Bebas Neue',sans-serif;font-size:1rem;color:var(--gold);letter-spacing:2px;}
.fase-apuesta{background:rgba(245,200,66,0.1);border:1px solid rgba(245,200,66,0.3);border-radius:20px;padding:3px 10px;font-family:'Barlow Condensed',sans-serif;font-size:0.75rem;color:var(--gold);}
.grupo-label{font-size:0.75rem;color:var(--muted);font-family:'Barlow Condensed';letter-spacing:2px;text-transform:uppercase;margin:12px 0 6px;}
.match-card{background:var(--dark3);border:1px solid var(--border);border-radius:8px;padding:12px 14px;margin-bottom:8px;}
.match-card.locked{opacity:0.55;}
.pago-fecha{background:rgba(230,57,70,0.06);border:1px solid rgba(230,57,70,0.25);border-radius:8px;padding:12px 14px;margin:4px 0 18px;}
.pago-fecha.ok{background:rgba(29,185,84,0.08);border-color:rgba(29,185,84,0.3);}
.pago-fecha-top{display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;gap:8px;}
.pago-fecha-monto{font-family:'Barlow Condensed',sans-serif;font-size:0.95rem;}
.pago-fecha-monto b{color:var(--gold);}
.pago-chip{border-radius:20px;padding:3px 12px;font-family:'Barlow Condensed';font-size:0.75rem;font-weight:700;letter-spacing:1px;}
.pago-chip.ok{background:rgba(29,185,84,0.2);color:var(--green);}
.pago-chip.pend{background:rgba(230,57,70,0.15);color:var(--red);}
.pago-fecha-body{margin-top:10px;display:flex;flex-direction:column;gap:6px;}
.pago-alias-row{display:flex;align-items:center;gap:10px;}
.pago-alias{font-family:'Bebas Neue',sans-serif;font-size:1.4rem;color:var(--green);letter-spacing:2px;}
.reveal{margin-top:10px;padding-top:10px;border-top:1px dashed var(--border);}
.reveal-title{font-family:'Barlow Condensed',sans-serif;font-size:0.72rem;letter-spacing:1px;text-transform:uppercase;color:var(--muted);margin-bottom:6px;}
.reveal-row{display:flex;justify-content:space-between;align-items:center;padding:4px 8px;border-radius:5px;font-size:0.85rem;}
.reveal-row.mine{background:rgba(245,200,66,0.1);}
.reveal-name{font-family:'Barlow Condensed',sans-serif;color:var(--text);}
.reveal-row.mine .reveal-name{color:var(--gold);font-weight:700;}
.reveal-val{font-family:'Bebas Neue',sans-serif;font-size:1.05rem;color:var(--text);}
.match-teams{font-family:'Barlow Condensed',sans-serif;font-size:1rem;font-weight:700;margin-bottom:6px;}
.match-teams span{color:var(--muted);}
.kickoff{font-size:0.7rem;color:var(--muted);font-family:'Barlow Condensed';letter-spacing:1px;margin-bottom:8px;}
.kickoff.closed{color:var(--red);}
.pred-row{display:flex;align-items:center;gap:10px;}
.pred-row label{font-size:0.75rem;color:var(--muted);font-family:'Barlow Condensed';letter-spacing:1px;text-transform:uppercase;min-width:60px;}
.score-wrap{display:flex;align-items:center;gap:8px;flex:1;}
.score-inp{width:52px;background:var(--dark4);border:1px solid var(--border);border-radius:6px;padding:8px;color:var(--text);font-family:'Bebas Neue',sans-serif;font-size:1.4rem;text-align:center;}
.score-inp:focus{outline:none;border-color:var(--gold);}
.score-inp:disabled{opacity:0.6;cursor:not-allowed;}
.lock-badge{display:inline-block;background:rgba(230,57,70,0.15);color:var(--red);border-radius:20px;padding:2px 8px;font-size:0.65rem;font-family:'Barlow Condensed';font-weight:700;letter-spacing:1px;}
.sep{font-family:'Bebas Neue';font-size:1.4rem;color:var(--muted);}
.progress-bar{background:var(--dark3);border-radius:20px;height:6px;margin:8px 0;overflow:hidden;}
.progress-fill{background:var(--gold);height:100%;border-radius:20px;transition:width 0.4s;}
.pago-card{background:linear-gradient(135deg,rgba(29,185,84,0.12),rgba(29,185,84,0.04));border:2px solid rgba(29,185,84,0.4);border-radius:12px;padding:20px;margin-bottom:14px;display:none;}
.pago-card.visible{display:block;}
.pago-card h3{font-family:'Bebas Neue',sans-serif;font-size:1.2rem;color:var(--green);letter-spacing:2px;margin-bottom:14px;}
.alias-box{background:var(--dark3);border:1px solid rgba(29,185,84,0.4);border-radius:8px;padding:14px 16px;margin:12px 0;text-align:center;}
.alias-val{font-family:'Bebas Neue',sans-serif;font-size:1.8rem;color:var(--green);letter-spacing:2px;}
.toast{position:fixed;bottom:20px;left:50%;transform:translateX(-50%) translateY(100px);background:var(--green);color:var(--dark);padding:10px 22px;border-radius:6px;font-family:'Barlow Condensed';font-weight:700;font-size:0.95rem;letter-spacing:1px;z-index:999;transition:transform 0.3s;white-space:nowrap;}
.toast.show{transform:translateX(-50%) translateY(0);}
.toast.err{background:var(--red);color:#fff;}
.spinner{display:inline-block;width:16px;height:16px;border:2px solid rgba(0,0,0,0.2);border-top-color:var(--dark);border-radius:50%;animation:spin 0.7s linear infinite;vertical-align:middle;margin-right:6px;}
@keyframes spin{to{transform:rotate(360deg);}}
.screen{display:none;}.screen.active{display:block;}
</style>
</head>
<body>
<header><h1>⚽ Prode Mundial 2026</h1><p id="hdrSub">Cargá tus pronósticos</p></header>
<div class="container">
  <div id="screen-login" class="screen active">
    <div class="card" style="margin-top:20px">
      <h2>🔐 Ingresar al grupo</h2>
      <p style="font-size:0.85rem;color:var(--muted);margin-bottom:16px">Ingresá el código que te mandaron.</p>
      <input class="inp" type="text" id="pinInput" placeholder="Código" style="margin-bottom:12px;font-size:1.4rem;letter-spacing:6px;text-align:center;font-family:'Bebas Neue',sans-serif" maxlength="6" autocomplete="off">
      <button class="btn" onclick="checkPin()">Entrar →</button>
    </div>
  </div>
  <div id="screen-select" class="screen">
    <div class="card" style="margin-top:20px">
      <h2>👤 ¿Quién sos?</h2>
      <div class="select-list" id="playerList"></div>
    </div>
  </div>
  <div id="screen-form" class="screen">
    <div class="card" style="margin-top:12px">
      <div style="display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;gap:8px">
        <div><div style="font-family:'Bebas Neue',sans-serif;font-size:1.4rem;color:var(--gold)" id="welcomeMsg"></div>
        <div style="font-size:0.75rem;color:var(--muted)" id="progressMsg"></div></div>
        <button class="btn sec sm" onclick="goBack()">← Cambiar</button>
      </div>
      <div class="progress-bar" style="margin-top:10px"><div class="progress-fill" id="progressFill" style="width:0%"></div></div>
    </div>
    <div id="formContent"></div>
    <div style="margin-top:16px"><button class="btn" id="saveBtn" onclick="saveAllPreds()">💾 Guardar pronósticos</button></div>
    <div style="height:20px"></div>
      <button class="btn green" onclick="navigator.clipboard.writeText('emigal.sj').then(()=>showToast('✅ Alias copiado'))">📋 Copiar alias</button>
    </div>
    <div style="height:40px"></div>
  </div>
</div>
<div class="toast" id="toast"></div>
<script>
const PIN='2026';
const KV='https://epic-possum-110301.upstash.io';
const TK='gQAAAAAAAa7dAAIgcDE0YjA1MTkyYjRjYzM0NzU4YTNmM2RlYmYxMDkxYjUwNg';
async function kget(k){const r=await fetch(`${KV}/get/${encodeURIComponent(k)}`,{headers:{Authorization:`Bearer ${TK}`}});const d=await r.json();if(!d.result)return null;let v=d.result;if(typeof v==='string'){try{v=JSON.parse(v);}catch{}}if(typeof v==='string'){try{v=JSON.parse(v);}catch{}}return v;}
async function kset(k,v){const r=await fetch(`${KV}/set/${encodeURIComponent(k)}`,{method:'POST',headers:{Authorization:`Bearer ${TK}`,'Content-Type':'application/json'},body:JSON.stringify(JSON.stringify(v))});return r.json();}
const APUESTAS={'Grupos F1':10000,'Grupos F2':10000,'Grupos F3':10000,'16avos F1':15000,'16avos F2':15000,'16avos F3':15000,'Octavos':20000,'Cuartos':40000,'Semifinal':50000,'Final':100000};
const GRUPOS={A:['México','Sudáfrica','Corea del Sur','Rep. Checa'],B:['Canadá','Qatar','Suiza','Bosnia y Herz.'],C:['Brasil','Marruecos','Haití','Escocia'],D:['Estados Unidos','Paraguay','Australia','Turquía'],E:['Alemania','Curazao','Costa de Marfil','Ecuador'],F:['Países Bajos','Japón','Túnez','Suecia'],G:['Bélgica','Egipto','Irán','Nueva Zelanda'],H:['España','Cabo Verde','Arabia Saudita','Uruguay'],I:['Francia','Senegal','Irak','Noruega'],J:['Argentina','Argelia','Austria','Jordania'],K:['Portugal','Colombia','Uzbekistán','RD Congo'],L:['Inglaterra','Croacia','Ghana','Panamá']};
const GRP_PARTIDOS={"GRP_F1":[{"h":"México","a":"Sudáfrica","grupo":"Grupo A","ko":"2026-06-11T16:00"},{"h":"Corea del Sur","a":"Rep. Checa","grupo":"Grupo A","ko":"2026-06-11T23:00"},{"h":"Canadá","a":"Bosnia y Herz.","grupo":"Grupo B","ko":"2026-06-12T17:00"},{"h":"Qatar","a":"Suiza","grupo":"Grupo B","ko":"2026-06-13T16:00"},{"h":"Brasil","a":"Marruecos","grupo":"Grupo C","ko":"2026-06-13T19:00"},{"h":"Haití","a":"Escocia","grupo":"Grupo C","ko":"2026-06-13T22:00"},{"h":"Estados Unidos","a":"Paraguay","grupo":"Grupo D","ko":"2026-06-12T22:00"},{"h":"Australia","a":"Turquía","grupo":"Grupo D","ko":"2026-06-14T01:00"},{"h":"Alemania","a":"Curazao","grupo":"Grupo E","ko":"2026-06-14T14:00"},{"h":"Costa de Marfil","a":"Ecuador","grupo":"Grupo E","ko":"2026-06-14T20:00"},{"h":"Países Bajos","a":"Japón","grupo":"Grupo F","ko":"2026-06-14T17:00"},{"h":"Suecia","a":"Túnez","grupo":"Grupo F","ko":"2026-06-14T23:00"},{"h":"Bélgica","a":"Egipto","grupo":"Grupo G","ko":"2026-06-15T16:00"},{"h":"Irán","a":"Nueva Zelanda","grupo":"Grupo G","ko":"2026-06-15T22:00"},{"h":"España","a":"Cabo Verde","grupo":"Grupo H","ko":"2026-06-15T13:00"},{"h":"Arabia Saudita","a":"Uruguay","grupo":"Grupo H","ko":"2026-06-15T19:00"},{"h":"Francia","a":"Senegal","grupo":"Grupo I","ko":"2026-06-16T16:00"},{"h":"Irak","a":"Noruega","grupo":"Grupo I","ko":"2026-06-16T19:00"},{"h":"Argentina","a":"Argelia","grupo":"Grupo J","ko":"2026-06-16T22:00"},{"h":"Austria","a":"Jordania","grupo":"Grupo J","ko":"2026-06-17T01:00"},{"h":"Portugal","a":"RD Congo","grupo":"Grupo K","ko":"2026-06-17T14:00"},{"h":"Uzbekistán","a":"Colombia","grupo":"Grupo K","ko":"2026-06-17T23:00"},{"h":"Inglaterra","a":"Croacia","grupo":"Grupo L","ko":"2026-06-17T17:00"},{"h":"Ghana","a":"Panamá","grupo":"Grupo L","ko":"2026-06-17T20:00"}],"GRP_F2":[{"h":"Rep. Checa","a":"Sudáfrica","grupo":"Grupo A","ko":"2026-06-18T13:00"},{"h":"México","a":"Corea del Sur","grupo":"Grupo A","ko":"2026-06-18T22:00"},{"h":"Suiza","a":"Bosnia y Herz.","grupo":"Grupo B","ko":"2026-06-18T16:00"},{"h":"Canadá","a":"Qatar","grupo":"Grupo B","ko":"2026-06-18T19:00"},{"h":"Brasil","a":"Haití","grupo":"Grupo C","ko":"2026-06-19T21:30"},{"h":"Escocia","a":"Marruecos","grupo":"Grupo C","ko":"2026-06-19T19:00"},{"h":"Estados Unidos","a":"Australia","grupo":"Grupo D","ko":"2026-06-19T16:00"},{"h":"Turquía","a":"Paraguay","grupo":"Grupo D","ko":"2026-06-20T00:00"},{"h":"Alemania","a":"Costa de Marfil","grupo":"Grupo E","ko":"2026-06-20T17:00"},{"h":"Ecuador","a":"Curazao","grupo":"Grupo E","ko":"2026-06-20T21:00"},{"h":"Países Bajos","a":"Suecia","grupo":"Grupo F","ko":"2026-06-20T14:00"},{"h":"Túnez","a":"Japón","grupo":"Grupo F","ko":"2026-06-21T01:00"},{"h":"Bélgica","a":"Irán","grupo":"Grupo G","ko":"2026-06-21T16:00"},{"h":"Nueva Zelanda","a":"Egipto","grupo":"Grupo G","ko":"2026-06-21T22:00"},{"h":"España","a":"Arabia Saudita","grupo":"Grupo H","ko":"2026-06-21T13:00"},{"h":"Uruguay","a":"Cabo Verde","grupo":"Grupo H","ko":"2026-06-21T19:00"},{"h":"Francia","a":"Irak","grupo":"Grupo I","ko":"2026-06-22T18:00"},{"h":"Noruega","a":"Senegal","grupo":"Grupo I","ko":"2026-06-22T21:00"},{"h":"Argentina","a":"Austria","grupo":"Grupo J","ko":"2026-06-22T14:00"},{"h":"Jordania","a":"Argelia","grupo":"Grupo J","ko":"2026-06-23T00:00"},{"h":"Portugal","a":"Uzbekistán","grupo":"Grupo K","ko":"2026-06-23T14:00"},{"h":"Colombia","a":"RD Congo","grupo":"Grupo K","ko":"2026-06-23T23:00"},{"h":"Inglaterra","a":"Ghana","grupo":"Grupo L","ko":"2026-06-23T17:00"},{"h":"Panamá","a":"Croacia","grupo":"Grupo L","ko":"2026-06-23T20:00"}],"GRP_F3":[{"h":"Rep. Checa","a":"México","grupo":"Grupo A","ko":"2026-06-24T22:00"},{"h":"Sudáfrica","a":"Corea del Sur","grupo":"Grupo A","ko":"2026-06-24T22:00"},{"h":"Suiza","a":"Canadá","grupo":"Grupo B","ko":"2026-06-24T16:00"},{"h":"Bosnia y Herz.","a":"Qatar","grupo":"Grupo B","ko":"2026-06-24T16:00"},{"h":"Escocia","a":"Brasil","grupo":"Grupo C","ko":"2026-06-24T19:00"},{"h":"Marruecos","a":"Haití","grupo":"Grupo C","ko":"2026-06-24T19:00"},{"h":"Turquía","a":"Estados Unidos","grupo":"Grupo D","ko":"2026-06-25T23:00"},{"h":"Paraguay","a":"Australia","grupo":"Grupo D","ko":"2026-06-25T23:00"},{"h":"Curazao","a":"Costa de Marfil","grupo":"Grupo E","ko":"2026-06-25T17:00"},{"h":"Ecuador","a":"Alemania","grupo":"Grupo E","ko":"2026-06-25T17:00"},{"h":"Japón","a":"Suecia","grupo":"Grupo F","ko":"2026-06-25T20:00"},{"h":"Túnez","a":"Países Bajos","grupo":"Grupo F","ko":"2026-06-25T20:00"},{"h":"Egipto","a":"Irán","grupo":"Grupo G","ko":"2026-06-27T00:00"},{"h":"Nueva Zelanda","a":"Bélgica","grupo":"Grupo G","ko":"2026-06-27T00:00"},{"h":"Cabo Verde","a":"Arabia Saudita","grupo":"Grupo H","ko":"2026-06-26T21:00"},{"h":"Uruguay","a":"España","grupo":"Grupo H","ko":"2026-06-26T21:00"},{"h":"Noruega","a":"Francia","grupo":"Grupo I","ko":"2026-06-26T16:00"},{"h":"Senegal","a":"Irak","grupo":"Grupo I","ko":"2026-06-26T16:00"},{"h":"Argelia","a":"Austria","grupo":"Grupo J","ko":"2026-06-27T23:00"},{"h":"Jordania","a":"Argentina","grupo":"Grupo J","ko":"2026-06-27T23:00"},{"h":"Colombia","a":"Portugal","grupo":"Grupo K","ko":"2026-06-27T20:30"},{"h":"RD Congo","a":"Uzbekistán","grupo":"Grupo K","ko":"2026-06-27T20:30"},{"h":"Panamá","a":"Inglaterra","grupo":"Grupo L","ko":"2026-06-27T18:00"},{"h":"Croacia","a":"Ghana","grupo":"Grupo L","ko":"2026-06-27T18:00"}]};
const KICKOFFS_DEFAULT={"GRP_F1_0":"2026-06-11T16:00","GRP_F1_1":"2026-06-11T23:00","GRP_F1_2":"2026-06-12T17:00","GRP_F1_3":"2026-06-13T16:00","GRP_F1_4":"2026-06-13T19:00","GRP_F1_5":"2026-06-13T22:00","GRP_F1_6":"2026-06-12T22:00","GRP_F1_7":"2026-06-14T01:00","GRP_F1_8":"2026-06-14T14:00","GRP_F1_9":"2026-06-14T20:00","GRP_F1_10":"2026-06-14T17:00","GRP_F1_11":"2026-06-14T23:00","GRP_F1_12":"2026-06-15T16:00","GRP_F1_13":"2026-06-15T22:00","GRP_F1_14":"2026-06-15T13:00","GRP_F1_15":"2026-06-15T19:00","GRP_F1_16":"2026-06-16T16:00","GRP_F1_17":"2026-06-16T19:00","GRP_F1_18":"2026-06-16T22:00","GRP_F1_19":"2026-06-17T01:00","GRP_F1_20":"2026-06-17T14:00","GRP_F1_21":"2026-06-17T23:00","GRP_F1_22":"2026-06-17T17:00","GRP_F1_23":"2026-06-17T20:00","GRP_F2_0":"2026-06-18T13:00","GRP_F2_1":"2026-06-18T22:00","GRP_F2_2":"2026-06-18T16:00","GRP_F2_3":"2026-06-18T19:00","GRP_F2_4":"2026-06-19T21:30","GRP_F2_5":"2026-06-19T19:00","GRP_F2_6":"2026-06-19T16:00","GRP_F2_7":"2026-06-20T00:00","GRP_F2_8":"2026-06-20T17:00","GRP_F2_9":"2026-06-20T21:00","GRP_F2_10":"2026-06-20T14:00","GRP_F2_11":"2026-06-21T01:00","GRP_F2_12":"2026-06-21T16:00","GRP_F2_13":"2026-06-21T22:00","GRP_F2_14":"2026-06-21T13:00","GRP_F2_15":"2026-06-21T19:00","GRP_F2_16":"2026-06-22T18:00","GRP_F2_17":"2026-06-22T21:00","GRP_F2_18":"2026-06-22T14:00","GRP_F2_19":"2026-06-23T00:00","GRP_F2_20":"2026-06-23T14:00","GRP_F2_21":"2026-06-23T23:00","GRP_F2_22":"2026-06-23T17:00","GRP_F2_23":"2026-06-23T20:00","GRP_F3_0":"2026-06-24T22:00","GRP_F3_1":"2026-06-24T22:00","GRP_F3_2":"2026-06-24T16:00","GRP_F3_3":"2026-06-24T16:00","GRP_F3_4":"2026-06-24T19:00","GRP_F3_5":"2026-06-24T19:00","GRP_F3_6":"2026-06-25T23:00","GRP_F3_7":"2026-06-25T23:00","GRP_F3_8":"2026-06-25T17:00","GRP_F3_9":"2026-06-25T17:00","GRP_F3_10":"2026-06-25T20:00","GRP_F3_11":"2026-06-25T20:00","GRP_F3_12":"2026-06-27T00:00","GRP_F3_13":"2026-06-27T00:00","GRP_F3_14":"2026-06-26T21:00","GRP_F3_15":"2026-06-26T21:00","GRP_F3_16":"2026-06-26T16:00","GRP_F3_17":"2026-06-26T16:00","GRP_F3_18":"2026-06-27T23:00","GRP_F3_19":"2026-06-27T23:00","GRP_F3_20":"2026-06-27T20:30","GRP_F3_21":"2026-06-27T20:30","GRP_F3_22":"2026-06-27T18:00","GRP_F3_23":"2026-06-27T18:00"};
function gp(eq){return[[{h:eq[0],a:eq[1]},{h:eq[2],a:eq[3]}],[{h:eq[0],a:eq[2]},{h:eq[1],a:eq[3]}],[{h:eq[0],a:eq[3]},{h:eq[1],a:eq[2]}]];}
function buildFechas(){const f=[];['F1','F2','F3'].forEach((x,i)=>{f.push({id:`GRP_${x}`,label:`Fase de Grupos – Fecha ${i+1}`,tipo:`Grupos F${i+1}`,partidos:GRP_PARTIDOS[`GRP_${x}`]});});
const s16=[{h:'1A',a:'2B'},{h:'1B',a:'2A'},{h:'1C',a:'2D'},{h:'1D',a:'2C'},{h:'1E',a:'2F'},{h:'1F',a:'2E'},{h:'1G',a:'2H'},{h:'1H',a:'2G'},{h:'1I',a:'2J'},{h:'1J',a:'2I'},{h:'1K',a:'2L'},{h:'1L',a:'2K'},{h:'3a',a:'3b'},{h:'3c',a:'3d'},{h:'3e',a:'3f'},{h:'3g',a:'3h'}];
[[0,5],[6,10],[11,15]].forEach(([a,b],i)=>{f.push({id:`S16_F${i+1}`,label:`16avos – Fecha ${i+1}`,tipo:`16avos F${i+1}`,partidos:s16.slice(a,b+1).map(p=>({...p,grupo:'16avos'}))});});
f.push({id:'OCT',label:'Octavos de Final',tipo:'Octavos',partidos:Array.from({length:8},(_,i)=>({h:`G${i*2+1}`,a:`G${i*2+2}`,grupo:'Octavos'}))});
f.push({id:'CUA',label:'Cuartos de Final',tipo:'Cuartos',partidos:Array.from({length:4},(_,i)=>({h:`CU${i*2+1}`,a:`CU${i*2+2}`,grupo:'Cuartos'}))});
f.push({id:'SEMI',label:'Semifinales',tipo:'Semifinal',partidos:[{h:'SF1',a:'SF2',grupo:'Semifinal'},{h:'SF3',a:'SF4',grupo:'Semifinal'}]});
f.push({id:'FIN',label:'🏆 Gran Final',tipo:'Final',partidos:[{h:'Finalista 1',a:'Finalista 2',grupo:'Final'}]});return f;}
const FECHAS=buildFechas();
let currentPlayer=null,myPreds={},players=[],kickoffs={},pagos={},allPreds={};
function isLocked(key){const ko=kickoffs[key];if(!ko)return false;return Date.now()>=new Date(ko).getTime();}
function checkPin(){const pin=document.getElementById('pinInput').value.trim().toUpperCase();if(pin===PIN){loadPlayers();}else{showToast('❌ Código incorrecto',true);}}
document.getElementById('pinInput').addEventListener('keydown',e=>{if(e.key==='Enter')checkPin();});
async function loadPlayers(){try{players=await kget('players')||[];kickoffs={...KICKOFFS_DEFAULT,...(await kget('kickoffs')||{})};
    pagos=await kget('pagos')||{};if(!players.length){showToast('⚠️ No hay jugadores aún',true);return;}showScreen('select');document.getElementById('playerList').innerHTML=players.map(p=>`<button class="player-opt" onclick="selectPlayer('${p}')">${p}</button>`).join('');}catch(e){showToast('❌ '+e.message,true);}}
async function selectPlayer(name){currentPlayer=name;myPreds=await kget(`preds:${name}`)||{};
  pagos=await kget('pagos')||{};
  allPreds={};for(const p of players){allPreds[p]=(p===name)?myPreds:(await kget(`preds:${p}`)||{});}
  renderForm();showScreen('form');}
function goBack(){showScreen('select');currentPlayer=null;}
function renderForm(){document.getElementById('welcomeMsg').textContent=`Hola, ${currentPlayer}! 👋`;updateProgress();let html='';
FECHAS.forEach(fecha=>{const ap=APUESTAS[fecha.tipo];
html+=`<div class="fase-header"><span class="fase-title">${fecha.label}</span><span class="fase-apuesta">💰 $${ap.toLocaleString()}</span></div>`;let cg='';
fecha.partidos.forEach((m,mi)=>{if(m.grupo!==cg){cg=m.grupo;if(fecha.id.startsWith('GRP'))html+=`<div class="grupo-label">— ${m.grupo} —</div>`;}
const k=`${fecha.id}_${mi}`;const pred=myPreds[k]||{h:'',a:''};const locked=isLocked(k);const ko=kickoffs[k];
let koTxt='';if(ko){const d=new Date(ko);koTxt=d.toLocaleString('es-AR',{day:'2-digit',month:'2-digit',hour:'2-digit',minute:'2-digit'});}
html+=`<div class="match-card${locked?' locked':''}"><div class="match-teams">${m.h} <span>vs</span> ${m.a} ${locked?'<span class="lock-badge">🔒 CERRADO</span>':''}</div>${ko?`<div class="kickoff${locked?' closed':''}">⏰ ${koTxt}${locked?' — ya empezó':''}</div>`:''}<div class="pred-row"><label>Mi prode</label><div class="score-wrap"><input class="score-inp" type="number" min="0" max="20" placeholder="—" value="${pred.h}" id="ph_${k}" ${locked?'disabled':''} oninput="ls('${fecha.id}',${mi})"><span class="sep">—</span><input class="score-inp" type="number" min="0" max="20" placeholder="—" value="${pred.a}" id="pa_${k}" ${locked?'disabled':''} oninput="ls('${fecha.id}',${mi})"></div></div>${locked?revelarPreds(fecha.id,mi):''}</div>`;});
const pagoKey=`${currentPlayer}|${fecha.id}`;const pagado=pagos[pagoKey];
html+=`<div class="pago-fecha ${pagado?'ok':''}"><div class="pago-fecha-top"><span class="pago-fecha-monto">💰 Apuesta: <b>$${ap.toLocaleString()}</b></span>${pagado?'<span class="pago-chip ok">✅ PAGO APROBADO</span>':'<span class="pago-chip pend">⏳ PENDIENTE</span>'}</div>${pagado?'':`<div class="pago-fecha-body"><span style="font-size:0.78rem;color:var(--muted)">Transferí al alias y avisá:</span><div class="pago-alias-row"><span class="pago-alias">emigal.sj</span><button class="btn green sm" onclick="navigator.clipboard.writeText('emigal.sj').then(()=>showToast('✅ Alias copiado'))">📋 Copiar</button></div></div>`}</div>`;
});
document.getElementById('formContent').innerHTML=html;}
function ls(fid,mi){const k=`${fid}_${mi}`;if(isLocked(k))return;const h=document.getElementById(`ph_${k}`)?.value||'';const a=document.getElementById(`pa_${k}`)?.value||'';myPreds[k]={h,a};updateProgress();}
function updateProgress(){const total=FECHAS.reduce((acc,f)=>acc+f.partidos.length,0);const filled=Object.values(myPreds).filter(p=>p.h!==''&&p.a!=='').length;const pct=Math.round((filled/total)*100);document.getElementById('progressFill').style.width=pct+'%';document.getElementById('progressMsg').textContent=`${filled} de ${total} (${pct}%)`;}
async function saveAllPreds(){if(!currentPlayer)return;const btn=document.getElementById('saveBtn');btn.innerHTML='<span class="spinner"></span> Guardando...';btn.disabled=true;
try{const fresh=await kget(`preds:${currentPlayer}`)||{};const merged={...myPreds};Object.keys(merged).forEach(k=>{if(isLocked(k)){if(fresh[k]!==undefined)merged[k]=fresh[k];else delete merged[k];}});
await kset(`preds:${currentPlayer}`,merged);myPreds=merged;renderForm();showToast('✅ Pronósticos guardados');renderForm();}catch(e){showToast('❌ '+e.message,true);}
btn.innerHTML='💾 Guardar pronósticos';btn.disabled=false;}
function revelarPreds(fid,mi){
  const k=`${fid}_${mi}`;
  // solo jugadores que pagaron ESA fecha
  const pagadores=players.filter(p=>pagos[`${p}|${fid}`]);
  if(!pagadores.length)return '<div class="reveal"><div class="reveal-title">🔓 Pronósticos (al cerrar)</div><div style="font-size:0.78rem;color:var(--muted)">Nadie con pago aprobado en esta fecha aún.</div></div>';
  let rows='';
  pagadores.forEach(p=>{
    const pr=(allPreds[p]||{})[k];
    const val=(pr&&pr.h!==''&&pr.a!=='')?`${pr.h} - ${pr.a}`:'—';
    const esMio=p===currentPlayer;
    rows+=`<div class="reveal-row${esMio?' mine':''}"><span class="reveal-name">${p}${esMio?' (vos)':''}</span><span class="reveal-val">${val}</span></div>`;
  });
  return `<div class="reveal"><div class="reveal-title">🔓 Pronósticos de los que juegan</div>${rows}</div>`;
}
function showScreen(id){['login','select','form'].forEach(s=>document.getElementById(`screen-${s}`).classList.toggle('active',s===id));}
function showToast(msg,err=false){const t=document.getElementById('toast');t.textContent=msg;t.className='toast show'+(err?' err':'');setTimeout(()=>t.classList.remove('show'),2800);}
</script>
</body>
</html>

HTMLEOF
echo 'Escribiendo admin.html...'
cat > admin.html << 'HTMLEOF2'
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin – Prode Mundial 2026</title>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Barlow+Condensed:wght@400;600;700&family=Barlow:wght@400;500&display=swap" rel="stylesheet">
<style>
:root{--gold:#F5C842;--green:#1DB954;--red:#E63946;--dark:#0D0D0D;--dark2:#161616;--dark3:#1E1E1E;--dark4:#2A2A2A;--text:#F0F0F0;--muted:#888;--border:#2e2e2e;}
*{box-sizing:border-box;margin:0;padding:0;}
body{background:var(--dark);color:var(--text);font-family:'Barlow',sans-serif;min-height:100vh;}
header{background:linear-gradient(135deg,#0a0000,#1a0500,#0a0000);border-bottom:3px solid var(--red);padding:18px 20px;display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;gap:10px;position:sticky;top:0;z-index:100;}
header h1{font-family:'Bebas Neue',sans-serif;font-size:clamp(1.2rem,4vw,1.8rem);color:var(--red);letter-spacing:3px;}
.tabs{display:flex;background:var(--dark2);border-bottom:1px solid var(--border);overflow-x:auto;position:sticky;top:57px;z-index:99;}
.tab-btn{flex:1;min-width:90px;padding:13px 10px;background:none;border:none;color:var(--muted);font-family:'Barlow Condensed',sans-serif;font-size:0.8rem;letter-spacing:1px;text-transform:uppercase;cursor:pointer;border-bottom:3px solid transparent;white-space:nowrap;}
.tab-btn.active{color:var(--gold);border-bottom-color:var(--gold);background:rgba(245,200,66,0.05);}
.tab-panel{display:none;padding:16px;max-width:960px;margin:0 auto;}
.tab-panel.active{display:block;}
.card{background:var(--dark2);border:1px solid var(--border);border-radius:8px;padding:20px;margin-bottom:14px;}
.card h2{font-family:'Bebas Neue',sans-serif;font-size:1.3rem;color:var(--gold);letter-spacing:2px;margin-bottom:14px;padding-bottom:8px;border-bottom:1px solid var(--border);}
.pgrid{display:grid;grid-template-columns:repeat(auto-fill,minmax(150px,1fr));gap:8px;margin-bottom:14px;}
.inp{background:var(--dark3);border:1px solid var(--border);border-radius:6px;padding:9px 12px;color:var(--text);font-family:'Barlow',sans-serif;font-size:0.9rem;width:100%;}
.inp:focus{outline:none;border-color:var(--gold);}
.btn{background:var(--gold);color:var(--dark);border:none;border-radius:6px;padding:10px 22px;font-family:'Barlow Condensed',sans-serif;font-size:0.95rem;font-weight:700;letter-spacing:1px;text-transform:uppercase;cursor:pointer;}
.btn:hover{opacity:0.88;}
.btn.sec{background:var(--dark4);color:var(--text);border:1px solid var(--border);}
.btn.sm{padding:6px 14px;font-size:0.8rem;}
.btn.green{background:var(--green);color:#fff;}
.flex{display:flex;align-items:center;gap:10px;flex-wrap:wrap;}
.fase-header{display:flex;align-items:center;justify-content:space-between;margin:22px 0 8px;padding-bottom:6px;border-bottom:2px solid var(--border);flex-wrap:wrap;gap:8px;}
.fase-title{font-family:'Bebas Neue',sans-serif;font-size:1.1rem;color:var(--gold);letter-spacing:3px;}
.fase-apuesta{background:rgba(245,200,66,0.1);border:1px solid rgba(245,200,66,0.3);border-radius:20px;padding:3px 12px;font-family:'Barlow Condensed',sans-serif;font-size:0.8rem;color:var(--gold);}
.grupo-label{font-size:0.75rem;color:var(--muted);font-family:'Barlow Condensed';letter-spacing:2px;text-transform:uppercase;margin:12px 0 6px;}
.match-card{background:var(--dark2);border:1px solid var(--border);border-radius:8px;padding:12px 14px;margin-bottom:8px;}
.match-top{display:flex;align-items:center;justify-content:space-between;margin-bottom:8px;flex-wrap:wrap;gap:6px;}
.match-teams{font-family:'Barlow Condensed',sans-serif;font-size:1.05rem;font-weight:700;flex:1;}
.result-row{display:flex;align-items:center;gap:6px;}
.score-inp{width:44px;background:var(--dark3);border:1px solid var(--border);border-radius:4px;padding:5px;color:var(--text);font-family:'Bebas Neue',sans-serif;font-size:1.2rem;text-align:center;}
.score-inp:focus{outline:none;border-color:var(--gold);}
.ko-inp{background:var(--dark3);border:1px solid var(--border);border-radius:4px;padding:5px 8px;color:var(--text);font-family:'Barlow',sans-serif;font-size:0.8rem;}
.ko-inp:focus{outline:none;border-color:var(--gold);}
.sep{font-family:'Bebas Neue';font-size:1.2rem;color:var(--muted);}
.real-label{font-size:0.65rem;color:var(--muted);font-family:'Barlow Condensed';letter-spacing:1px;}
.preds-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(110px,1fr));gap:6px;margin-top:8px;padding-top:8px;border-top:1px solid var(--border);}
.pred-item{background:var(--dark3);border-radius:6px;padding:7px 9px;}
.pred-name{font-size:0.68rem;color:var(--muted);font-family:'Barlow Condensed';letter-spacing:1px;text-transform:uppercase;margin-bottom:4px;}
.pred-val{font-family:'Bebas Neue',sans-serif;font-size:1.1rem;}
.badge{display:inline-block;border-radius:20px;padding:1px 7px;font-size:0.7rem;font-family:'Barlow Condensed';font-weight:700;}
.badge.ex{background:rgba(29,185,84,0.2);color:var(--green);}
.badge.win{background:rgba(245,200,66,0.2);color:var(--gold);}
.badge.miss{background:rgba(230,57,70,0.15);color:var(--red);}
.tabla-wrap{overflow-x:auto;}
table{width:100%;border-collapse:collapse;font-family:'Barlow Condensed';}
thead tr{background:var(--dark2);border-bottom:2px solid var(--gold);}
th{padding:11px 12px;text-align:left;font-size:0.75rem;letter-spacing:1.5px;text-transform:uppercase;color:var(--gold);font-weight:700;}
th.c,td.c{text-align:center;}
tbody tr{border-bottom:1px solid var(--border);}
tbody tr:hover{background:var(--dark2);}
td{padding:11px 12px;font-size:0.95rem;}
.rk{font-family:'Bebas Neue';font-size:1.2rem;color:var(--muted);}
.rk1{color:var(--gold);}.rk2{color:#C0C0C0;}.rk3{color:#cd7f32;}
.pts-big{font-family:'Bebas Neue';font-size:1.4rem;color:var(--gold);}
.money-cell{font-family:'Bebas Neue';font-size:1.1rem;color:var(--green);}
.winner-chip{background:rgba(29,185,84,0.15);border:1px solid rgba(29,185,84,0.3);color:var(--green);border-radius:20px;padding:2px 10px;font-family:'Barlow Condensed';font-size:0.8rem;font-weight:700;}
#adminLogin{position:fixed;inset:0;background:rgba(0,0,0,0.95);display:flex;align-items:center;justify-content:center;z-index:200;padding:20px;}
.login-box{background:var(--dark2);border:2px solid var(--red);border-radius:12px;padding:32px;max-width:380px;width:100%;text-align:center;}
.login-box h2{font-family:'Bebas Neue',sans-serif;font-size:1.8rem;color:var(--red);letter-spacing:3px;margin-bottom:8px;}
.login-box p{font-size:0.85rem;color:var(--muted);margin-bottom:20px;}
.toast{position:fixed;bottom:20px;left:50%;transform:translateX(-50%) translateY(100px);background:var(--green);color:var(--dark);padding:10px 22px;border-radius:6px;font-family:'Barlow Condensed';font-weight:700;font-size:0.95rem;letter-spacing:1px;z-index:999;transition:transform 0.3s;white-space:nowrap;}
.toast.show{transform:translateX(-50%) translateY(0);}
.toast.err{background:var(--red);color:#fff;}
.hint{font-size:0.8rem;color:var(--muted);margin-bottom:12px;line-height:1.5;}
</style>
</head>
<body>
<div id="adminLogin">
  <div class="login-box">
    <h2>🔐 Admin</h2>
    <p>Contraseña de administrador</p>
    <input class="inp" type="password" id="adminPwd" placeholder="Contraseña" style="margin-bottom:12px;text-align:center;font-size:1.1rem" autocomplete="off">
    <button class="btn" style="background:var(--red);color:#fff;width:100%" onclick="checkAdmin()">Ingresar →</button>
  </div>
</div>
<header><h1>⚙️ Admin – Mundial 2026</h1></header>
<div class="tabs">
  <button class="tab-btn active" onclick="showTab('jugadores',this)">👥 Jugadores</button>
  <button class="tab-btn" onclick="showTab('partidos',this)">🗓️ Partidos</button>
  <button class="tab-btn" onclick="showTab('tabla',this)">🏆 Tabla</button>
  <button class="tab-btn" onclick="showTab('pozo',this)">💰 Pozo</button>
  <button class="tab-btn" onclick="showTab('pagos',this)">💵 Pagos</button>
</div>
<div id="tab-jugadores" class="tab-panel active">
  <div class="card"><h2>👥 Jugadores</h2><p class="hint">Hasta 30. Escribí los nombres y guardá.</p><div class="pgrid" id="pGrid"></div>
  <div class="flex"><button class="btn" onclick="savePlayers()">💾 Guardar jugadores</button><button class="btn sec sm" onclick="loadAll()">🔄 Recargar</button></div></div>
  <div class="card"><h2>🔗 Link participantes</h2><p class="hint">Código: <strong style="color:var(--gold)">2026</strong></p>
  <div style="background:var(--dark3);border:1px solid var(--border);border-radius:6px;padding:12px;font-family:'Barlow Condensed';word-break:break-all" id="linkDisplay">—</div>
  <div class="flex" style="margin-top:10px"><button class="btn sm" onclick="copyLink()">📋 Copiar</button><button class="btn green sm" onclick="shareWA()">💬 WhatsApp</button></div></div>
  <div class="card"><h2>ℹ️ Estado</h2><div id="statusDiv" class="hint"></div></div>
</div>
<div id="tab-partidos" class="tab-panel">
  <div class="flex" style="justify-content:space-between;margin-bottom:14px">
    <p class="hint" style="margin:0">Cargá <strong style="color:var(--gold)">horario (kickoff)</strong> y resultado real de cada partido.</p>
    <div class="flex"><button class="btn sm" onclick="sembrarReales()">🌎 Cargar horarios reales</button><button class="btn sm" onclick="saveKickoffs()">⏰ Guardar horarios</button><button class="btn" onclick="calcularTodo()">🔢 Calcular</button></div>
  </div>
  <div id="matchesDiv"></div>
</div>
<div id="tab-tabla" class="tab-panel">
  <div class="flex" style="margin-bottom:14px;justify-content:space-between"><div style="font-family:'Bebas Neue',sans-serif;font-size:1.6rem;color:var(--gold);letter-spacing:3px">TABLA GENERAL</div><button class="btn sm" onclick="calcularTodo()">🔄 Actualizar</button></div>
  <div class="tabla-wrap"><table><thead><tr><th>#</th><th>Jugador</th><th class="c">Exactos</th><th class="c">Ganador</th><th class="c">Pts</th><th class="c">Fechas</th><th class="c">Ganado $</th></tr></thead><tbody id="tablaBody"></tbody></table></div>
</div>
<div id="tab-pozo" class="tab-panel">
  <div style="font-family:'Bebas Neue',sans-serif;font-size:1.6rem;color:var(--gold);letter-spacing:3px;margin-bottom:14px">💰 POZOS</div>
  <div id="pozoDiv"></div>
</div>
<div id="tab-pagos" class="tab-panel">
  <div class="flex" style="margin-bottom:14px;justify-content:space-between"><div style="font-family:'Bebas Neue',sans-serif;font-size:1.6rem;color:var(--gold);letter-spacing:3px">💵 CONTROL DE PAGOS</div><button class="btn sm" onclick="savePagos()">💾 Guardar pagos</button></div>
  <p class="hint">Tocá el casillero para marcar que el jugador pagó esa fecha. Verde = pagado.</p>
  <div class="tabla-wrap"><table id="pagosTable"></table></div>
</div>
<div class="toast" id="toast"></div>
<script>
const ADMIN_PWD='admin2026';
const KV='https://epic-possum-110301.upstash.io';
const TK='gQAAAAAAAa7dAAIgcDE0YjA1MTkyYjRjYzM0NzU4YTNmM2RlYmYxMDkxYjUwNg';
async function kget(k){const r=await fetch(`${KV}/get/${encodeURIComponent(k)}`,{headers:{Authorization:`Bearer ${TK}`}});const d=await r.json();if(!d.result)return null;let v=d.result;if(typeof v==='string'){try{v=JSON.parse(v);}catch{}}if(typeof v==='string'){try{v=JSON.parse(v);}catch{}}return v;}
async function kset(k,v){const r=await fetch(`${KV}/set/${encodeURIComponent(k)}`,{method:'POST',headers:{Authorization:`Bearer ${TK}`,'Content-Type':'application/json'},body:JSON.stringify(JSON.stringify(v))});return r.json();}
const APUESTAS={'Grupos F1':10000,'Grupos F2':10000,'Grupos F3':10000,'16avos F1':15000,'16avos F2':15000,'16avos F3':15000,'Octavos':20000,'Cuartos':40000,'Semifinal':50000,'Final':100000};
const GRUPOS={A:['México','Sudáfrica','Corea del Sur','Rep. Checa'],B:['Canadá','Qatar','Suiza','Bosnia y Herz.'],C:['Brasil','Marruecos','Haití','Escocia'],D:['Estados Unidos','Paraguay','Australia','Turquía'],E:['Alemania','Curazao','Costa de Marfil','Ecuador'],F:['Países Bajos','Japón','Túnez','Suecia'],G:['Bélgica','Egipto','Irán','Nueva Zelanda'],H:['España','Cabo Verde','Arabia Saudita','Uruguay'],I:['Francia','Senegal','Irak','Noruega'],J:['Argentina','Argelia','Austria','Jordania'],K:['Portugal','Colombia','Uzbekistán','RD Congo'],L:['Inglaterra','Croacia','Ghana','Panamá']};
const GRP_PARTIDOS={"GRP_F1":[{"h":"México","a":"Sudáfrica","grupo":"Grupo A","ko":"2026-06-11T16:00"},{"h":"Corea del Sur","a":"Rep. Checa","grupo":"Grupo A","ko":"2026-06-11T23:00"},{"h":"Canadá","a":"Bosnia y Herz.","grupo":"Grupo B","ko":"2026-06-12T17:00"},{"h":"Qatar","a":"Suiza","grupo":"Grupo B","ko":"2026-06-13T16:00"},{"h":"Brasil","a":"Marruecos","grupo":"Grupo C","ko":"2026-06-13T19:00"},{"h":"Haití","a":"Escocia","grupo":"Grupo C","ko":"2026-06-13T22:00"},{"h":"Estados Unidos","a":"Paraguay","grupo":"Grupo D","ko":"2026-06-12T22:00"},{"h":"Australia","a":"Turquía","grupo":"Grupo D","ko":"2026-06-14T01:00"},{"h":"Alemania","a":"Curazao","grupo":"Grupo E","ko":"2026-06-14T14:00"},{"h":"Costa de Marfil","a":"Ecuador","grupo":"Grupo E","ko":"2026-06-14T20:00"},{"h":"Países Bajos","a":"Japón","grupo":"Grupo F","ko":"2026-06-14T17:00"},{"h":"Suecia","a":"Túnez","grupo":"Grupo F","ko":"2026-06-14T23:00"},{"h":"Bélgica","a":"Egipto","grupo":"Grupo G","ko":"2026-06-15T16:00"},{"h":"Irán","a":"Nueva Zelanda","grupo":"Grupo G","ko":"2026-06-15T22:00"},{"h":"España","a":"Cabo Verde","grupo":"Grupo H","ko":"2026-06-15T13:00"},{"h":"Arabia Saudita","a":"Uruguay","grupo":"Grupo H","ko":"2026-06-15T19:00"},{"h":"Francia","a":"Senegal","grupo":"Grupo I","ko":"2026-06-16T16:00"},{"h":"Irak","a":"Noruega","grupo":"Grupo I","ko":"2026-06-16T19:00"},{"h":"Argentina","a":"Argelia","grupo":"Grupo J","ko":"2026-06-16T22:00"},{"h":"Austria","a":"Jordania","grupo":"Grupo J","ko":"2026-06-17T01:00"},{"h":"Portugal","a":"RD Congo","grupo":"Grupo K","ko":"2026-06-17T14:00"},{"h":"Uzbekistán","a":"Colombia","grupo":"Grupo K","ko":"2026-06-17T23:00"},{"h":"Inglaterra","a":"Croacia","grupo":"Grupo L","ko":"2026-06-17T17:00"},{"h":"Ghana","a":"Panamá","grupo":"Grupo L","ko":"2026-06-17T20:00"}],"GRP_F2":[{"h":"Rep. Checa","a":"Sudáfrica","grupo":"Grupo A","ko":"2026-06-18T13:00"},{"h":"México","a":"Corea del Sur","grupo":"Grupo A","ko":"2026-06-18T22:00"},{"h":"Suiza","a":"Bosnia y Herz.","grupo":"Grupo B","ko":"2026-06-18T16:00"},{"h":"Canadá","a":"Qatar","grupo":"Grupo B","ko":"2026-06-18T19:00"},{"h":"Brasil","a":"Haití","grupo":"Grupo C","ko":"2026-06-19T21:30"},{"h":"Escocia","a":"Marruecos","grupo":"Grupo C","ko":"2026-06-19T19:00"},{"h":"Estados Unidos","a":"Australia","grupo":"Grupo D","ko":"2026-06-19T16:00"},{"h":"Turquía","a":"Paraguay","grupo":"Grupo D","ko":"2026-06-20T00:00"},{"h":"Alemania","a":"Costa de Marfil","grupo":"Grupo E","ko":"2026-06-20T17:00"},{"h":"Ecuador","a":"Curazao","grupo":"Grupo E","ko":"2026-06-20T21:00"},{"h":"Países Bajos","a":"Suecia","grupo":"Grupo F","ko":"2026-06-20T14:00"},{"h":"Túnez","a":"Japón","grupo":"Grupo F","ko":"2026-06-21T01:00"},{"h":"Bélgica","a":"Irán","grupo":"Grupo G","ko":"2026-06-21T16:00"},{"h":"Nueva Zelanda","a":"Egipto","grupo":"Grupo G","ko":"2026-06-21T22:00"},{"h":"España","a":"Arabia Saudita","grupo":"Grupo H","ko":"2026-06-21T13:00"},{"h":"Uruguay","a":"Cabo Verde","grupo":"Grupo H","ko":"2026-06-21T19:00"},{"h":"Francia","a":"Irak","grupo":"Grupo I","ko":"2026-06-22T18:00"},{"h":"Noruega","a":"Senegal","grupo":"Grupo I","ko":"2026-06-22T21:00"},{"h":"Argentina","a":"Austria","grupo":"Grupo J","ko":"2026-06-22T14:00"},{"h":"Jordania","a":"Argelia","grupo":"Grupo J","ko":"2026-06-23T00:00"},{"h":"Portugal","a":"Uzbekistán","grupo":"Grupo K","ko":"2026-06-23T14:00"},{"h":"Colombia","a":"RD Congo","grupo":"Grupo K","ko":"2026-06-23T23:00"},{"h":"Inglaterra","a":"Ghana","grupo":"Grupo L","ko":"2026-06-23T17:00"},{"h":"Panamá","a":"Croacia","grupo":"Grupo L","ko":"2026-06-23T20:00"}],"GRP_F3":[{"h":"Rep. Checa","a":"México","grupo":"Grupo A","ko":"2026-06-24T22:00"},{"h":"Sudáfrica","a":"Corea del Sur","grupo":"Grupo A","ko":"2026-06-24T22:00"},{"h":"Suiza","a":"Canadá","grupo":"Grupo B","ko":"2026-06-24T16:00"},{"h":"Bosnia y Herz.","a":"Qatar","grupo":"Grupo B","ko":"2026-06-24T16:00"},{"h":"Escocia","a":"Brasil","grupo":"Grupo C","ko":"2026-06-24T19:00"},{"h":"Marruecos","a":"Haití","grupo":"Grupo C","ko":"2026-06-24T19:00"},{"h":"Turquía","a":"Estados Unidos","grupo":"Grupo D","ko":"2026-06-25T23:00"},{"h":"Paraguay","a":"Australia","grupo":"Grupo D","ko":"2026-06-25T23:00"},{"h":"Curazao","a":"Costa de Marfil","grupo":"Grupo E","ko":"2026-06-25T17:00"},{"h":"Ecuador","a":"Alemania","grupo":"Grupo E","ko":"2026-06-25T17:00"},{"h":"Japón","a":"Suecia","grupo":"Grupo F","ko":"2026-06-25T20:00"},{"h":"Túnez","a":"Países Bajos","grupo":"Grupo F","ko":"2026-06-25T20:00"},{"h":"Egipto","a":"Irán","grupo":"Grupo G","ko":"2026-06-27T00:00"},{"h":"Nueva Zelanda","a":"Bélgica","grupo":"Grupo G","ko":"2026-06-27T00:00"},{"h":"Cabo Verde","a":"Arabia Saudita","grupo":"Grupo H","ko":"2026-06-26T21:00"},{"h":"Uruguay","a":"España","grupo":"Grupo H","ko":"2026-06-26T21:00"},{"h":"Noruega","a":"Francia","grupo":"Grupo I","ko":"2026-06-26T16:00"},{"h":"Senegal","a":"Irak","grupo":"Grupo I","ko":"2026-06-26T16:00"},{"h":"Argelia","a":"Austria","grupo":"Grupo J","ko":"2026-06-27T23:00"},{"h":"Jordania","a":"Argentina","grupo":"Grupo J","ko":"2026-06-27T23:00"},{"h":"Colombia","a":"Portugal","grupo":"Grupo K","ko":"2026-06-27T20:30"},{"h":"RD Congo","a":"Uzbekistán","grupo":"Grupo K","ko":"2026-06-27T20:30"},{"h":"Panamá","a":"Inglaterra","grupo":"Grupo L","ko":"2026-06-27T18:00"},{"h":"Croacia","a":"Ghana","grupo":"Grupo L","ko":"2026-06-27T18:00"}]};
const KICKOFFS_DEFAULT={"GRP_F1_0":"2026-06-11T16:00","GRP_F1_1":"2026-06-11T23:00","GRP_F1_2":"2026-06-12T17:00","GRP_F1_3":"2026-06-13T16:00","GRP_F1_4":"2026-06-13T19:00","GRP_F1_5":"2026-06-13T22:00","GRP_F1_6":"2026-06-12T22:00","GRP_F1_7":"2026-06-14T01:00","GRP_F1_8":"2026-06-14T14:00","GRP_F1_9":"2026-06-14T20:00","GRP_F1_10":"2026-06-14T17:00","GRP_F1_11":"2026-06-14T23:00","GRP_F1_12":"2026-06-15T16:00","GRP_F1_13":"2026-06-15T22:00","GRP_F1_14":"2026-06-15T13:00","GRP_F1_15":"2026-06-15T19:00","GRP_F1_16":"2026-06-16T16:00","GRP_F1_17":"2026-06-16T19:00","GRP_F1_18":"2026-06-16T22:00","GRP_F1_19":"2026-06-17T01:00","GRP_F1_20":"2026-06-17T14:00","GRP_F1_21":"2026-06-17T23:00","GRP_F1_22":"2026-06-17T17:00","GRP_F1_23":"2026-06-17T20:00","GRP_F2_0":"2026-06-18T13:00","GRP_F2_1":"2026-06-18T22:00","GRP_F2_2":"2026-06-18T16:00","GRP_F2_3":"2026-06-18T19:00","GRP_F2_4":"2026-06-19T21:30","GRP_F2_5":"2026-06-19T19:00","GRP_F2_6":"2026-06-19T16:00","GRP_F2_7":"2026-06-20T00:00","GRP_F2_8":"2026-06-20T17:00","GRP_F2_9":"2026-06-20T21:00","GRP_F2_10":"2026-06-20T14:00","GRP_F2_11":"2026-06-21T01:00","GRP_F2_12":"2026-06-21T16:00","GRP_F2_13":"2026-06-21T22:00","GRP_F2_14":"2026-06-21T13:00","GRP_F2_15":"2026-06-21T19:00","GRP_F2_16":"2026-06-22T18:00","GRP_F2_17":"2026-06-22T21:00","GRP_F2_18":"2026-06-22T14:00","GRP_F2_19":"2026-06-23T00:00","GRP_F2_20":"2026-06-23T14:00","GRP_F2_21":"2026-06-23T23:00","GRP_F2_22":"2026-06-23T17:00","GRP_F2_23":"2026-06-23T20:00","GRP_F3_0":"2026-06-24T22:00","GRP_F3_1":"2026-06-24T22:00","GRP_F3_2":"2026-06-24T16:00","GRP_F3_3":"2026-06-24T16:00","GRP_F3_4":"2026-06-24T19:00","GRP_F3_5":"2026-06-24T19:00","GRP_F3_6":"2026-06-25T23:00","GRP_F3_7":"2026-06-25T23:00","GRP_F3_8":"2026-06-25T17:00","GRP_F3_9":"2026-06-25T17:00","GRP_F3_10":"2026-06-25T20:00","GRP_F3_11":"2026-06-25T20:00","GRP_F3_12":"2026-06-27T00:00","GRP_F3_13":"2026-06-27T00:00","GRP_F3_14":"2026-06-26T21:00","GRP_F3_15":"2026-06-26T21:00","GRP_F3_16":"2026-06-26T16:00","GRP_F3_17":"2026-06-26T16:00","GRP_F3_18":"2026-06-27T23:00","GRP_F3_19":"2026-06-27T23:00","GRP_F3_20":"2026-06-27T20:30","GRP_F3_21":"2026-06-27T20:30","GRP_F3_22":"2026-06-27T18:00","GRP_F3_23":"2026-06-27T18:00"};
function gp(eq){return[[{h:eq[0],a:eq[1]},{h:eq[2],a:eq[3]}],[{h:eq[0],a:eq[2]},{h:eq[1],a:eq[3]}],[{h:eq[0],a:eq[3]},{h:eq[1],a:eq[2]}]];}
function buildFechas(){const f=[];['F1','F2','F3'].forEach((x,i)=>{f.push({id:`GRP_${x}`,label:`Grupos Fecha ${i+1}`,tipo:`Grupos F${i+1}`,partidos:GRP_PARTIDOS[`GRP_${x}`]});});
const s16=[{h:'1A',a:'2B'},{h:'1B',a:'2A'},{h:'1C',a:'2D'},{h:'1D',a:'2C'},{h:'1E',a:'2F'},{h:'1F',a:'2E'},{h:'1G',a:'2H'},{h:'1H',a:'2G'},{h:'1I',a:'2J'},{h:'1J',a:'2I'},{h:'1K',a:'2L'},{h:'1L',a:'2K'},{h:'3a',a:'3b'},{h:'3c',a:'3d'},{h:'3e',a:'3f'},{h:'3g',a:'3h'}];
[[0,5],[6,10],[11,15]].forEach(([a,b],i)=>{f.push({id:`S16_F${i+1}`,label:`16avos Fecha ${i+1}`,tipo:`16avos F${i+1}`,partidos:s16.slice(a,b+1).map(p=>({...p,grupo:'16avos'}))});});
f.push({id:'OCT',label:'Octavos',tipo:'Octavos',partidos:Array.from({length:8},(_,i)=>({h:`G${i*2+1}`,a:`G${i*2+2}`,grupo:'Octavos'}))});
f.push({id:'CUA',label:'Cuartos',tipo:'Cuartos',partidos:Array.from({length:4},(_,i)=>({h:`CU${i*2+1}`,a:`CU${i*2+2}`,grupo:'Cuartos'}))});
f.push({id:'SEMI',label:'Semifinales',tipo:'Semifinal',partidos:[{h:'SF1',a:'SF2',grupo:'Semifinal'},{h:'SF3',a:'SF4',grupo:'Semifinal'}]});
f.push({id:'FIN',label:'🏆 Final',tipo:'Final',partidos:[{h:'Finalista 1',a:'Finalista 2',grupo:'Final'}]});return f;}
const FECHAS=buildFechas();
let STATE={players:[],results:{},pts:{},fechaWinners:{},allPreds:{},kickoffs:{},pagos:{}};
function checkAdmin(){if(document.getElementById('adminPwd').value===ADMIN_PWD){document.getElementById('adminLogin').style.display='none';loadAll();}else{showToast('❌ Contraseña incorrecta',true);}}
document.getElementById('adminPwd').addEventListener('keydown',e=>{if(e.key==='Enter')checkAdmin();});
function showTab(id,btn){document.querySelectorAll('.tab-panel').forEach(p=>p.classList.remove('active'));document.querySelectorAll('.tab-btn').forEach(b=>b.classList.remove('active'));document.getElementById('tab-'+id).classList.add('active');if(btn)btn.classList.add('active');if(id==='partidos')renderPartidos();if(id==='tabla')renderTabla();if(id==='pozo')renderPozo();if(id==='pagos')renderPagos();}
async function loadAll(){try{STATE.players=await kget('players')||[];STATE.results=await kget('results')||{};STATE.pts=await kget('pts')||{};STATE.fechaWinners=await kget('fechaWinners')||{};STATE.kickoffs={...KICKOFFS_DEFAULT,...(await kget('kickoffs')||{})};
    STATE.pagos=await kget('pagos')||{};STATE.allPreds={};for(const p of STATE.players){STATE.allPreds[p]=await kget(`preds:${p}`)||{};}renderSetup();showToast('✅ Datos cargados');}catch(e){showToast('❌ '+e.message,true);}}
function renderSetup(){const g=document.getElementById('pGrid');g.innerHTML='';for(let i=0;i<30;i++){const inp=document.createElement('input');inp.type='text';inp.className='inp';inp.placeholder=`Jugador ${i+1}`;inp.value=STATE.players[i]||'';inp.dataset.i=i;g.appendChild(inp);}
document.getElementById('linkDisplay').textContent=`${location.origin}${location.pathname.replace('admin.html','')}`.replace(/\/$/,'')+'/';
document.getElementById('statusDiv').innerHTML=`<div>👥 Jugadores: <strong style="color:var(--gold)">${STATE.players.length}</strong> → ${STATE.players.join(', ')||'—'}</div><div>⏰ Horarios cargados: <strong style="color:var(--gold)">${Object.keys(STATE.kickoffs).length}</strong></div><div>🔑 Código: <strong style="color:var(--gold)">2026</strong> · 💰 Alias: <strong style="color:var(--green)">emigal.sj</strong></div>`;}
async function savePlayers(){const players=Array.from(document.querySelectorAll('.inp[data-i]')).map(i=>i.value.trim()).filter(Boolean);try{await kset('players',players);STATE.players=players;showToast('✅ Jugadores guardados');renderSetup();}catch(e){showToast('❌ '+e.message,true);}}
function copyLink(){navigator.clipboard.writeText(document.getElementById('linkDisplay').textContent).then(()=>showToast('✅ Copiado'));}
function shareWA(){const link=document.getElementById('linkDisplay').textContent;const msg=`⚽ *Prode Mundial 2026*\n\n🔗 ${link}\n🔑 Código: *2026*\n💰 Alias: *emigal.sj*`;window.open(`https://wa.me/?text=${encodeURIComponent(msg)}`,'_blank');}
function renderPartidos(){const names=STATE.players;if(!names.length){document.getElementById('matchesDiv').innerHTML='<div class="hint" style="padding:20px">Configurá los jugadores primero.</div>';return;}let html='';
FECHAS.forEach(fecha=>{const ap=APUESTAS[fecha.tipo];html+=`<div class="fase-header"><span class="fase-title">${fecha.label}</span><span class="fase-apuesta">💰 Pozo: $${(ap*names.length).toLocaleString()}</span></div>`;let cg='';
fecha.partidos.forEach((m,mi)=>{if(m.grupo!==cg){cg=m.grupo;if(fecha.id.startsWith('GRP'))html+=`<div class="grupo-label">— ${m.grupo} —</div>`;}
const rk=`${fecha.id}_${mi}`;const res=STATE.results[rk]||{h:'',a:''};const ko=STATE.kickoffs[rk]||'';
html+=`<div class="match-card"><div class="match-top"><div class="match-teams">${m.h} <span style="color:var(--muted)">vs</span> ${m.a}</div><div class="result-row"><input class="score-inp" type="number" min="0" max="20" placeholder="—" value="${res.h}" onchange="saveRes('${rk}','h',this.value)"><span class="sep">:</span><input class="score-inp" type="number" min="0" max="20" placeholder="—" value="${res.a}" onchange="saveRes('${rk}','a',this.value)"><span class="real-label">REAL</span></div></div>
<div class="flex" style="margin-bottom:6px"><span class="real-label">⏰ Kickoff:</span><input class="ko-inp" type="datetime-local" value="${ko}" onchange="setKO('${rk}',this.value)"></div>
<div class="preds-grid">`;
names.forEach((name,ni)=>{const preds=STATE.allPreds[name]||{};const pred=preds[rk]||{h:'',a:''};const pts=STATE.pts[`${rk}_${ni}`];let badge='';if(pts===3)badge='<span class="badge ex">+3</span>';else if(pts===1)badge='<span class="badge win">+1</span>';else if(pts===0&&res.h!=='')badge='<span class="badge miss">0</span>';
html+=`<div class="pred-item"><div class="pred-name">${name} ${badge}</div><div class="pred-val">${pred.h!==''?pred.h:'—'} – ${pred.a!==''?pred.a:'—'}</div></div>`;});
html+=`</div></div>`;});});
document.getElementById('matchesDiv').innerHTML=html;}
function setKO(rk,val){if(val)STATE.kickoffs[rk]=val;else delete STATE.kickoffs[rk];}
async function sembrarReales(){STATE.kickoffs={...KICKOFFS_DEFAULT};try{await kset('kickoffs',STATE.kickoffs);showToast('🌎 Horarios reales cargados');renderPartidos();renderSetup();}catch(e){showToast('❌ '+e.message,true);}}
async function saveKickoffs(){try{await kset('kickoffs',STATE.kickoffs);showToast('⏰ Horarios guardados');renderSetup();}catch(e){showToast('❌ '+e.message,true);}}
async function saveRes(rk,side,val){if(!STATE.results[rk])STATE.results[rk]={h:'',a:''};STATE.results[rk][side]=val;await kset('results',STATE.results);}
async function calcularTodo(){const names=STATE.players;STATE.pts={};STATE.fechaWinners={};
FECHAS.forEach(fecha=>{const ap=APUESTAS[fecha.tipo];fecha.partidos.forEach((m,mi)=>{const rk=`${fecha.id}_${mi}`;const res=STATE.results[rk];if(!res||res.h===''||res.a==='')return;const rh=parseInt(res.h),ra=parseInt(res.a),rw=rh>ra?'H':ra>rh?'A':'D';
names.forEach((name,ni)=>{if(!STATE.pagos[`${name}|${fecha.id}`])return;const preds=STATE.allPreds[name]||{};const pred=preds[rk];if(!pred||pred.h===''||pred.a==='')return;const ph=parseInt(pred.h),pa=parseInt(pred.a),pw=ph>pa?'H':pa>ph?'A':'D';if(ph===rh&&pa===ra)STATE.pts[`${rk}_${ni}`]=3;else if(pw===rw)STATE.pts[`${rk}_${ni}`]=1;else STATE.pts[`${rk}_${ni}`]=0;});});
const tieneRes=fecha.partidos.some((_,mi)=>{const r=STATE.results[`${fecha.id}_${mi}`];return r&&r.h!==''&&r.a!=='';});if(!tieneRes)return;
const totales=names.map((_,ni)=>{let t=0;fecha.partidos.forEach((_,mi)=>{const p=STATE.pts[`${fecha.id}_${mi}_${ni}`];if(p>0)t+=p;});return t;});
const maxPts=Math.max(...totales);if(maxPts<=0)return;const winners=totales.map((t,ni)=>({ni,t})).filter(x=>x.t===maxPts);const share=Math.round((ap*names.length)/winners.length);
STATE.fechaWinners[fecha.id]=winners.map(w=>({ni:w.ni,pts:w.t,amount:share}));});
await kset('pts',STATE.pts);await kset('fechaWinners',STATE.fechaWinners);renderPartidos();renderTabla();renderPozo();showToast('🔢 Calculado y guardado');}
function renderTabla(){const names=STATE.players;const scores=names.map((name,ni)=>{let pts=0,ex=0,win=0,fg=0,din=0;FECHAS.forEach(fecha=>{fecha.partidos.forEach((_,mi)=>{const p=STATE.pts[`${fecha.id}_${mi}_${ni}`];if(p===3){pts+=3;ex++;}else if(p===1){pts+=1;win++;}});});Object.values(STATE.fechaWinners).forEach(ws=>ws.forEach(w=>{if(w.ni===ni){fg++;din+=w.amount;}}));return{name,pts,ex,win,fg,din};});
scores.sort((a,b)=>b.pts-a.pts||b.ex-a.ex);
document.getElementById('tablaBody').innerHTML=scores.length?scores.map((s,i)=>`<tr><td class="rk ${i===0?'rk1':i===1?'rk2':i===2?'rk3':''}">${i+1}</td><td style="font-weight:600">${s.name}${i===0&&s.pts>0?' 🏆':''}</td><td class="c" style="color:var(--green);font-family:Bebas Neue;font-size:1.1rem">${s.ex}</td><td class="c" style="color:var(--gold);font-family:Bebas Neue;font-size:1.1rem">${s.win}</td><td class="c pts-big">${s.pts}</td><td class="c">${s.fg}</td><td class="c money-cell">$${s.din.toLocaleString()}</td></tr>`).join(''):'<tr><td colspan="7" style="text-align:center;color:var(--muted);padding:28px">Sin datos</td></tr>';}
function renderPozo(){const names=STATE.players;let html='';FECHAS.forEach(fecha=>{const ap=APUESTAS[fecha.tipo],pozo=ap*names.length;const ws=STATE.fechaWinners[fecha.id];let wHtml='<span style="color:var(--muted);font-size:0.8rem">Pendiente</span>';if(ws&&ws.length)wHtml=ws.map(w=>`<span class="winner-chip">${names[w.ni]||'?'} +$${w.amount.toLocaleString()}</span>`).join(' ');
html+=`<div style="background:var(--dark2);border:1px solid var(--border);border-radius:8px;padding:12px 16px;margin-bottom:8px"><div style="display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:6px"><div><div style="font-family:Barlow Condensed;font-size:0.95rem;font-weight:700">${fecha.label}</div><div style="font-size:0.72rem;color:var(--muted)">${fecha.partidos.length} partidos · $${ap.toLocaleString()} c/u</div></div><div style="text-align:right"><div style="font-family:Bebas Neue;font-size:1.3rem;color:var(--green)">$${pozo.toLocaleString()}</div><div style="font-size:0.75rem;margin-top:2px">${wHtml}</div></div></div></div>`;});
document.getElementById('pozoDiv').innerHTML=html;}
function renderPagos(){
  const names=STATE.players;
  if(!names.length){document.getElementById('pagosTable').innerHTML='<tr><td class="hint" style="padding:20px">Configurá los jugadores primero.</td></tr>';return;}
  // columnas = las 10 fechas (FECHAS), filas = jugadores
  let head='<thead><tr><th>Jugador</th>';
  FECHAS.forEach(f=>{head+=`<th class="c" style="font-size:0.62rem">${f.tipo.replace('Grupos ','G').replace('16avos ','16-')}<br><span style="color:var(--green)">$${(APUESTAS[f.tipo]/1000)}k</span></th>`;});
  head+='</tr></thead>';
  let body='<tbody>';
  names.forEach(name=>{
    body+=`<tr><td style="font-weight:600;white-space:nowrap">${name}</td>`;
    FECHAS.forEach(f=>{
      const key=`${name}|${f.id}`;const pagado=STATE.pagos[key];
      body+=`<td class="c"><div onclick="togglePago('${name}','${f.id}')" style="cursor:pointer;width:26px;height:26px;border-radius:6px;margin:0 auto;display:flex;align-items:center;justify-content:center;font-size:0.9rem;border:2px solid ${pagado?'var(--green)':'var(--border)'};background:${pagado?'rgba(29,185,84,0.25)':'transparent'}">${pagado?'✅':''}</div></td>`;
    });
    body+='</tr>';
  });
  body+='</tbody>';
  document.getElementById('pagosTable').innerHTML=head+body;
}
function togglePago(name,fid){const key=`${name}|${fid}`;if(STATE.pagos[key])delete STATE.pagos[key];else STATE.pagos[key]=true;renderPagos();}
async function savePagos(){try{await kset('pagos',STATE.pagos);showToast('💵 Pagos guardados');}catch(e){showToast('❌ '+e.message,true);}}
function showToast(msg,err=false){const t=document.getElementById('toast');t.textContent=msg;t.className='toast show'+(err?' err':'');setTimeout(()=>t.classList.remove('show'),2800);}
</script>
</body>
</html>

HTMLEOF2
echo "Copiando a public/..."
mkdir -p public
cp index.html public/index.html
cp admin.html public/admin.html
echo ""
echo "=== Verificacion ==="
if grep -q "revelarPreds" public/index.html; then echo "OK: revelacion de pronosticos activa"; else echo "ERROR"; fi
if grep -q "i<30" public/admin.html; then echo "OK: 30 cupos"; else echo "ERROR cupos"; fi
if grep -q "epic-possum-110301" public/index.html; then echo "OK: base correcta"; else echo "ERROR base"; fi
echo ""
echo "=== Desplegando ==="
git add -A
git commit -m "Revelar pronosticos de pagadores al iniciar partido"
git push
npx vercel --prod --yes
echo ""
echo "=== LISTO ==="
