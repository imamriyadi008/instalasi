#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYӞU  ���Dp}���>nގ����       @[��֑�S��4=4j4��mC�A�Ʉa0�d�@2Q�I��T�M�Ѧ�M4 ��O�#M=@4 2442�4� �$��{i?S�Q�e�I�G�ڠ4i�!l��#09�y��8��	�)LwC�p�v� �7���	 �I'�徬a�9�}�'��AbO2��1Z�oF�JQ�@�#���p��?9�G�v�������T9��%��[#���S7W�I�+p&I�dB�F��L�U�����9����	�-y����Ů��Dx�eh5����g$�WV�"���X"�Դ9	IL��D��^��ܑ�{�L�	ĝ|[?S5�{K"L��`t9؆�ݠ�K�k���g2%`�bs�P���n��$"�x�!�.�����&D�N��$�H���l���h�/>P��D�+��%FkL�� ߬��׆�V��t~���ML,#�F׌�QQt���>2ٌ5��Y;Q����.o�v�sO!f�p{S��Vh�D�ez�"����:�+A�u�O,�؃�<�9��RD������t���8t7���Mm�����b�R\Х���sJ�.@flU
�,IuiT/�8�/%�ރNDYpB�=���%�8'Հ���FЁu6p)�c̈́f�*�+@��?�I.�$�qK�\��.�p� '�<