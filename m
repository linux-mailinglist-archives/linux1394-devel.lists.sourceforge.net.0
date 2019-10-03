Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 085B8C97E2
	for <lists+linux1394-devel@lfdr.de>; Thu,  3 Oct 2019 07:18:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1iFtVm-0006cW-2H; Thu, 03 Oct 2019 05:18:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cyrozap@gmail.com>) id 1iFtVk-0006cE-DZ
 for linux1394-devel@lists.sourceforge.net; Thu, 03 Oct 2019 05:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vdBZqZ0yfXaeF7dwh3WJwlCmIIokNiROPTvSmYNFmS4=; b=P1+09YfS3zDIKJ8XS8iejWs149
 SzALQe+Q2CPSWVVVLVGMDEcpqicQySq9psZVbsdzQ/6CtgDag3YW4KNAm6yPTnq+HZuZ/GtdlCF3w
 axy8TSWkt+yet/Jz84tMwloGsc2D39nfDDKufXwPLfhjOPwHbagNiid7HIFtjoJdBaFU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vdBZqZ0yfXaeF7dwh3WJwlCmIIokNiROPTvSmYNFmS4=; b=l
 IV1gUl0gPFOcr+ZG0luDgVGVem7Jy/QYEwtM8WjlOzLuq5X3P0qA+thq/JmF6jGaQl4BCKIP/opa4
 MlAWDPmz8NDTRhjlNOIywhMEiifjNq8nwOUkB0j7O1m98jA8uor9Go/QUhfpa6kyszi5Qaw/r5tEj
 Olg7/rfp2GsudUno=;
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iFtVi-00FAWZ-MT
 for linux1394-devel@lists.sourceforge.net; Thu, 03 Oct 2019 05:18:44 +0000
Received: by mail-io1-f66.google.com with SMTP id a1so2631164ioc.6
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 02 Oct 2019 22:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=vdBZqZ0yfXaeF7dwh3WJwlCmIIokNiROPTvSmYNFmS4=;
 b=ZIopBfEacquqtR4SnCbTPTjOM/rSUB6+1t2ZkugvnThmEcnRbLBGFJlX25hueuOnT4
 PGLxHoLixEfpnmk75uRZZPnS1VyEqAIiJgeFMyGlC4eAEYsFaCn3xQdj5mLKQMfNdN6M
 5GIsI/enc9HjjTHHgYPBlg0MvgoR/rtlc3/FCI4UK+lpgpq2zJUgOJ5ak034xyF9rUJS
 lpKquRQgc3FFrc7gPVJsyv8jT/8dZetVLV+bkSS1EKMnlRdFfoMttSmYF2PMqNkLReUR
 R4mFkexxkvom1vfPutiAF5bJXc4jCOcJwRJMtnlARnesHIYbOtJ5OuIXRnxhGXyEkYTB
 Toqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=vdBZqZ0yfXaeF7dwh3WJwlCmIIokNiROPTvSmYNFmS4=;
 b=HIokaqJ8KgbzK1U5RzULsZqqqJNqR96eKq093F4pOMwOM+igcYxRMUkEWxtm0tOyVq
 6xO3nawjCA2m8Uo4Euo3692Bk1zrjUkm9AlgB+GQFz1/vL1jNxagw7HE4m/cv4+v+vJO
 JEnEY/13v5HSEmWSuMdmTYQwjQPOEXefaJDcv4yG8xg+8Do4IBKgoLwwz5pWuXiaHdx2
 DsAnXk53KZDokaoFrLA3M7fGZzIrO9HlY2uVRP22EM59yivST8MdMOktv5w4H6AVXNU2
 lMaYv6VdGAKpzVpFH6wSdg4Smo5tp0yr7yjfYXZtAcNLA03+KdLkjvF/UH0i3hMbPxc+
 zXMg==
X-Gm-Message-State: APjAAAVu41Wxt2B96cF61kPVgJzr0FQ5c+iBwYg7TqzGR3B1QsOIxgad
 ljmD3/DcEdAiCuk4Cnc2bKvyt6pnzKtO9Zy52YUOMIz3/Yk=
