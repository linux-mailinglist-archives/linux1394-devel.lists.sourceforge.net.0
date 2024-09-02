Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD4A968B98
	for <lists+linux1394-devel@lfdr.de>; Mon,  2 Sep 2024 18:08:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sl9b4-0001fo-WC;
	Mon, 02 Sep 2024 16:08:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrewferguson500@gmail.com>) id 1sl9b3-0001fc-LZ
 for linux1394-devel@lists.sourceforge.net;
 Mon, 02 Sep 2024 16:08:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sVNzmh1Ag8cOCyBK3gOyM/a1bcIB6EjbWgA2b6+NxzU=; b=bsMWlINCQDxZxtSj1JuKJ5ktYM
 hN2QtTawrVKWQ4I8TKLi62jWbkYS+Jw08Et5RUi0UssGGTsYAp4GJqL72dv3D4EM3oJzAZ5eQaWpR
 A+mVGhSQxlgPoDWBz39mBINNEe9LVRX44wwTXitF3mL3IZW+jUIn3UzltDjvvaMWXPgQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sVNzmh1Ag8cOCyBK3gOyM/a1bcIB6EjbWgA2b6+NxzU=; b=HCl7KutcaXB+a/nMoglSy2yMYB
 eayJCE2QfL0ABT3BkHoWJhgcIIrnOth3fGTIjU9/9JBP+U1YVRufFl19zW6Yz7kwqk+vn4CdcT0td
 vWh8LqlB9RtYV3byEb7lkgg8jursm2c/6d3xKhTqHwhKhSlmKKMgBeVq0wwO17ENWKFA=;
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sl9b1-00063R-Kg for linux1394-devel@lists.sourceforge.net;
 Mon, 02 Sep 2024 16:08:05 +0000
Received: by mail-wm1-f50.google.com with SMTP id
 5b1f17b1804b1-42bb8c6e250so33516325e9.1
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 02 Sep 2024 09:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725293272; x=1725898072; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=sVNzmh1Ag8cOCyBK3gOyM/a1bcIB6EjbWgA2b6+NxzU=;
 b=TKo/T+x8udTrYw9byFrURA5Cs4m46jzsONBY1Vt5tb8ex4rAJVbDpMLGl8Gb4Ac5iU
 xRMczJk8Qw4nmRyapcRkm000x6nY4509nfsL7cn/HZ9ytB0WIkGGAXEkcrv3A/RdBoxl
 4iHoqToV5fkQvU0XJHIG843L4Xx/RVku1MK5UNwA+hdppq+7nfjD/wECp25ZdC7hM2pT
 PHc5sYHhiffRBHxoZ1bVTBLVEAk8A5u3ObSQ+cpo3HEdTKVVM5upoz+fNTpwPd3pkXME
 HAZsIZ/Sjl2XXQEXeDlL3ZUqES35nnxM+I37urkKvs8zitIIYB555R2Mwtt8ITs0XuO4
 sRpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725293272; x=1725898072;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sVNzmh1Ag8cOCyBK3gOyM/a1bcIB6EjbWgA2b6+NxzU=;
 b=LBi2HTcv6ZY5vtwEi6HfAeCOw5h3j+ojWD1qYMHDdn+fb7/kOH2h75jGOQDIk2xEQ/
 PGtdP6Fdf4vjJTC0dIn1Dcc1Eo/0rOpDYGDeRpSQnpKcKEjVJP799HMzuJHD5KpH259u
 Ry3T5j3MGlIYNXWyjdeSyc/bKuhTTmadhMrALDSUHQe8A7wXXYkkFlq8fjNQZQ7TloNd
 65YNrI2Hzdzi6uf8WRHaf2I1Q6fYXBlv3sHOBXBq5rcOxSyGfkuWlsS6dFfdRFXq6C/0
 GoBQ5C2GDZcWnQAMV/R2ib7lk8DcL3qixmEw3HZ7o42shURAA1J6vAXE/PSKAcCBEFNT
 nH8A==
