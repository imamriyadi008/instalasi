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
BZh91AY&SYF��� n_�t0�����������b�� �p `*��ʯn>���{���V�5{b���rr���������o��d����M��I���/z={�nv�c��5����{�m��Λ��u�;��ݳ�쵷}��Ѵ׬��m�Pv}�ZL�=P�bd	��T�4�mCS�=4�M=L2���i�P  4�ȘCD�51�RxI��F'�z�  ��2  D ��j�bz5G�S�(�2<��� zCM=LȏQ��  MH�jdd�@��L��	��L�h�   %�����SҞ�"��M?I�CJ==S�z�DѠz�P�d� 7�$H@  �bhj��&�h�57�G���P@ ؓ�� �*�,!�2 ��ȏS����J������{�������~^����A�M���g�~?�f��G~��yD�%.���N�42\pޔ,���:�!]l�dc|�j�>�c��[�����GJ�l�Ǟ�A_�X���q�|�[E�K�x��h���
��N��*\���:��Yg�.=����`���W8k;�E�`�wfr��=mˬ����I���t4@��ҩ@q�|� ��T��PK٘a���i15��YbV�JW�^7�39�����!�?��aX+)�fφ<����s$�:�������|�Ծ���q�$�/ӮzK%���K�����4~�o�����H�{���/���J��&��uVZL��y�cl��:�5����ۦ3�蒫Ŀ��Xn��b(l�0~þ�f�I L~����T<S)4q��$1Jd�S5n��̎_5���[j�k[%UE(�]���ߦ��Rx���Wv�x�ʿ@AIg�S-��uA��D~� �c
���u�ӟ�e�������g�㻡��u��{�:e�����oyz��Ye�2��F�C;r��Xch�\�뵪�a���]��vN�PO'����K���
����1u0" ����( ��-�,��M����;�$D;F��1{M�׎�?7Ϡ�s:x1�-=)�W��Ӆ��j�2�cr����i� �<~�X�P�s����U{Ѹ���"U�e�����܏�O�����W=ޓ��M��Vg��AK]�*��OR�=[^�
R���f�|]�����рQ���@���z�M[{~L񗹭�S�����Ҧ�8Z��$��x���k��<�>3�|�r�#:7a���^��,V1E2�K"F"�";����Ũ���ќ��l��搞݁�03 �%�S��]�aM(� E�=p
7@�`�H���y뺪ni��!�����"$<��:��z]���P9'��
\�s:nM�#��cI񗘋DLDbN����cٙ��!�
_-נ�oTna.ZR��Vj�u�r��
��\#�-#�h'syn,7�IZ)qV�I��D��͢Eyc{%���^W��Y˦S{3�,�b p�^j+�Y+���3=2�
��������l�m&^�������hf�}9X����Vs� �5�h�S;�7"t�l�-��ț����C|������'@��2=+{�����|���l�#���f����ĥ.S�-�]`=f��k�C�y���}x-R]��~ٲ��7�Ź9��ի���?"�4X���UU�l�ʋ@L1^0{к���o(g��xmz� |��^���x>�"��5ԹK^��t;��ާ/��#��>�����kg��O��
*��;.rfyr0��͑<�Q�L�i��g��p;7���쉣�X���
$~)�PB5oy������YB|0���v�
;���a_g$ww��c8`�JS��Pl�ڸ��b]W�>�saZ�����ΰt�L�Я\����+[	��i6J���"���S�R�g0b��v�Q/X�fά�Yw��!�X�֩l��q�XeÆh&�ҙ`dqU�f�y�0���#S�M2]��/tD�������EY�3���F���<~�
ႆ����*����`$��30�r�*��M���S�FL�:7�h<4�5��V��@�����������'���&��iV! Ĳ���0��=���Щn}�io��9����by�t�te�ȥgw���2��^�Z�#Ã>�[��\d�>�����[P�dƤwdXY�罊8���L�I���v�=�SV�t%Uu7�N�%�]KuZ�HtoG�u�۴k�Q��U��rn<k�f�!�z�=y��m�˱����C�����pd8zE�*(ɹ=f�`��'�E����O�����:eI@�7�˝n�C���H� �a+}B�.�
Ќ���B�H��S���?Y�H�fP(�ҔA@B���Hr��.q�A��ٕR��B�!x��*������-�ҙt���)�+��'Z�t#�w@MzJ#�eg�u�Z`��(Z��A`+17R�M��WB�T�5Ky/��Au��D	l1쳻��F[�J���x;�� [�+Z#+�j�-�� ��DF`�9�=ER�	v�y~�����zc�~/%xJ���1�q�"�`tuC�Z�t���cT��e'�+��m׵���9�딙�.���ϻ�YR(fq
>a�~\�b ����_hA��6��E�y��z��*So����������*}Pq��#�R�Εt~���!w>�CTī;@����)i�}R�+�!�F#��N�k%��6��%��^��Ҽ׫��Z�Q!@�Uљ�p	!n�6��\l� �FrU!,="CB�𜱃�Pʓ��W �XDAԮO�y�n o&?
��*��(s�qk�BҘq��rr��\ҝ�IS����C��np��&Is0�t����z�vX:�e�.��@��#��3ןKZ.���eg]ʅvb�'])s�)UU\�=�D���x��WMKJ��l6x�<�E���kbZ/ �t�J?Ѧ4�(��4��Cw��}��ʄK+�=X n���sr�i3����5�h���=9��y�j~�o�X5�� y�ѽt2�f@v��/5[�-{�5�~TyȒM�26������\e�Tdd���
';�	�%QT��(,�),�T�bk���$�����\��M-���1�SvޅZ�Z�{���\�7=𝈲�,jvU�m��ʕ�E&~��]��K�ǧ�����,�����A=�6-Z�jĴ�'�Qh���-�f8F�TI�n)f	�Jj[���ϙ�`j��a�ph�G�V�a8n��E�R�$Z�{%ֶ{�+��HB�/R�k9G���f\I	`�$ϔ@��f��w\�J����lp.m�D��<v{G�,2<��?h�����#�_�/�@{*��>ϕ7���*��v��ɲb��cc(�\cX��;eD������LD
�1����X���#D�v��`��;�&�@�t�=����_^�H�e1A�4�ke��gA����q��
��ɰ�~�Sar�����& �=��y��x�䛒�ק�N��?L�Ä�>�O@����P�w��jE�O��V�W��>� ��u�h�q<��������D����Z �Im�~o�&����ї��M4���']{9�o��G�7z�����_�&S�s���m�ο�M��.wM�p��*>��J�ݨsg=��廢/S�&8��rgKZn��,��`z)���)�'a!Rƅ�$HD�e�� �*�"}ݫ�<���;#��h�Ƃ'_�`v"�j���s���ۋrq��ҡۼl�`#�iy��e�	��SS�pde���ɀbׯ����5�-Z�9�f𪴘ԇ�s����p҉���]B�Ws�u�8��D��1 W&�񔃙����}�z|㐏Ԥ���w����1���x�ح��?��D���Mϴ!0�ۂѲqH��hbbw�<D�I�t��g8�Ω���M2m�!�u��	""�[2'�O6:�T\8C�{��9	 ��n�_��T-���×	Y���tM*�e���__;K73��|Z�~u����`GL�����#�1���ʉ�u�,�Ky���c�������	�FaA��h^c�Cl��Z������p�	�U��v*Y�I���?��pw�ETAf��
��u ��kbiZ��q�F!�y��c4Q"h�0&�RJ<��#��ܑ��X0�0l�؊�����4��"��Nl��k��:G%Ҿ_����+wÆ�;�K&�l�>�L0�_��5D�|Fu;���G�T	aM&f���`4LUK�@��E��#o�ewzN��ը�ír�x8��S��IW�.��z����i��Q.#���t 8�GÇ�w���虹!��}�zSt,X�L4���@�OH ���:��mpy�A��*0k�����ƭ��[���&_�����*�+7Z�
	y��ɇ�������.�ltZgh+<���τ.	6!A�#m��r�d/���}:�����w���FH!W��2^*�OF�G�ؚbhQ��Pf㷠�>`Cxo��gɋk� ����T���<�}$6Yn��/ނ�-s$�g�u�邥DM��V!r�k�=�>q�L��Ñ��or�!���r�A%�4b��ԡ��z|��������ػF�)�.	!��{�ʇ2�F<��޻k���1Ѫv���5�I������;
(d"f½���Ʉ�� 9F#��}��||8�ȯX.��G���&��b(Y���H�y����^V�nL��b�a�K�6�.ZJ����Ћ�{�?O�S�Y	!�0��e�A�Q>
���4�/7h;�*���<s�=0N��0"@�ǭ�">�u�y�*T}��Ѐ�* �t��f
Z	��]&�m�e!s4�1}�q�����-t���A�NZ6O�}�L�]s���Pc,�V��DY���3��BFK ��$��ɁS���cd�0H0�B0�"R!z� ���[���5 Ӓ�R��sa���5d���,��g�/k� |"��eі&���SAò���`�q�?��3�Ǟ��~������,2V,s:M�r²8bɆıˈ��,�zsId���/M�B"$�1�6v��ƤaU�?�V���B��1�mi2 ˫���N�ϜCC���T���P�y������p��ȅ��׊�G.�-G@N"�X)�|�*�e���*�QITQ[��n�-���q1d�HL��"��U�X�<	Prg/LK�"vhA�����2*�KQ��QUw��Fp�N�M�k �#��/�B���sOj����r��` 0�0A˙cvT�3A}V�Z:�F`��u�q:�c�!3�Jb��#�(�� �V�	����g�4�Q������'��*�p6�޴l���n��f�P�rWbU<��2���,��Z��C�'Fp�����m���,�����ze�J���r�v4��:N�k~پ�]b-�U���^��Y����6��$4t�-�:cI��<5��Y�"�*e��ə�RW����K�1T�fpzH¡0�
(
�"��͈I�A�=p�� PUv�R៭2L�\䗌@&�b� ��#s�%Mk�,L횄r	!�*�ۀ�����;o���^MI�V�(b���Z�z�Q��T�S���ٷ��e�{�a����E����` ��U�b*d�U�/	#'��_CT���u��/ݥ�#�F.�5��T�B�t�<ǐ���u�4ٱkU��Z[�C��^2���B�̤-��c�y�4E���}u|�HX��v@9�|i6w�A�0��W�y�����<��,!0�،���n읰�\��KYV��E���;��!�H�ܱmd�Rq��xb�Yj#E��
!^;h��$I[���]T[�y���@�S���Ԑ.���LR\F�l+���tE�h���&.q\���7_�����HHF�^�A5BN�V���\�-k@�m���%F�A%�<���棝�ݒ�-U ]�id"�p�5[���C8 ^V	k���F���B!�������N�E=��T�� �<r��J��ٯ^�4�#xl������]	��.|ҳŗ�6�b��B��4�#I�I<k&��9mbʬ��,�h���M���,ۇ�d�d蹲��҆��.C�!d�_�� �B�q E�t��d�M�,U�	�e��C���9ܶC�s ��c�Ԡ+��VEe�z�I�O'<��B]�K�s���_��^��[�A81���$��1�h�`ER�Z
�=�2hu�`3'�z��$��D�&�b.�)��0�>�6����l�+t�oMFc�r��FF��:�!�Pn0ѯ���UUW�v�s�Fa��S	��	��lD|��7gxv��BBERA����F@�n0Q9��&5h��HC$IIP�(�]v���!9W�Ɲ ٬�n��OR���30���T�?\�J=E�B�0?#R�P�	�Qy���R� g"�w���֗���3~�
 ���5���DB����2E�ן9`٢��m�R�AD}�1*��$�E'2U����$2̰�ZBbU��H��z17����.�fH�i#e��eL����ϙ\�z,]I��s"�)�X�BA���Mm�@S�c����[�jNB�#@�5bl��M{_ųpq��O9�*��|&�7�B$��E�����Oa�����+>�
