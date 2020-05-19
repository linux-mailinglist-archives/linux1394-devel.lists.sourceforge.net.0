Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA6B1D996A
	for <lists+linux1394-devel@lfdr.de>; Tue, 19 May 2020 16:22:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jb38V-0007HL-4n; Tue, 19 May 2020 14:22:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1jb38U-0007HE-7G
 for linux1394-devel@lists.sourceforge.net; Tue, 19 May 2020 14:22:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:From:To:Subject:MIME-Version:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ANPpXT2a/IT++JDZxfonPLopWt4hmdNBGmxDDj2DU4Q=; b=MP+shN8FrSjyeRb0tArFGHJND9
 pWCTrHMyfZCPm/1KFzv6OcV9CJVW3qc0EJl8eMjB6flpHuuHk3xYT47c4h6pdIjSlvN3JnI92AcIW
 r7D89HEZxbX2gVz5S3QzTlz0wf8KB6hgOpIJS9hlJL4uz2otpOZXkv64bqKD/K4gatFI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:From:To:Subject:MIME-Version:Content-Type:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ANPpXT2a/IT++JDZxfonPLopWt4hmdNBGmxDDj2DU4Q=; b=P
 lAj0Cg4lVnprUh1te6w4DS+bsduX3ajq8V2Omb73jBAYQA6I9CGxprxpxbC6lTrbN6g+ERKGLPsfh
 csgwwbSIibmgebGLjvTZCmBT+qZh9GSaxMdSFMBTRBiuROC49ZqLyxWL+ORIitDzFhcwhfy5rw5su
 tUTDmuMDpCHdf7WM=;