X-Google-Smtp-Source: APXvYqzXH3aAvVL6sE9z47mIYzP8zasWOIbE8TCkC889kNShhYZydltEfAV1E0SgYZJ+4daB53nGc5YQFnW15bPFwW8=
X-Received: by 2002:a02:ccba:: with SMTP id t26mr7852628jap.49.1570079916493; 
 Wed, 02 Oct 2019 22:18:36 -0700 (PDT)
MIME-Version: 1.0
From: Forest Crossman <cyrozap@gmail.com>
Date: Thu, 3 Oct 2019 00:18:24 -0500
Message-ID: <CAO3ALPxpRjbV5w-FofOuGF63Dzy3BOv6HNnrO2rQ3sTUdARC_A@mail.gmail.com>
Subject: Firewire host controller fails to function on kernel with 64k pages
To: linux1394-devel@lists.sourceforge.net
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (cyrozap[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iFtVi-00FAWZ-MT
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
Content-Type: multipart/mixed; boundary="===============7731346611378400544=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============7731346611378400544==
Content-Type: multipart/alternative; boundary="000000000000b110500593fab778"

--000000000000b110500593fab778
Content-Type: text/plain; charset="UTF-8"

Hi, all,

I have a Syba SY-PEX30016 Firewire host controller card (TI XIO2213B-based)
that I'm trying to use on a POWER9 system (RaptorCS Talos II), and while
the driver loads fine and recognizes the host controller, devices fail to
enumerate, and trying to interact with any devices on the bus fails. For
example, lsfirewirephy from linux-firewire-utils reports a timeout, and
increasing that timeout didn't resolve the problem. On a hunch, I tried
booting with a kernel configured for 4k pages (the default page size on
this platform is 64k) and it seems to work now, or at least it works well
enough for lsfirewirephy to work.

I'd like to try to fix this issue so the driver works with kernels built
with a 64k page size. If anyone knows where in the driver the issue might
be, please let me know.

Here's my dmesg output: https://paste.debian.net/hidden/f20f70cf/

I set `/sys/module/firewire_ohci/parameters/debug` set to 7 just before I
plugged in a Canopus ADVC-100 at timestamp 124.526862, and
timestamp 215.392596 is when I tried running lsfirewirephy and it reported
a "timeout" error twice.

I'm going to start digging into the kernel sources now, but if anyone
already knows what the fix needs to be and wants to save me a bunch of
time, I'll graciously accept any help offered. Also, if more information is
needed to figure that out, please let me know and I'll send it.

Thanks,

Forest

--000000000000b110500593fab778
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, all,<br><br>I have a Syba SY-PEX30016 Firewire host co=
ntroller card (TI XIO2213B-based) that I&#39;m trying to use on a POWER9 sy=
stem (RaptorCS Talos II), and while the driver loads fine and recognizes th=
e host controller, devices fail to enumerate, and trying to interact with a=
ny devices on the bus fails. For example, lsfirewirephy from linux-firewire=
-utils reports a timeout, and increasing that timeout didn&#39;t resolve th=
e problem. On a hunch, I tried booting with a kernel configured for 4k page=
s (the default page size on this platform is 64k) and it seems to work now,=
 or at least it works well enough for lsfirewirephy to work.<br><br>I&#39;d=
 like to try to fix this issue so the driver works with kernels built with =
a 64k page size. If anyone knows where in the driver the issue=C2=A0might b=
e, please let me know.<br><br>Here&#39;s my dmesg output:=C2=A0<a href=3D"h=
ttps://paste.debian.net/hidden/f20f70cf/">https://paste.debian.net/hidden/f=
20f70cf/</a><div><br></div><div>I set `/sys/module/firewire_ohci/parameters=
/debug` set to 7 just before I plugged in a Canopus ADVC-100 at timestamp 1=
24.526862, and timestamp=C2=A0215.392596 is when I tried running lsfirewire=
phy and it reported a &quot;timeout&quot; error twice.<div><br></div><div>I=
&#39;m going to start digging into the kernel sources now, but if anyone al=
ready knows what the fix needs to be and wants to save me a bunch of time, =
I&#39;ll graciously accept any help offered. Also, if more information is n=
eeded to figure that out, please let me know and I&#39;ll send it.</div><di=
v><br></div><div>Thanks,</div><div><br></div><div>Forest</div></div></div>

--000000000000b110500593fab778--


--===============7731346611378400544==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7731346611378400544==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============7731346611378400544==--