��ܧF���Z�q�X�^�%Ո�����&�U����)���D��e���'�\|��p��{�艥�Z�JS9+�IRƛq��6����A�⏪d��1�����D|qkeHE��u�TĒ�o�ל�GJ��U{j���o0
zK@l֛Y���AcG���W)�+v���_�31\�3B�ݙ��ٛw�@�/��^U�-�v�yE����|��`����Z�r.�!�/�rܬ�bR�Z�M�kX��Be�$w �L�~�f���.d�FȪJ��V#]� ��BV�%�	�M��T�lŗqK�B�J�v���;�T�0�1f�%�#�9M	Р�M�H�E�0�h8A�/���r�n�Dٔ@�]-����ۖ�CZ��Ũ��i\���$�H�"��'�05��1#f�Q$*�J񎧡�"�	y^�YӐ\��Kpq������ ��6#��6w��::
�)#t�H��d��E`�(�2E��9�C���������G�&u����6���:�A�}��ez�ɔ��H2r1#	�|�Nm��(�7J��K����L;�����O ��[���	P� �Pߤ�F�Ѵ�	����}�R�%�	&���J��`X�sc�C�ᆴ�ҳB�/Z
�G�(P�v��	�0��N����	�0�#�����Wx���n~�8C����9���!czs��A�7x޵�yB����~ IF(��dѭ'-���T�rr�uL���eZ�!�D(�� �2!#��ݭ�k	�Xr����s	[�5��Rݣ���hq/B��A�1ll+��+�����Ь����tG +���8�0��3߇�b��H(Z�E�`���D?��OTUw�_�(j�t�c�!!qk��氘����^��ϼ�%�UH�
**`�Tk�<0�]��)�-R�e���A��f��AaU@Bw1��T�E(S�`Yv���@m	�(*	�H���|2"03��X��i51F4ǰ1���;��ys����Y�df@�iBk�B�q��i!���V&2B5�Y����!�0K��΅Jz8d��Lk�u��C*O
BU����P�rޜ��/��~V�f�
7������ש�!���㴄I�鯗 psЋ&{���"���p�@
��c�w���72-~�h�X�cV�y|=Os��%=�A��¹ܗ^�z��(��2�.�2�}JZ^�c��\`` �1�
)Hj�p ^\�@2�l�0*ćq�sHAݷ#Lw�Ʊ0՞�A�`]o�ԕ��90��$��H�h*�X4��*<�.��Z !BE�3h*U����X��|�b�<���R���EH�%�JP��R�E��z���VZ(zG�A�LH��������K���!��-Ѹ�9AR�H!��ѝM �h��l��]qr�m�h�G����:�!�H"*lh��RH�@f�1a�PT����":J�Q*m��;���~���D�c����cg6��25�3BQE���	�q��l��<B�Vf��u�k8^�kC�l��z6���2����p-+^�
%s1�܋]7w\,��|-�b,��F�k9����&Eq�FA淪Mγ.K(α�]��63)�åx�pS�g���V!�4�/�Ԓ@N�]f�S�89M8�2�d�<���mB�U��H�v��r+Q�J�_����X(f�B�`l�7�G��!u��M�R�GW�
�V0�dA�F���e�4�Z��56Iw~2��i��
a0�=�C���@v�A������P\�5��^l-F)V'*a��xL��Q�#$P�,TR�h�����8C�:Ӥ69�xŻ�'�P�bz	����K�1�
̠��⡨ AC1��
��	�¡p7��)nS�`&&Щ��й������� k�ڇ
լ�omv��2�����J �9b�!�^Z!?&V�LϷ3Gv!�̩rc���c��1$jWO��R��hV��V�%��!za��Rr^�Ԇ�B<t���	�_'5�Iڛ��o})c�sq`G��yi5��k_y���1x�����C4��ye S(h5�H��6�q��6 UKr��	*�x�i�1�Ӳł�JS�X.��� �rC�t^;����`q5����d`a%/rL���ˍ*1,����u(߹<s�f���Ji�#x�_U�gC�W�hõ��TC�k���BH+�X�;�3�&��,�E��XT��+0G
R�8�t��8� V��/������Z�`�����4���*���+d�K��]�i�C�Y�}ۺ�� �q;5��G�P����$�O:���(
?�=(>�����W��?�8�#[h)I�T�nN�ڞ.�06�ͱ����\fN��'W�.=o�����������T���y�~(�����wڢ��S� )�?`��)�4�?P