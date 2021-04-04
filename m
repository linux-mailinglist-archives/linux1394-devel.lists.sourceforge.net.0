Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 519F5353724
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Apr 2021 09:05:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lSwpH-0004w3-4u; Sun, 04 Apr 2021 07:05:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <zheyuma97@gmail.com>) id 1lSwpE-0004vo-A5
 for linux1394-devel@lists.sourceforge.net; Sun, 04 Apr 2021 07:05:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=20M+BQCc7IsMAkjuDKN1kB/7AsCAFSic/ihA1ZW3Jfw=; b=F2flnN7/ixmwJDgTa1h0V9yLoF
 m7WkbQTWNwqxlYNPlkHIgkIV9aB52ymWmR2PAeFWo5Dg2jcsHQrK3KOaQ/RtG/8ET6JBRXz+4Xt95
 ySOJ6sHImL2tobAIYsmm3d4iyfc5tUgmNr6LdQCH4ZmBl76WEpKNvExVzNrwEPkTej68=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=20M+BQCc7IsMAkjuDKN1kB/7AsCAFSic/ihA1ZW3Jfw=; b=WzLkALX6TGkSWWpe624c9E6f4f
 Q9oASYxgvqJZWBENVmXq6mfEYtrpvPsIjiBAmP9TOL3CxW7ZF+EndqHa0V3HAHq6N5XF/H1XIrCzV
 zXrS1tn1fHhhsia7kBkUrL/3ICWgtknBhrBMhg/pWKCqNK3JbIwwdlg+liCOzEUo01jI=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lSwpB-00080p-LF
 for linux1394-devel@lists.sourceforge.net; Sun, 04 Apr 2021 07:05:36 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 l12-20020a9d6a8c0000b0290238e0f9f0d8so8700733otq.8
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 04 Apr 2021 00:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=20M+BQCc7IsMAkjuDKN1kB/7AsCAFSic/ihA1ZW3Jfw=;
 b=o3rp8ZdlLBWp+0dyrZnQDwppS0qR2R3jUcu9dwwep2zsqWKlTU+1h9Wt/AAd1bTenI
 s8Va8QDLAK/VjfV/A8EiDuKkAdRtt+9qBt2wXArURHotf+3TXibKZ4KDlIhL+kORTHPc
 BfslRkr5s/DZYatQRZGspZlYFeKfHb+xBuZThwguv6S1HQr4X/nMXMUZNTYnbjxvF7w+
 U//kLgnj6ohvnvV+Zny/+cIrkffFzqueUdbFVF63XQw7y2REfC/aXWjwkgKXhbU1CM5F
 bDNvPnL3bR4pyk6T/fSu1QGk58g3y4MnsYXmO5bsQXPxpYilabM+r7UNfUPU/mCjiEez
 RdGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=20M+BQCc7IsMAkjuDKN1kB/7AsCAFSic/ihA1ZW3Jfw=;
 b=NcCj6J/c86inqaCQ9CB2z0y9QKJJb8PQGQVgCvJAYTbOkW6RAanEOvu539TdbaT7r0
 qz2OK90rP05pbR17Km2xRBHhl4NSXBtnMhv7ZPm5AyRiJEX4i5BVK9Nb7wL5Wcst0zMO
 DgO6aKUzyRn//OPKfWKIsJjSyEQq4w6wYmt5kyHzV20s2luB8J3Gf1pmjIVSPDjSG43Q
 yWO7mKI6lN0LWXi6AaXfc6UgWpTFwpAa5zgxA4hlTMhgobrjZuIoNbi2aBatYJnzyO67
 +TL960FfHsxggbdRieJb8/fUsVHxFJcBcGT/OEPN+vYe42vLUl/fcTHvJgLJ22TrX17D
 uxng==
X-Gm-Message-State: AOAM533AmDGUlcG87mSECzNJXEe5KuBkX3WMf7bm9X5Qu2U6cPVjxTmA
 DdGeQvUA0ruTTv78erzDPyIAGGZ/LKppZb516Q==
X-Google-Smtp-Source: ABdhPJykBQF3Fjcz741JuodCKJ9axzsu+RfDZur1FeHpus8OraiiTZVJPWlrql8GcrD938CLawYBrZOkhPxqceXTTB8=
X-Received: by 2002:a05:6830:1404:: with SMTP id
 v4mr17287903otp.2.1617519928131; 
 Sun, 04 Apr 2021 00:05:28 -0700 (PDT)
MIME-Version: 1.0
References: <1617433116-5930-1-git-send-email-zheyuma97@gmail.com>
 <CAHk-=wh+sw_cYnL2XyuhknOpOh1jEPURg-W=jS2CyW2=ud+zog@mail.gmail.com>
