Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B0D22F3ED
	for <lists+linux1394-devel@lfdr.de>; Mon, 27 Jul 2020 17:35:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1k05AG-00065x-VU; Mon, 27 Jul 2020 15:35:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@arndb.de>) id 1k05AF-00065o-0p
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Jul 2020 15:35:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qcs8XIkNFMtT2XcMsM/8ZyTLFUrDwvfc6JvtVWXLegQ=; b=dQDDDLarf93sejHkdr2NCvkrcA
 79p7Z8E1SFwWr8s535wovXQ2f/fYUh4jNIl6JlNjNk0d2DJkYTMyNP7vPjD3wGoS5Tei6dDoilPrm
 f5qpj2TLRaCKYK2namzs25aMYlE9RBGwdcBPCTy1MzinvASmvnUZbLI6LkbC9eNxVGEA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qcs8XIkNFMtT2XcMsM/8ZyTLFUrDwvfc6JvtVWXLegQ=; b=nDKoM1mrTsC6BLcTXmydVSYZIf
 kUwA8wwjYBk5xAjTLQpxlT2Rvx/6c3FND0lDKqhEThGgYLRwNBB2bLXQ9ubfqGwC07bKugUcnyQ12
 U3pdXDsRLKTPmIbZP6eVjCcl3kb4zMB/e9JZ8bmpgwmeOkPsiG+wO8HAFrFxoIcgM38g=;