X-Gm-Message-State: AOJu0YxzeP1WFdoEpq3ssKkoq8v7vVB+xzcoRHsjsszXq2ZvA1Z6Bn0d
 Esh39KJhwHkKw0zH8/IyiIerGNbngTu2jw2Zz2UPQ5MtLTNjWgkHdA/mK7/nTbmy0UvlURhjzn6
 nL41HpVDoaVpxOCn+nvylsKZ3AgvT0Zyq
X-Google-Smtp-Source: AGHT+IGEtKlBM0I1Kf0eCEdgA91LeSvGwe704vnenezYPtCrVcX23LbS9WnQ7C8V9lOpXldwf4RndAJO1T6qmZEAQ2A=
X-Received: by 2002:adf:ec4b:0:b0:374:8f90:b78b with SMTP id
 ffacd0b85a97d-374c947188fmr2871385f8f.44.1725293271561; Mon, 02 Sep 2024
 09:07:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAFvb365w5QXB8kGizFjytkg+Ag_bY_SB5B3LhHx2wSt7dtL1TQ@mail.gmail.com>
 <ZtLpkQguwX2I19rI@iguana.24-8.net>
In-Reply-To: <ZtLpkQguwX2I19rI@iguana.24-8.net>
From: Andrew Ferguson <andrewferguson500@gmail.com>
Date: Mon, 2 Sep 2024 17:07:40 +0100
Message-ID: <CAFvb367Ov3PN0g2cZm+QOWBk9_cH02ovO63h0GiOs76wwSov_g@mail.gmail.com>
Subject: Re: Bug report: Mac Target Disk Mode not working in some cases
To: linux1394-devel@lists.sourceforge.net
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello Takashi,
 Adam. Thanks both for the replies (and apologies
 for the tardiness of my response). Takashi, I completely understand that
 this is of less interest to you - it is an extremely niche case. Your work
 on the ALSA drivers is amazing. Just a few weeks ago I was helping a friend
 setup a Dig [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.50 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrewferguson500[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [andrewferguson500[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.50 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sl9b1-00063R-Kg
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
Content-Type: multipart/mixed; boundary="===============4873483031901692093=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============4873483031901692093==
Content-Type: multipart/alternative; boundary="00000000000095c1880621252446"

--00000000000095c1880621252446
Content-Type: text/plain; charset="UTF-8"

Hello Takashi, Adam.

Thanks both for the replies (and apologies for the tardiness of my
response).

Takashi, I completely understand that this is of less interest to you - it
is an extremely niche case. Your work on the ALSA drivers is amazing. Just
a few weeks ago I was helping a friend setup a Digidesign 002R on Linux
(thanks to the ALSA drivers). They will be using it to record their
Wurlitzer theatre organ for conversion to a "sample pack" to allow them to
play it digitally on their computer. I also have used a Mackie Onyx 400F
with my 8-track analogue tape recorder, although I managed to break it (the
Mackie) by accidentally looping phantom power into it. There's a Focusrite
Liquid Saffire 56 on ebay I may get as a replacement - I need 192kHz input.

I don't have any experience of kernel development, but I know C through
various work on 5G network stacks. So there is (some!) hope that I will be
able to fumble my way to a solution. Thank you for your advice about the
tracepoint events - I will investigate this. (I'm about to go on a trip
abroad for work reasons, so no / few updates doesn't mean that I'm not
interested in solving this!).

Adam, would you be willing to send me the serial number of the PowerBook G4
you used? That lets me see all of the specs and whether or not it is
similar to mine. Separately (and very much a n00b question!), what's the
best / easiest way to get kernel version 6.8-rc1? is there a specific
distro that ships with development / rc builds of the kernel, or is it
better to install something like Debian Stable and then compile / install a
development build? Ideally I'd replicate your setup to confirm it isn't an
issue on my end.

Thanks!
Andrew

On Sat, 31 Aug 2024 at 10:59, Adam Goldman <adamg@pobox.com> wrote:

> On Sun, Aug 25, 2024 at 09:31:40PM +0100, Andrew Ferguson wrote:
> > I have encountered a bug in that some Macs are not detected in Linux,
> when
> > the Mac is being used in "Target Disk Mode".
> [...]
> > Mac models that do not work:
> > iBook G4
> > Powerbook G4
>
> Hi Andrew,
>
> I did a quick test with kernel 6.8-rc1 and a titanium Powerbook G4
> (powerbook3,4 A1001). I held down T and turned on the Powerbook. After
> about 25 seconds, the FireWire logo appeared on the screen, and the
> drive appeared on Linux as sdb. I was able to read from the drive with
> dd.
>
> Can you provide steps to reproduce the problem?
>
> -- Adam
>

--00000000000095c1880621252446
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Takashi, Adam.<div><br></div><div>Thanks both for th=
e replies (and apologies for the tardiness of my response).</div><div><br><=
/div><div>Takashi, I completely understand that this is of less interest to=
 you - it is an extremely niche case. Your work on the ALSA drivers is amaz=
ing. Just a few weeks ago I was helping a friend setup a Digidesign 002R on=
 Linux (thanks to the ALSA drivers). They will be using it to record their =
Wurlitzer theatre organ for conversion to a &quot;sample pack&quot; to allo=
w them to play it digitally on their computer. I also have used a=C2=A0Mack=
ie Onyx 400F with my 8-track analogue tape recorder, although I managed to =
break it (the Mackie) by accidentally looping phantom power into it. There&=
#39;s a=C2=A0Focusrite Liquid Saffire 56 on ebay I may get as a replacement=
 - I need 192kHz input.<br></div><div><br></div><div>I don&#39;t have any e=
xperience of kernel development, but I know C through various work on 5G ne=
twork stacks. So there is (some!) hope that I will be able to fumble my way=
 to a solution. Thank you for your advice about the tracepoint events - I w=
ill investigate this. (I&#39;m about to go on a trip abroad for work reason=
s, so no / few updates doesn&#39;t mean that I&#39;m not interested in solv=
ing this!).</div><div><br></div><div>Adam, would you be willing to send me =
the serial number of the PowerBook G4 you used? That lets me see all of the=
 specs and whether or not it is similar to mine. Separately (and very much =
a n00b question!), what&#39;s the best / easiest way to get kernel version =
6.8-rc1? is there a specific distro that ships with development / rc builds=
 of the kernel, or is it better to install something like Debian Stable and=
 then compile / install a development build? Ideally I&#39;d replicate your=
 setup to confirm it isn&#39;t an issue on my end.=C2=A0</div><div><br></di=
v><div>Thanks!</div><div>Andrew</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Sat, 31 Aug 2024 at 10:59, Adam Gol=
dman &lt;<a href=3D"mailto:adamg@pobox.com">adamg@pobox.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Sun, Aug 25, =
2024 at 09:31:40PM +0100, Andrew Ferguson wrote:<br>
&gt; I have encountered a bug in that some Macs are not detected in Linux, =
when<br>
&gt; the Mac is being used in &quot;Target Disk Mode&quot;.<br>
[...]<br>
&gt; Mac models that do not work:<br>
&gt; iBook G4<br>
&gt; Powerbook G4<br>
<br>
Hi Andrew,<br>
<br>
I did a quick test with kernel 6.8-rc1 and a titanium Powerbook G4 <br>
(powerbook3,4 A1001). I held down T and turned on the Powerbook. After <br>
about 25 seconds, the FireWire logo appeared on the screen, and the <br>
drive appeared on Linux as sdb. I was able to read from the drive with <br>
dd.<br>
<br>
Can you provide steps to reproduce the problem?<br>
<br>
-- Adam<br>
</blockquote></div>

--00000000000095c1880621252446--


--===============4873483031901692093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4873483031901692093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4873483031901692093==--

