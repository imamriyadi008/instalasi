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
BZh91AY&SY̔u)  ����}����ޮ����  D   � P PL�ov��G��	DL�~)�~���i4�<(z�MCO&��Tƣ��h4D�=L�2z�z��� 4@�    ���Ѥ�F���dd��h 4����F�A�L�A�F&�4��   $��	��h'�ѣF�4���h �� �٧V�[����mK���;銛�p҆�-q
�6h�6���5lM8�'5���)Y�4 ���x��{*�C�&$�40�,ඣ&3=��D���܅ZE$lX֪K�bZ_xɘ؍����2��CN��B���hN'�t���=�'p��F+�r-бU���x����\��ޞ$f7`�e�p,Q��ٶ��30��	$�Vd�����-�¯1&q��xË��<j"�5�X�?E�RR�,*BE�y=�
�(���څCF(��� ����%� �D+�N`���z�� %)w%��`&�7Вc��f[�U�2�.Y\��4���.ާ��'��e��Q��TL�E6�W.��Y�~�(?�z�9͖7*���hF��p�s��$���*u]��-�Z�-eڵP*�{� �w+��}�
���$#���#��Y��X���ƃ���eDD�}|�)r/�b��g	M��X���<��M{lA�kH.	�x�r1i��@I��d��R�C�FI�+�+�������Za�'�r2��r�aQ3rҲ0� �n˅��{�<B����Eoc��-d�v�Eapa�4���l��;9 qkcF���5��x�&W�`���H9�efJ��qe��vG�)rnZ�mDL�]�V�!$�+Mh>|!��>�d��Q��X�-��"��{�B�?8B�&؞�,6�e���k)���&�'pA6�@nC^��T��1����6�δ22�z�اU�2�w���8�o��e����}z�ehk�e�����f�*�u!K�Ѹ!�1�<������F#v�@�-�*�t)7QT$�&A�iE����c1��fX��V�Q�'E�Ő,kD;[�R�"%#nqI2�ۜ^f�F�Rj*������.��1'�r�ԶX�|�iޔ��4��P_�Z"��g���bp�}�-��b}���$ê� ȸ�:�~�$���$��!�Hc��8Y%@�� 8���"�(HfJ:��