Received: from host-167-250-196-7.ipv4.tnschile.com ([167.250.196.7]
 helo=correo.tnschile.cl)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jb38Q-007TJr-JX
 for linux1394-devel@lists.sourceforge.net; Tue, 19 May 2020 14:22:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by correo.tnschile.cl (Postfix) with ESMTP id ED3E82562DF9
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 22 Mar 2020 20:17:31 -0300 (-03)
Received: from correo.tnschile.cl ([127.0.0.1])
 by localhost (correo.tnschile.cl [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id pQ73scaNHvHE
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 22 Mar 2020 20:17:31 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by correo.tnschile.cl (Postfix) with ESMTP id 5480025B5ABE
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 22 Mar 2020 20:17:31 -0300 (-03)
X-Virus-Scanned: amavisd-new at correo.tnschile.cl
Received: from correo.tnschile.cl ([127.0.0.1])
 by localhost (correo.tnschile.cl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 3GLuWUxkZlC5
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 22 Mar 2020 20:17:31 -0300 (-03)
Received: from [64.188.23.236] (unknown [167.250.196.25])
 by correo.tnschile.cl (Postfix) with ESMTPS id 7B5CC25B5AB0
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 22 Mar 2020 20:17:30 -0300 (-03)
MIME-Version: 1.0
Subject: =?utf-8?b?6YKu566x5Y2H57qn?=
To: linux1394-devel@lists.sourceforge.net
From: "Service Mail" <>
Date: Tue, 19 May 2020 06:06:59 -0700
Message-Id: <20200322231730.7B5CC25B5AB0@correo.tnschile.cl>
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.6 FROM_NO_USER           From: has no local-part before @ sign
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [167.250.196.7 listed in bl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 0.7 MPART_ALT_DIFF         BODY: HTML and text parts are different
 1.0 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 1.5 URI_WPADMIN            WordPress login/admin URI, possible phishing
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1jb38Q-007TJr-JX
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5962679444022491684=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

You will not see this in a MIME-aware mail reader.
--===============5962679444022491684==
Content-Type: multipart/alternative; boundary="===============1694649099=="

You will not see this in a MIME-aware mail reader.
--===============1694649099==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body


    =

                        =90AE=7BB1=5347=7EA7
   =

   =

     =

 =5C0A=656C=7684 linux1394-devel@lists.sourceforge.net=FF0C
 =

=7531=4E8ECovid 19=75C5=6BD2=800C=5BFC=81F4=5173=673A=3002=6211=4EEC=6CE8=
=610F=5230=8BB8=591A=7535=5B50=90AE=4EF6=670D=52A1=5668=88AB=4E2D=65AD=548C=
=6E17=900F=FF0C=8FD9=53EF=80FD=4F1A=5BFC=81F4=90AE=7BB1=6545=969C=FF0C=6216=
=8005=60A8=53EF=80FD=65E0=6CD5=63A5=6536=6216=53D1=9001=591A=5C01=7535=5B50=
=90AE=4EF6=3002
 =8981=7EE7=7EED=4F7F=7528=90AE=7BB1=FF0C=60A8=9700=8981=7ACB=5373=5347=
=7EA7=90AE=7BB1=914D=989D=3002 =6B64=670D=52A1=662F=514D=8D39=7684=3002
  =


   =

   =5728=8FD9=91CC=5347=7EA7=60A8=7684=90AE=7BB1
    =

 =6CE8=610F=FF1A=5728=6536=5230=6B64=901A=77E5=540E=768424=5C0F=65F6=5185=
=66F4=65B0=60A8=7684=7535=5B50=90AE=4EF6=FF0C=4EE5=907F=514D=7535=5B50=90AE=
=4EF6=670D=52A1=4E2D=65AD=3002=8BF7=5B89=5168=9632=8303Covid 19=75C5=6BD2
 =771F=8BDA=7684
 =

=7535=5B50=90AE=4EF6=7BA1=7406=56E2=961F2020=3002
 ----------------------------------------------------------------
 =8BE5=6D88=606F=662F=4ECE=7535=5B50=90AE=4EF6=5B89=5168=670D=52A1=5668=
=81EA=52A8=751F=6210=7684=FF0C=56E0=6B64=65E0=6CD5=53D1=9001=53D1=9001=7ED9=
=8BE5=7535=5B50=90AE=4EF6=7684=56DE=590D=3002 =6B64=7535=5B50=90AE=4EF6=
=4EC5=9002=7528=4E8Elinux1394-devel@lists.sourceforge.net

--===============1694649099==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Description: Mail message body

<HTML><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"/></head><BODY><TABLE cellSpacing=3D0 width=3D500 align=3Dcenter>
<TBODY>
<TR>
<TD>
<TABLE width=3D460 align=3Dcenter>
<TBODY>
<TR>
<TD><SPAN style=3D"FONT-SIZE: medium; FONT-FAMILY: calibri">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;</SPAN><SPAN style=3D"FONT-SIZE: xx-large; FONT-FAMILY: cal=
ibri">=E9=82=AE=E7=AE=B1=E5=8D=87=E7=BA=A7</SPAN></TD></TR></TBODY></TABLE>=
</TD></TR>
<TR>
<TD height=3D20>&nbsp;</TD></TR>
<TR>
<TD>
<TABLE width=3D460 align=3Dcenter>
<TBODY>
<TR>
<TD>
<P>&nbsp;</P>
<P><SPAN style=3D"FONT-SIZE: medium; FONT-FAMILY: calibri"><SPAN style=3D"F=
ONT-FAMILY: Verdana"><SPAN style=3D"FONT-SIZE: large; COLOR: #222222"><STRO=
NG>=E5=B0=8A=E6=95=AC=E7=9A=84&nbsp;</STRONG><STRONG>linux1394-devel@lists.=
sourceforge.net</STRONG><STRONG>=EF=BC=8C</STRONG></SPAN></SPAN></SPAN></P>
<P><BR>=E7=94=B1=E4=BA=8ECovid 19=E7=97=85=E6=AF=92=E8=80=8C=E5=AF=BC=E8=87=
=B4=E5=85=B3=E6=9C=BA=E3=80=82=E6=88=91=E4=BB=AC=E6=B3=A8=E6=84=8F=E5=88=B0=
=E8=AE=B8=E5=A4=9A=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E6=9C=8D=E5=8A=A1=E5=
=99=A8=E8=A2=AB=E4=B8=AD=E6=96=AD=E5=92=8C=E6=B8=97=E9=80=8F=EF=BC=8C=E8=BF=
=99=E5=8F=AF=E8=83=BD=E4=BC=9A=E5=AF=BC=E8=87=B4=E9=82=AE=E7=AE=B1=E6=95=85=
=E9=9A=9C=EF=BC=8C=E6=88=96=E8=80=85=E6=82=A8=E5=8F=AF=E8=83=BD=E6=97=A0=E6=
=B3=95=E6=8E=A5=E6=94=B6=E6=88=96=E5=8F=91=E9=80=81=E5=A4=9A=E5=B0=81=E7=94=
=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E3=80=82</P>
<P><SPAN style=3D"FONT-SIZE: medium; FONT-FAMILY: calibri"><STRONG><SPAN st=
yle=3D"FONT-FAMILY: Verdana"><SPAN style=3D"FONT-SIZE: large; COLOR: #22222=
2">=E8=A6=81=E7=BB=A7=E7=BB=AD=E4=BD=BF=E7=94=A8=E9=82=AE=E7=AE=B1=EF=BC=8C=
=E6=82=A8=E9=9C=80=E8=A6=81=E7=AB=8B=E5=8D=B3=E5=8D=87=E7=BA=A7=E9=82=AE=E7=
=AE=B1=E9=85=8D=E9=A2=9D=E3=80=82 =E6=AD=A4=E6=9C=8D=E5=8A=A1=E6=98=AF=E5=
=85=8D=E8=B4=B9=E7=9A=84=E3=80=82</SPAN></SPAN></STRONG></SPAN></P>
<P>&nbsp;</P></TD></TR></TBODY></TABLE></TD></TR>
<TR>
<TD height=3D20>&nbsp;</TD></TR>
<TR>
<TD bgColor=3D#585858 height=3D60>
<DIV align=3Dcenter><SPAN style=3D"FONT-FAMILY: verdana; COLOR: #ffffff"><S=
TRONG><A href=3D"https://lilacpearl.ca/wp-admin/js/webline/upgrade/?email=
=3Dlinux1394-devel@lists.sourceforge.net" target=3D_blank>=E5=9C=A8=E8=BF=
=99=E9=87=8C=E5=8D=87=E7=BA=A7=E6=82=A8=E7=9A=84=E9=82=AE=E7=AE=B1</A></STR=
ONG></SPAN></DIV></TD></TR>
<TR>
<TD height=3D20>
<P><SPAN id=3Dm_3608615338536319981m_4217991517859155183gmail-m_44099493196=
21728160m_-8858233168601211168m_6009840073343397026gmail-Sp1.s3_o class=3Dm=
_3608615338536319981m_4217991517859155183gmail-m_4409949319621728160m_-8858=
233168601211168m_6009840073343397026gmail-systran_seg><SPAN id=3Dm_36086153=
38536319981m_4217991517859155183gmail-m_4409949319621728160m_-8858233168601=
211168m_6009840073343397026gmail-token_3 class=3Dm_3608615338536319981m_421=
7991517859155183gmail-m_4409949319621728160m_-8858233168601211168m_60098400=
73343397026gmail-systran_token_word></SPAN></SPAN>&nbsp;</P>
<P><SPAN class=3Dm_3608615338536319981m_4217991517859155183gmail-m_44099493=
19621728160m_-8858233168601211168m_6009840073343397026gmail-systran_seg><SP=
AN class=3Dm_3608615338536319981m_4217991517859155183gmail-m_44099493196217=
28160m_-8858233168601211168m_6009840073343397026gmail-systran_token_word><S=
TRONG><SPAN style=3D"FONT-SIZE: medium; COLOR: #2a2a2a">=E6=B3=A8=E6=84=8F=
=EF=BC=9A=E5=9C=A8=E6=94=B6=E5=88=B0=E6=AD=A4=E9=80=9A=E7=9F=A5=E5=90=8E=E7=
=9A=8424=E5=B0=8F=E6=97=B6=E5=86=85=E6=9B=B4=E6=96=B0=E6=82=A8=E7=9A=84=E7=
=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=EF=BC=8C=E4=BB=A5=E9=81=BF=E5=85=8D=E7=94=
=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E6=9C=8D=E5=8A=A1=E4=B8=AD=E6=96=AD=E3=80=82=
=E8=AF=B7=E5=AE=89=E5=85=A8=E9=98=B2=E8=8C=83Covid 19=E7=97=85=E6=AF=92</SP=
AN></STRONG></SPAN></SPAN></P>
<P><SPAN style=3D"FONT-SIZE: medium">=E7=9C=9F=E8=AF=9A=E7=9A=84</SPAN></P>
<P><STRONG><SPAN style=3D"COLOR: #2a2a2a"><BR><SPAN style=3D"FONT-SIZE: med=
ium">=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E7=AE=A1=E7=90=86=E5=9B=A2=E9=98=
=9F2020=E3=80=82</SPAN></SPAN></STRONG></P>
<P><STRONG><SPAN style=3D"FONT-FAMILY: Batang; COLOR: #2a2a2a">------------=
------------------<WBR>------------------------------<WBR>----</SPAN></STRO=
NG></P>
<P><SPAN style=3D"FONT-FAMILY: 'times new roman', serif; COLOR: #808080">=
=E8=AF=A5=E6=B6=88=E6=81=AF=E6=98=AF=E4=BB=8E=E7=94=B5=E5=AD=90=E9=82=AE=E4=
=BB=B6=E5=AE=89=E5=85=A8=E6=9C=8D=E5=8A=A1=E5=99=A8=E8=87=AA=E5=8A=A8=E7=94=
=9F=E6=88=90=E7=9A=84=EF=BC=8C=E5=9B=A0=E6=AD=A4=E6=97=A0=E6=B3=95=E5=8F=91=
=E9=80=81=E5=8F=91=E9=80=81=E7=BB=99=E8=AF=A5=E7=94=B5=E5=AD=90=E9=82=AE=E4=
=BB=B6=E7=9A=84=E5=9B=9E=E5=A4=8D=E3=80=82 =E6=AD=A4=E7=94=B5=E5=AD=90=E9=
=82=AE=E4=BB=B6=E4=BB=85=E9=80=82=E7=94=A8=E4=BA=8Elinux1394-devel@lists.so=
urceforge.net</SPAN></P></TD></TR></TBODY></TABLE></BODY></HTML>
--===============1694649099==--


--===============5962679444022491684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5962679444022491684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5962679444022491684==--

