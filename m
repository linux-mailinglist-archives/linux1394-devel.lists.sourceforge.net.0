Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A64222F3FE
	for <lists+linux1394-devel@lfdr.de>; Mon, 27 Jul 2020 17:40:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1k05F8-0004YY-4d; Mon, 27 Jul 2020 15:40:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <yepeilin.cs@gmail.com>) id 1k05F6-0004YE-14
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Jul 2020 15:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3MHzayRxL6bOiigyiJOXy0PhmCnVIol0KG4wc5+RCf8=; b=Q15sRiIj/0/jMpKh89yiroj7DE
 GI5+/Q+f3Pb9TE+PfEwyW/yyqu1eCbVwPUv4zf0UGdiA9SkeFucK9/Ocvy23/B7vFcR/4NuqMw04s
 s7pvkCkweVw2KxEt4aMJy+Zvx5aazRXrzQ6BU/nmK9HbVkFF4sWqPNBzsK2r756Xl7hI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3MHzayRxL6bOiigyiJOXy0PhmCnVIol0KG4wc5+RCf8=; b=mxQsKdNujVIdEOqC5saAup4zoX
 bN7wKrUWpzSTroh7xLgP4gh6P1io4rPEO1HFCY656Irum5YVyZJTzvmGBwyAs4i7c9AFmuA0RIDKq
 W51DUXXATy0TvrYaLdNishYDJ5UBe9x1Mo7/MwE4uEPRTsI4EZs/LrkQWfGGpxSEGUPk=;
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k05F4-00AzaW-3o
 for linux1394-devel@lists.sourceforge.net; Mon, 27 Jul 2020 15:40:43 +0000
Received: by mail-qk1-f193.google.com with SMTP id b79so15603178qkg.9
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 27 Jul 2020 08:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3MHzayRxL6bOiigyiJOXy0PhmCnVIol0KG4wc5+RCf8=;
 b=VV0QxcDhBbkfas2oiGVS1tvt5ESJqhpl67y4uGCMb2n8mBj4P/nU8cHUjPv/l76bU4
 gjETm59e+fdYBwoodcOoh5UBxu7PGmou3asy7AL7Er8fbs2atIxO53YJaHKqiHTjuDds
 uaaNWCmDvrjyoUO8wlSmU05OiMrdHR9gTE1KZHICoXD4hWPwF9ZOf0SEFlP8KbD3vDAO
 Kwvs3ocpCiWZTfN0OihoxC4jjfSlefzs0ztS9PBUMkSl/xIR2wpSHO70miNuSAGrRdPo
 J0lI1V2F7Z3w0wUZ+go35o8LtiBgZRBNNuTmpDojB8TO83eJEFKBkk7Xdc0hm62xdgoz
 /CVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3MHzayRxL6bOiigyiJOXy0PhmCnVIol0KG4wc5+RCf8=;
 b=Y0BzG0qM8cGyKfjy6EXl5NjHOA8/MUvhuW6FzckROIlw63n7qM0iy3JfhLW6A9Vw3t
 iXF+SOmPOBLd8LvxLeMH9QLn9wGnZZrWxlC5Mago9n6PQ6rgyKFG1bg9mAXk59l7XhgC
 PCpN6oMRxeIYg9A/9ZDxOpRvb9K7olv7CfNi10KJlbO/sCnkYFonTYHVnhuFK6A1OSes
 godrfhD9aaYWtkfMbRvZSP0KB2+brQmJ0S9HSRGGcDvyUplieGHfoBLeZ5eQsZ/VHzVp
 /xT8XVpGyzcCOsL18J8Y20NQyk6mZ0HCtfwCt5j0DA8VDSDNPa4AsVUlFnasfxoKLIl/
 M/nQ==
X-Gm-Message-State: AOAM531G0EXgfcseTi9f6lLdLvnCLbPJa8rhCXxrZXp4wH0D+qmiKm8E
 XPcYlBcs+CKqvpGhab+pTQ==
X-Google-Smtp-Source: ABdhPJz4p/ncsvcYlE0kBz7qziAGuqugFJvTZuwprUxKjrQU5gfYhHAMcIXMO2IekfmUlJxyg0HaEA==
X-Received: by 2002:a37:a655:: with SMTP id p82mr23048681qke.92.1595864436373; 
 Mon, 27 Jul 2020 08:40:36 -0700 (PDT)
Received: from PWN ([209.94.141.207])
 by smtp.gmail.com with ESMTPSA id 128sm17457791qkk.101.2020.07.27.08.40.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 08:40:35 -0700 (PDT)
Date: Mon, 27 Jul 2020 11:40:33 -0400
From: Peilin Ye <yepeilin.cs@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [Linux-kernel-mentees] [PATCH] firewire: Prevent kernel-infoleak
 in ioctl_get_info()
Message-ID: <20200727154033.GA315469@PWN>
References: <20200727151537.315023-1-yepeilin.cs@gmail.com>
 <CAK8P3a3zz-xfz2jwUpEU5R7GyCK735PFQK7OjFmmTESgnSzq=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3zz-xfz2jwUpEU5R7GyCK735PFQK7OjFmmTESgnSzq=Q@mail.gmail.com>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (yepeilin.cs[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k05F4-00AzaW-3o
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

On Mon, Jul 27, 2020 at 05:35:12PM +0200, Arnd Bergmann wrote:
> On Mon, Jul 27, 2020 at 5:18 PM Peilin Ye <yepeilin.cs@gmail.com> wrote:
> >
> > ioctl_get_info() is copying uninitialized stack memory to userspace due to
> > the compiler not initializing holes in statically allocated structures.
> > Fix it by initializing `event` using memset() in fill_bus_reset_event().
> >
> > Cc: stable@vger.kernel.org
> > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Suggested-by: Arnd Bergmann <arnd@arndb.de>
> > Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>
> 
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> 
> I would recommend always looking through the git history of the
> file to come up with an appropriate 'Fixes' tag. In this case
> 
> $ git log -p --follow drivers/firewire/core-cdev.c
> 
> searching for any mention of fill_bus_reset_event leads you to
> commit 344bbc4de14e.
> 
> In my ~/.gitconfig I have this alias:
> 
> [core]
>         abbrev = 12
> [alias]
>         fixes = show --format='Fixes: %h (\"%s\")' -s
> 
> With something like that, calling 'git fixes 344bbc4de14e' produces
> the line to copy:
> 
> Fixes: 344bbc4de14e ("firewire: Generalize get_config_rom to get_info.")

Thank you for the advice! Actually I did all of that (manually...) but
wasn't sure whether I should add it on. I will send a v2 soon, and do so
for future patches.

Thank you,
Peilin Ye


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
