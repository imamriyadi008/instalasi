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
BZh91AY&SYŅ�  T��}�sF�� ?���  D  � P @y�֔�Q�hzLL&�4ɦ�b`Ld0 �  H�A�A� M�� 
�A�=&�T�F�h�44�d2#\޳�.'�<�m8gd��/,��H�fˡ0(04�[m��Xڝ���ƾ�F�M�������H弶2�t���X��x\C���V�yvSV�L�*
op=J��Ѯ�@EM�߮�0��RPZnc��@�<��tּ|�u��;΋�G�]�LzGl89��h{�2-�-��a�!��L� |耯��F�c#~#�~�6�(]x��7I;�z}p%��N����
h���m�����|J��7���|:fb4f;6��я&DT͑�j̈�ǉmg!��STF;cL)�6dҼ ���m��@-��!�-��k�(T���F�ŕ$��R��hn���#%&�gG~<#���[a�"��zS&��`�H*-`�\��
H�J�K8���	,/���[�DE����٤aqbE��a�aD_�7�)3JE���&��@�c��:��B?�!�L|��~���]��BC