//由 KIPI-C 在 2017/7/28 17:03 创建
// k-lrcreader 1.8 引擎 由KIPI-C独立开发
/* Originated in the k-audio.js
   k-lrcreader.js is made by KIPI-C, All Rights Reserved.
   k-lrcreader.js GitHub address: https://github.com/KIPI-C/k-lrcreader/.
*/
var $$klrcreader = {
    id: 1,
    version: "1.8",
    author: "KIPI-C",
    github: "https://github.com/KIPI-C/k-lrcreader/",
    k0: {connet: "", cmd: ""},
    load: (function lrcread(lrc, audio, out, out2, alt) {
        if (lrc && audio && out && out2) {
            out.innerHTML = alt;
            var text, li, long, x, xx, xxx, ar = "", ti = "", by = "", min, s, ms, upt, nuber, lrcc, px, lid,
                offset = 0, inf = 0, uf = undefined, array = [], part = [], part2 = [], time = [];
            var xh, re;
            if (window.XMLHttpRequest) {
                xh = new XMLHttpRequest()
            } else {
                xh = new ActiveXObject("Microsoft.XMLHTTP")
            }
            if (xh) {
                xh.onreadystatechange = run;
                xh.open("GET", lrc, true);
                xh.send(null)
            }

            function run() {
                if (xh.response) {
                    if (xh.response !== re && xh.response !== "") {
                        lid = $$klrcreader.id;
                        $$klrcreader["k" + lid] = {};
                        if (xh.status === 200) {
                            a(xh.response)
                        } else {
                            out.innerHTML = alt;
                            out2.innerHTML = ""
                        }
                        $$klrcreader["k" + lid]["connet"] = {"1": out, "2": out2, "audio": audio};
                        $$klrcreader["k" + lid]["status"] = xh.status;
                        $$klrcreader["k" + lid]["readyState"] = xh.readyState;
                        $$klrcreader["k" + lid]["cmd"] = "run";
                        try {
                            if ($$klrcreader["k" + (lid - 1)]["connet"]["1"] == $$klrcreader["k" + lid]["connet"]["1"] && $$klrcreader["k" + (lid - 1)]["connet"]["2"] == $$klrcreader["k" + lid]["connet"]["2"] && $$klrcreader["k" + (lid - 1)]["connet"]["audio"] == $$klrcreader["k" + lid]["connet"]["audio"]) {
                                $$klrcreader["k" + (lid - 1)]["cmd"] = "del"
                            }
                        } finally {
                        }
                        $$klrcreader.id++;
                        delete xh
                    }
                    re = xh.response
                }
            }

            function a(t) {
                delete run;
                if (lrc) {
                    text = t.replace(/\n/g, "").replace(/\r/g, "");
                    delete t;
                    while (text.indexOf("[", li + 1) !== -1) {
                        li = text.indexOf("[", li + 1);
                        array.push(li)
                    }
                    delete li;
                    long = array.push();
                    x = 0;
                    xx = 0;
                    while (x !== long) {
                        if (x === 0) {
                            xx = 0
                        } else {
                            xx = array[x]
                        }
                        if (x === long - 1) {
                            part[x] = text.slice(xx, text.length)
                        } else {
                            part[x] = text.slice(xx, array[x + 1])
                        }
                        x++;
                        delete text
                    }
                    x = 0;
                    xx = 0;
                    xxx = 0;
                    $$klrcreader["k" + lid]["ar"] = "";
                    $$klrcreader["k" + lid]["ti"] = "";
                    $$klrcreader["k" + lid]["by"] = "";
                    $$klrcreader["k" + lid]["offset"] = "";
                    while (x !== long) {
                        px = part[x];
                        xx = px.substr(1, 2);
                        switch (xx) {
                            case"ar":
                                ar = px.slice(4, px.lastIndexOf("]"));
                                inf++;
                                $$klrcreader["k" + lid]["ar"] = ar;
                                break;
                            case"ti":
                                ti = px.slice(4, px.lastIndexOf("]"));
                                inf++;
                                $$klrcreader["k" + lid]["ti"] = ti;
                                break;
                            case"by":
                                by = px.slice(4, px.lastIndexOf("]"));
                                inf++;
                                $$klrcreader["k" + lid]["by"] = by;
                                break;
                            case"of":
                                offset = parseInt(px.slice(8, px.lastIndexOf("]")));
                                inf++;
                                $$klrcreader["k" + lid]["offset"] = offset;
                                break;
                            case uf:
                                break;
                            case"al":
                            case null:
                            case"  ":
                            case" ":
                                inf++;
                                break;
                            default:
                                min = xx;
                                s = String().concat(px.charAt(4), px.charAt(5));
                                if (px.charAt(6) === ":" || px.charAt(6) === ".") {
                                    ms = String().concat(px.charAt(7), px.charAt(8))
                                }
                                min = parseInt(min * 6e4);
                                s = parseInt(s * 1e3);
                                ms = parseInt(ms);
                                time[xxx] = (min + s + ms);
                                delete min, s, ms;
                                part[x] = px.slice(10, px.length);
                                if (part[x].indexOf("|") >= 0) {
                                    part2[x] = part[x].slice(part[x].indexOf("|") + 1, part[x].length);
                                    part[x] = part[x].slice(0, part[x].indexOf("|"))
                                }
                                delete px, long;
                                xxx++;
                                break
                        }
                        x++
                    }
                    if (!ar && !ti) {
                        ar = alt
                    } else {
                        if (ar && ti) {
                            ar = ar + " - "
                        }
                        if (ar === uf) {
                            ar = ""
                        }
                        if (ti === uf) {
                            ti = ""
                        }
                        out.innerHTML = ar + ti
                    }
                    x = 0;
                    lrcc = -1;
                    delete x, xx, xxx;
                    var st = setInterval(function () {
                        if ($$klrcreader["k" + lid]["cmd"] !== "del") {
                            var ac = audio.currentTime;
                            if (ac === audio.duration) {
                                out.innerHTML = ar + ti;
                                out2.innerHTML = "";
                                audio.currentTime = 0
                            } else if (ac * 1e3 + $$klrcreader["k" + lid]["offset"] < time[0]) {
                                out.innerHTML = ar + ti;
                                out2.innerHTML = ""
                            }
                            var $t = Math.round(ac * 1e3) + $$klrcreader["k" + lid]["offset"];

                            function check($) {
                                return $ < $t
                            }

                            nuber = time.filter(check).length;
                            if (nuber > 0 && lrcc !== nuber) {
                                lrcc = nuber;
                                out.innerHTML = part[lrcc + inf - 1];
                                out2.innerHTML = part2[lrcc + inf - 1]
                            }
                            delete check, $t, nuber, ac
                        } else {
                            delete $$klrcreader["k" + lid];
                            $$klrcreader["running"].splice($$klrcreader["running"].indexOf(lid), 1);
                            delete this, run, a, lrcread;
                            delete text, li, long, x, xx, xxx, ar, ti, by, offset, min, s, ms, nuber, lrcc, px, inf, uf, array, part, part2, time, xh, re, lrc, audio, out, out2, alt;
                            clearInterval(st)
                        }
                    }, 5)
                }
            }
        } else {
            console.error("Please follow the format:\n $$klrcreader.load(\n\t <String> lrcurl,\n\t <audio Element> audio element,\n\t <Element> output element1,\n\t <Element> output element2,\n\t <String> alt text\n)")
        }
    })
}