
from pathlib import Path
import re
import sys

archivo = Path(sys.argv[1])
salida = archivo.with_stem(archivo.stem + "-corregido")

# inicio, fin, página:

RANGOS = [
   (27, 49, "p1-s1-c1"),
   (50, 141, "p1-s1-c2"),
   (142, 184, "p1-s1-c3"),
   (198, 421, "p1-s2-c1"),
   (422, 682, "p1-s2-c2"),
   (683, 1065, "p1-s2-c3"),
   (1077, 1134, "p2-s1-c1"),
   (1135, 1209, "p2-s1-c2"),
   (1212, 1419, "p2-s2-c1"),
   (1420, 1532, "p2-s2-c2"),
   (1533, 1666, "p2-s2-c3"),
   (1667, 1690, "p2-s2-c4"),
   (1700, 1876, "p3-s1-c1"),
   (1877, 1948, "p3-s1-c2"),
   (1949, 2051, "p3-s1-c3"),
   (2083, 2195, "p3-s2-c1"),
   (2196, 2557, "p3-s2-c2"),
   (2566, 2649, "p4-s1-c1"),
   (2650, 2696, "p4-s1-c2"),
   (2697, 2758, "p4-s1-c3"),
   (2759, 2854, "p4-s2")
]

# archivo = Path("indice.md")
# salida = Path("indice-corregido.md")

patron = re.compile(r'\[(\d+)\]\(p\?-s\?-c\?#n\1\)')

def reemplazar(match):
   numero = int(match.group(1))

   for inicio, fin, pagina in RANGOS:
      if inicio <= numero <= fin:
         return f'[{numero}]({pagina}#n{numero})'

   return match.group(0)

texto = archivo.read_text(encoding="utf-8")
resultado = patron.sub(reemplazar, texto)
salida.write_text(resultado, encoding="utf-8")

print(f"Archivo generado: {salida}")
