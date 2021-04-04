Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AF9353722
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Apr 2021 09:03:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lSwmo-0001Rk-UC; Sun, 04 Apr 2021 07:03:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zheyuma97@gmail.com>) id 1lSwmn-0001Rd-US
 for linux1394-devel@lists.sourceforge.net; Sun, 04 Apr 2021 07:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ryUd1+XNV3tHDm3Xp0YZNMVChg0932uYrh7bfdsLgCg=; b=CCRLxBizbVx7k3jY+osgJtOPBE
 9+rKW8Bzh4nLHCjLuvRppyuPa1tJ6lPxlY3BwowiGJki8Mr3w04XMJp/Eesgj+mn2gEC1iczkhfN1
 /Cf55mBfQ9cGBcskVME8Ju/kBRfuoNoigGsVACWQwEbJ/rn7Ofp5Y12B9Sz0ClYhRs1I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ryUd1+XNV3tHDm3Xp0YZNMVChg0932uYrh7bfdsLgCg=; b=JWn2bPP7/WHw86xNBs042WYqb1
 vOeE6oMOGpQGkFOrkDQ3VbnyeeazsLe3br5LtT4Q/bwHnkutBqozsijZE8jrTGdxVWfTpdGQU5qqy
 eQyxEdtpxbjEeM4k6O1zo8KDe0xHYJam0upGxXQC+SD/hx+RdXInwhlchRxp3mALHBcY=;
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lSwmi-00F9SA-SZ
 for linux1394-devel@lists.sourceforge.net; Sun, 04 Apr 2021 07:03:05 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 w21-20020a9d63950000b02901ce7b8c45b4so8716091otk.5
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 04 Apr 2021 00:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ryUd1+XNV3tHDm3Xp0YZNMVChg0932uYrh7bfdsLgCg=;
 b=PSolcIgYXy6o4g3xk8v3zzgjfepWn42m4KAWtJgbDjxVcd2eGO1prLLj05or0yaXRe
 HWdvr5C0xmXSFX+S7a4pesoBNRoyGpfsvBkWTwlpLvXb7+EdmjhIl2B91mmy8A8NgYRe
 REbdGjlZCUyQ5VBxNzIHm1UzhfJRrMYk6bURhruNf67as3Dbt5XnlLKdYCoXoc9vQ1Wr
 K1u/HZZk7tHlg21ABTT3WfWORALXjZss7X8WGg1MN2k1i6Y9JQ38UDixSwG2mugohwTl
 oZnDDVS3YKkJMBO93lMtxKF8/dWR1xgUX36OTRJPbmgekm8E+FBgwm4iFp7ufM6d/M26
 CsEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ryUd1+XNV3tHDm3Xp0YZNMVChg0932uYrh7bfdsLgCg=;
 b=PuJSkumUnqf8YlAa8oJ0xXSYaQxSpOPtVveIg8tu6PbwaPQxNI0dMlOzLy2yip4396
 jPlal2b/N//XEQAYHyR5BO4u2GikK46EKwDsOUaY/btk4tJPxWCckg/SKoja9t1Deex4
 Uk1Ym6mB38Bte2V8boZ9jVymQ/vWC31BLcRjDVHI2D/ynwlSeXlEGUaXRWlg/yrZixUY
 tEup6X1tCC/JCP6LNG719xP0B2ghWAmkOacj+B5FElpBoWwCgZ1YUtulRh3w7hR8BKFa
 P8Riqwz1suWszq0mfI/v0xz3U/XE4PtyUFI5lWsuuPIji8ssX9fEquu6GUhOgwHig537
 IMdw==
X-Gm-Message-State: AOAM532bKnvXnGI5d/fBEGnDG93AYYPwJAfiNEH4/YAdoX2ddoxEsHKg
 EHHUQKIpz/jCLaxwxvDuYrhj+bQLzxLiK1Dzvg==
X-Google-Smtp-Source: ABdhPJz+oz+2m0rerIMg0dB4KqiqKTyB6LFlslKJkdF71PAJCZYSEimY9ie297mtR0x7znLJmKCw8pCLAELcjy98HqE=
X-Received: by 2002:a9d:aa4:: with SMTP id 33mr4286859otq.295.1617519775378;
 Sun, 04 Apr 2021 00:02:55 -0700 (PDT)
MIME-Version: 1.0
References: <1617433116-5930-1-git-send-email-zheyuma97@gmail.com>
 <CAHk-=wh+sw_cYnL2XyuhknOpOh1jEPURg-W=jS2CyW2=ud+zog@mail.gmail.com>