Received: from mout.kundenserver.de ([212.227.126.135])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k05AB-001DnY-Er
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Jul 2020 15:35:42 +0000
Received: from mail-qk1-f171.google.com ([209.85.222.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MEmMt-1k1y3O2C0R-00GEhO for <linux1394-devel@lists.sourceforge.net>; Mon,
 27 Jul 2020 17:35:29 +0200
Received: by mail-qk1-f171.google.com with SMTP id l6so15611606qkc.6
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 27 Jul 2020 08:35:29 -0700 (PDT)
X-Gm-Message-State: AOAM530YbprcE8yPHd1VAkiwkwP34HT4rQKuRo6G282qiCTnIP0z8C2t
 HSlnA/oTHwqQrCmfEaMpfq+CIJ/JFsmC8AD9IfA=
X-Google-Smtp-Source: ABdhPJyVQdveqzi3+Zb7UJcBadCVqyMgS/2llv9C5krFaKnCxaCdt2m5GnZ6CZHjLDH5JnzHZKBsLh1LbsXT3UyAjOs=
X-Received: by 2002:a37:b484:: with SMTP id
 d126mr23352046qkf.394.1595864128427; 
 Mon, 27 Jul 2020 08:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200727151537.315023-1-yepeilin.cs@gmail.com>
In-Reply-To: <20200727151537.315023-1-yepeilin.cs@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 27 Jul 2020 17:35:12 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3zz-xfz2jwUpEU5R7GyCK735PFQK7OjFmmTESgnSzq=Q@mail.gmail.com>
Message-ID: <CAK8P3a3zz-xfz2jwUpEU5R7GyCK735PFQK7OjFmmTESgnSzq=Q@mail.gmail.com>
Subject: Re: [Linux-kernel-mentees] [PATCH] firewire: Prevent kernel-infoleak
 in ioctl_get_info()
To: Peilin Ye <yepeilin.cs@gmail.com>
X-Provags-ID: V03:K1:D5bRX+CBhm0vy9TizETcx0cvx669gsuEsKTCRFZ2StQMZD/ZDKf
 /XvwATECloefZFEIL7qBVv5bWA+UKtDbxbAj7l1P/LZnDk0k1tDRCinfpHg0M5bkHHnI8X8
 MZ4RNdYzWltOzGMrRo/ONteWJ6lxNI9mUPcflTMi8/WsNn2PCzMnY7kHfnI3QQpqj6w26XH
 W+bVme9KRONL5MaRt+CKQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:e0jXQvjw2q4=:dPnHYx15+0M48loOP5tcIp
 vgfF4S/U6kfULnmHycVftqWaCpki8q7kSZz3Ivhr9akmVhCxIKqKEdV5GTVXYbdfBSDR4uAx/
 iKQ4MTYtiUdFllaOz0D5KrLBKLJs0EkUsFydCsfr0bxnC3Wy2PL+BAweqv4YkyA8NewciAwLV
 NDs5xt5xI4kRWHymFZdfN7HDsc0shY93Xfn792rWh+N+rdYTPk14rGF1y12f1ty00M3GfzVZ3
 9u/6mVIR83QNO1qFOTWZiQVIhMiGPIvRzhUv8Y/lZApGmrI3gZeH2hl1CA+Z3nCGSTA+GOW76
 XzSKvHXbO6Yi26FCkx7gW5hpv6wk50P1pxXZHaQFOTAwWAeEsVbEYorhQyq6HPOxOrkar12LM
 a8tsNLOZ4t41zMwPqGuhyH38nv/5zPQBm/Crtr31gk5iXmQY8TQPIzfPZTNGiHsI4zNn7npys
 fw4n/BsPt4FTDjYPXokxWTNolBbnytaag9Kx6DXTEII8DQnEXVRaFl+j9Y6m1Imzo82nWF6W5
 R3FxWrCP8UM2MQaYFIcYABelL9UgrmmUu7PsVpdpp1pbUgkkANuqVd9wTaUyS0c2xx/KER10T
 G3VkngN/Gp891N007+KoieVx6EuHGZsnPMiW2ZAukZRaVJOECOI82FndQFjwSwxJeY2qnjJAi
 V2Bhc51NeZrw+OXHS3vKDvnoL5s/hJw1kH83tFuaQ/fhAu9O4Zrl0Bi9rUTBtWlcYrOfBa5Fw
 1H5xbRKm6ufvMWiXyVXf2SQzSg2GW5onM6UCq7WJad/qgOrPsjUcMatanr/XcqwuFAqCkzYEJ
 ni9cQrihOFNL7Yt+hT7nAGEChiKFXDTlrWd8EwRQiwSFHyvhW1x3WYCcNkfDBwhbU6Y0/4d8W
 K+/ETx1inEUpOZqRhBZnz7oZ4KSJGo1m869JlgZZ6u5sS/7qPUnav4XWwZ7hGZsy8YshIV8Ep
 XiTKIEs0kTVTY1s7QpObhgv5Di27YW39CPDmVVJu/sVOpxhJ7TNpN
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k05AB-001DnY-Er
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux1394-devel@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, Jul 27, 2020 at 5:18 PM Peilin Ye <yepeilin.cs@gmail.com> wrote:
>
> ioctl_get_info() is copying uninitialized stack memory to userspace due to
> the compiler not initializing holes in statically allocated structures.
> Fix it by initializing `event` using memset() in fill_bus_reset_event().
>
> Cc: stable@vger.kernel.org
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>

Acked-by: Arnd Bergmann <arnd@arndb.de>

I would recommend always looking through the git history of the
file to come up with an appropriate 'Fixes' tag. In this case

$ git log -p --follow drivers/firewire/core-cdev.c

searching for any mention of fill_bus_reset_event leads you to
commit 344bbc4de14e.

In my ~/.gitconfig I have this alias:

[core]
        abbrev = 12
[alias]
        fixes = show --format='Fixes: %h (\"%s\")' -s

With something like that, calling 'git fixes 344bbc4de14e' produces
the line to copy:

Fixes: 344bbc4de14e ("firewire: Generalize get_config_rom to get_info.")

     Arnd

> ---
>  drivers/firewire/core-cdev.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
> index fb6c651214f3..2341d762df5b 100644
> --- a/drivers/firewire/core-cdev.c
> +++ b/drivers/firewire/core-cdev.c
> @@ -340,6 +340,8 @@ static void fill_bus_reset_event(struct fw_cdev_event_bus_reset *event,
>  {
>         struct fw_card *card = client->device->card;
>
> +       memset(event, 0, sizeof(*event));
> +
>         spin_lock_irq(&card->lock);
>
>         event->closure       = client->bus_reset_closure;
> --
> 2.25.1
>


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