In-Reply-To: <CAHk-=wh+sw_cYnL2XyuhknOpOh1jEPURg-W=jS2CyW2=ud+zog@mail.gmail.com>
From: =?UTF-8?B?6ams5ZOy5a6H?= <zheyuma97@gmail.com>
Date: Sun, 4 Apr 2021 15:05:16 +0800
Message-ID: <CAMhUBjmMTX7=0U8T7_Yijci9KEsKEBQ-yQyzMWpLz0xhS+-bFA@mail.gmail.com>
Subject: Re: [PATCH] firewire: nosy: Fix a use-after-free bug in nosy_ioctl()
To: Linus Torvalds <torvalds@linuxfoundation.org>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (zheyuma97[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (zheyuma97[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lSwpB-00080p-LF
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
Content-Type: multipart/mixed; boundary="===============3028302595073834849=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============3028302595073834849==
Content-Type: multipart/alternative; boundary="000000000000bbc4bd05bf2034af"

--000000000000bbc4bd05bf2034af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, It works for me.  I have tested this patch in my environment, and the
bug will not be triggered by applying this patch.
You're right, traversing the list is unnecessary and unsafe.
I have learned a lot and I will be more careful next time I submit a patch
to the kernel.

Thanks,

Zheyu Ma

Linus Torvalds <torvalds@linuxfoundation.org> =E4=BA=8E2021=E5=B9=B44=E6=9C=
=884=E6=97=A5=E5=91=A8=E6=97=A5 =E4=B8=8A=E5=8D=8812:05=E5=86=99=E9=81=93=
=EF=BC=9A

> On Fri, Apr 2, 2021 at 11:59 PM Zheyu Ma <zheyuma97@gmail.com> wrote:
> >
> >         case NOSY_IOC_START:
> > +               list_for_each_entry(tmp, &client->lynx->client_list,
> link)
> > +                       if (tmp =3D=3D client)
> > +                               return -EINVAL;
>
> I don't think this is safe.
>
> You are doing this list traversal outside the lock that protects it,
> which it taken a line later:
>
> >                 spin_lock_irq(client_list_lock);
> >                 list_add_tail(&client->link, &client->lynx->client_list=
);
> >                 spin_unlock_irq(client_list_lock);
>
> so the locking is wrong.
>
> However, I think that the proper fix is not just to move the code
> inside the locked region (which makes the error handling a bit more
> complex than just a return, of course), but to actually instead of
> traversing the list, just look if the "client->link" list is empty.
>
> That's what some other parts of that driver already do (ie
> nosy_poll()), so I think that ->link field is already always
> initialized properly (and it looks like all the list removal is using
> "list_del_init()" to initialize it after removing it from a list.
>
> So I think the patch should be something along the lines of
>
>     --- a/drivers/firewire/nosy.c
>     +++ b/drivers/firewire/nosy.c
>     @@ -346,6 +346,7 @@ nosy_ioctl(struct file *file, unsigned int
> cmd, unsigned long arg)
>         struct client *client =3D file->private_data;
>         spinlock_t *client_list_lock =3D &client->lynx->client_list_lock;
>         struct nosy_stats stats;
>     +   int ret;
>
>         switch (cmd) {
>         case NOSY_IOC_GET_STATS:
>     @@ -360,11 +361,15 @@ nosy_ioctl(struct file *file,
>                         return 0;
>
>         case NOSY_IOC_START:
>     +           ret =3D -EBUSY;
>                 spin_lock_irq(client_list_lock);
>     -           list_add_tail(&client->link, &client->lynx->client_list);
>     +           if (list_empty(&client->link)) {
>     +                   list_add_tail(&client->link,
> &client->lynx->client_list);
>     +                   ret =3D 0;
>     +           }
>                 spin_unlock_irq(client_list_lock);
>
>     -           return 0;
>     +           return ret;
>
>         case NOSY_IOC_STOP:
>                 spin_lock_irq(client_list_lock);
>
> instead. The above is obviously white-space damaged (on purpose - I
> don't want to take credit for this patch, I didn't find the problem,
> and I have not tested the above in any shape or form).
>
> Zheyu Ma, does something like that work for you?
>
> Comments? Anybody else?
>
>         Linus
>

--000000000000bbc4bd05bf2034af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-gs" style=3D"margin:0px;padding:0px 0p=
x 20px;width:1503px;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-ser=
if;font-size:medium"><div class=3D"gmail-"><div id=3D"gmail-:3h" class=3D"g=
mail-ii gmail-gt gmail-adP" style=3D"font-size:0.875rem;direction:ltr;margi=
n:8px 0px 0px;padding:0px"><div id=3D"gmail-:2s" class=3D"gmail-a3s gmail-a=
iL" style=3D"overflow:hidden;font-variant-numeric:normal;font-variant-east-=
asian:normal;font-stretch:normal;font-size:small;line-height:1.5;font-famil=
y:Arial,Helvetica,sans-serif"><div dir=3D"ltr"><div dir=3D"ltr"><div>Yes, I=
t works for me.=C2=A0 I have tested this patch in my environment, and the b=
ug will not be triggered by applying this patch.</div><div>You&#39;re right=
, traversing the list is unnecessary and unsafe.</div><div>I have learned a=
 lot and I will be more careful next time I submit a patch to the kernel.</=
div><div><br></div><div>Thanks,</div><div><br></div><div>Zheyu Ma</div></di=
v></div></div></div></div></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">Linus Torvalds &lt;<a href=3D"mailto:torval=
ds@linuxfoundation.org">torvalds@linuxfoundation.org</a>&gt; =E4=BA=8E2021=
=E5=B9=B44=E6=9C=884=E6=97=A5=E5=91=A8=E6=97=A5 =E4=B8=8A=E5=8D=8812:05=E5=
=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Fri, Apr 2, 2021 at 11:59 PM Zheyu Ma &lt;<a href=3D"mailto:z=
heyuma97@gmail.com" target=3D"_blank">zheyuma97@gmail.com</a>&gt; wrote:<br=
>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case NOSY_IOC_START:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_=
entry(tmp, &amp;client-&gt;lynx-&gt;client_list, link)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0if (tmp =3D=3D client)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<br>
<br>
I don&#39;t think this is safe.<br>
<br>
You are doing this list traversal outside the lock that protects it,<br>
which it taken a line later:<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock=
_irq(client_list_lock);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_add_=
tail(&amp;client-&gt;link, &amp;client-&gt;lynx-&gt;client_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlo=
ck_irq(client_list_lock);<br>
<br>
so the locking is wrong.<br>
<br>
However, I think that the proper fix is not just to move the code<br>
inside the locked region (which makes the error handling a bit more<br>
complex than just a return, of course), but to actually instead of<br>
traversing the list, just look if the &quot;client-&gt;link&quot; list is e=
mpty.<br>
<br>
That&#39;s what some other parts of that driver already do (ie<br>
nosy_poll()), so I think that -&gt;link field is already always<br>
initialized properly (and it looks like all the list removal is using<br>
&quot;list_del_init()&quot; to initialize it after removing it from a list.=
<br>
<br>
So I think the patch should be something along the lines of<br>
<br>
=C2=A0 =C2=A0 --- a/drivers/firewire/nosy.c<br>
=C2=A0 =C2=A0 +++ b/drivers/firewire/nosy.c<br>
=C2=A0 =C2=A0 @@ -346,6 +346,7 @@ nosy_ioctl(struct file *file, unsigned in=
t<br>
cmd, unsigned long arg)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct client *client =3D file-&gt;private_data=
;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 spinlock_t *client_list_lock =3D &amp;client-&g=
t;lynx-&gt;client_list_lock;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct nosy_stats stats;<br>
=C2=A0 =C2=A0 +=C2=A0 =C2=A0int ret;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 switch (cmd) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case NOSY_IOC_GET_STATS:<br>
=C2=A0 =C2=A0 @@ -360,11 +361,15 @@ nosy_ioctl(struct file *file,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return 0;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case NOSY_IOC_START:<br>
=C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D -EBUSY;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 spin_lock_irq(clien=
t_list_lock);<br>
=C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_add_tail(&amp;=
client-&gt;link, &amp;client-&gt;lynx-&gt;client_list);<br>
=C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (list_empty(&amp=
;client-&gt;link)) {<br>
=C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0list_add_tail(&amp;client-&gt;link,<br>
&amp;client-&gt;lynx-&gt;client_list);<br>
=C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0ret =3D 0;<br>
=C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 spin_unlock_irq(cli=
ent_list_lock);<br>
<br>
=C2=A0 =C2=A0 -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;<br>
=C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 case NOSY_IOC_STOP:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 spin_lock_irq(clien=
t_list_lock);<br>
<br>
instead. The above is obviously white-space damaged (on purpose - I<br>
don&#39;t want to take credit for this patch, I didn&#39;t find the problem=
,<br>
and I have not tested the above in any shape or form).<br>
<br>
Zheyu Ma, does something like that work for you?<br>
<br>
Comments? Anybody else?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Linus<br>
</blockquote></div>

--000000000000bbc4bd05bf2034af--


--===============3028302595073834849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3028302595073834849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============3028302595073834849==--