In-Reply-To: <CAHk-=wh+sw_cYnL2XyuhknOpOh1jEPURg-W=jS2CyW2=ud+zog@mail.gmail.com>
From: =?UTF-8?B?6ams5ZOy5a6H?= <zheyuma97@gmail.com>
Date: Sun, 4 Apr 2021 15:02:43 +0800
Message-ID: <CAMhUBjnoJpP7HHzgs_sW_zEEWYXa_-Gm_8L8hvH2-NAoE0ZvpA@mail.gmail.com>
Subject: Re: [PATCH] firewire: nosy: Fix a use-after-free bug in nosy_ioctl()
To: Linus Torvalds <torvalds@linuxfoundation.org>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (zheyuma97[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (zheyuma97[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.51 listed in wl.mailspike.net]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lSwmi-00F9SA-SZ
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
Cc: Greg Kroah-Hartman <greg@kroah.com>,
 Security Officers <security@kernel.org>, linux1394-devel@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============5130422911632614875=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============5130422911632614875==
Content-Type: multipart/alternative; boundary="000000000000a0f03a05bf202bdb"

--000000000000a0f03a05bf202bdb
Content-Type: text/plain; charset="UTF-8"

>
>     --- a/drivers/firewire/nosy.c
>     +++ b/drivers/firewire/nosy.c
>     @@ -346,6 +346,7 @@ nosy_ioctl(struct file *file, unsigned int
> cmd, unsigned long arg)
>         struct client *client = file->private_data;
>         spinlock_t *client_list_lock = &client->lynx->client_list_lock;
>         struct nosy_stats stats;
>     +   int ret;
>
>         switch (cmd) {
>         case NOSY_IOC_GET_STATS:
>     @@ -360,11 +361,15 @@ nosy_ioctl(struct file *file,
>                         return 0;
>
>         case NOSY_IOC_START:
>     +           ret = -EBUSY;
>                 spin_lock_irq(client_list_lock);
>     -           list_add_tail(&client->link, &client->lynx->client_list);
>     +           if (list_empty(&client->link)) {
>     +                   list_add_tail(&client->link,
> &client->lynx->client_list);
>     +                   ret = 0;
>     +           }
>                 spin_unlock_irq(client_list_lock);
>
>     -           return 0;
>     +           return ret;
>
>         case NOSY_IOC_STOP:
>                 spin_lock_irq(client_list_lock);
>

Yes, It works for me.  I have tested this patch in my environment, and the
bug will not be triggered by applying this patch.
You're right, traversing the list is unnecessary and unsafe.
I have learned a lot and I will be more careful next time I submit a patch
to the kernel.

Thanks,

Zheyu Ma

--000000000000a0f03a05bf202bdb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">=C2=A0 =C2=A0 --- a/drivers/firewire/nosy.c<br>=C2=A0 =C2=A0 +++=
 b/drivers/firewire/nosy.c<br>=C2=A0 =C2=A0 @@ -346,6 +346,7 @@ nosy_ioctl(=
struct file *file, unsigned int<br>cmd, unsigned long arg)<span style=3D"co=
lor:rgb(80,0,80)"><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct client *client =3D=
 file-&gt;private_data;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 spinlock_t *client_l=
ist_lock =3D &amp;client-&gt;lynx-&gt;client_list_lock;<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 struct nosy_stats stats;<br></span>=C2=A0 =C2=A0 +=C2=A0 =C2=
=A0int ret;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (cmd) {<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 case NOSY_IOC_GET_STATS:<br>=C2=A0 =C2=A0 @@ -360,11 +361=
,15 @@ nosy_ioctl(struct file *file,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 case NOSY_IOC_START:<br>=C2=A0 =C2=A0 +=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D -EBUSY;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 spin_lock_irq(client_list_lock);<br>=C2=A0 =C2=
=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_add_tail(&amp;client-&gt=
;link, &amp;client-&gt;lynx-&gt;client_list);<br>=C2=A0 =C2=A0 +=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (list_empty(&amp;client-&gt;link)) {<br>=
=C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0list_add_tail(&amp;client-&gt;link,<br>&amp;client-&gt;lynx-&gt;c=
lient_list);<br>=C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D 0;<br>=C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0}<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 spin_unlock_irq(client_list_lock);<br><br>=C2=A0 =C2=A0 -=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>=C2=A0 =C2=A0 +=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
case NOSY_IOC_STOP:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 spin_lock_irq(client_list_lock);<br></blockquote><div><br></div><div>Ye=
s, It works for me.=C2=A0 I have tested this patch in my environment, and t=
he bug will not be triggered by applying this patch.</div><div>You&#39;re r=
ight, traversing the list is unnecessary and unsafe.</div><div>I have learn=
ed a lot and I will be more careful next time I submit a patch to the kerne=
l.</div><div><br></div><div>Thanks,</div><div><br></div><div>Zheyu Ma</div>=
</div></div>

--000000000000a0f03a05bf202bdb--


--===============5130422911632614875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5130422911632614875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============5130422911632614875==--

