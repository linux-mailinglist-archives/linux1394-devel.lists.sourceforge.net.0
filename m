Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA94A3534A3
	for <lists+linux1394-devel@lfdr.de>; Sat,  3 Apr 2021 18:06:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lSin4-00079w-6T; Sat, 03 Apr 2021 16:06:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1lSin2-00079k-Kn
 for linux1394-devel@lists.sourceforge.net; Sat, 03 Apr 2021 16:06:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gkdOqPqACzNXgbG1X/VVpsqAi1238gmmEATmwh5RCsU=; b=ZRxl55pS8VkyMYX0dfc64+uFOn
 itUeqng3UD/qqXiaBETecCNzEov531mrDk9QoPl+vOaO7WQW88J/7STur4tWY4Ur/f7Int2JbOg+c
 VIdZnCj2wanz2bmIGwki5RuJChsFag7rfQPEqz/YHspe01FQI2XjNv1qxsNWG5/MtpmU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gkdOqPqACzNXgbG1X/VVpsqAi1238gmmEATmwh5RCsU=; b=IX+i/O/mLb3aKGIznFyTs7H24P
 x0n0spTFRhHAAcdLg4Q2zaJOOIv2eEA9s/OvZDviBzkdzJyEFRD6YBodf6j1n9teoqcsRbNuP3KXq
 g9eYwS5yX6Vpmo+0IeLx8V7XAbrbHxxLxh9UELLY0jkYgFN5EWRIaV/Bx4INLvJd9jLs=;
Received: from mail-lf1-f52.google.com ([209.85.167.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lSimj-0007iW-7P
 for linux1394-devel@lists.sourceforge.net; Sat, 03 Apr 2021 16:06:23 +0000
Received: by mail-lf1-f52.google.com with SMTP id o10so11439499lfb.9
 for <linux1394-devel@lists.sourceforge.net>;
 Sat, 03 Apr 2021 09:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gkdOqPqACzNXgbG1X/VVpsqAi1238gmmEATmwh5RCsU=;
 b=aD7cJRRRnXDc0FES7rd9ZbmwQ2tVE9r5yiK7Eb1blcGjUjJtOGLrm1Vsl0Xs6m/FEk
 dAZ/KETWZduO8tggiu8/g9TKmujxKiiTHNsAPkMeaIEDbob8rk27/COqf1LLG/mmdL8g
 arx7nKdYBEo4+oNeap8wvP/vcjPBCs6JPQUrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gkdOqPqACzNXgbG1X/VVpsqAi1238gmmEATmwh5RCsU=;
 b=pMhR7Sr6N2tq7cPmlO7UNBZ1ORMx3izI/wbxA338RptPtToZKBkpEmdCZboYjSMrt0
 bkdhS680ciY9rH3L5VtDUNzOeooMzxN0xTHifZ4ozxrF7dYb7k8HKw6CG3VYY3JFOGQ+
 8B3VDItmLDH9xT8MvndSwsm5bCO7qmors41xU6sSWZX5M7ywlY7nrRSNnb/Hq01Z45F5
 t2KHD3KpVwE5kHa+C4K6Nr8I4XliyR0ihu7p2d+bxKTGBDxmqAy5wBiEu7q+M9nLeb1J
 mjXRYlaZ0l55JBpnWDwudO9t3A5zzUbKIUndBUevteHtB4YISose1drw+rOS8Kf6KX1O
 DJ4A==
X-Gm-Message-State: AOAM530EiKR3pqPrrvwhf3JlNtgX6HyMlL6fSXgQaEBRYyGpqyMsRI3G
 fCTXYWE7k4mQM0/zC6wqigTNU39zUC6+vVsM
X-Google-Smtp-Source: ABdhPJy//mNML2fHG04Jb9JzAqnvnlflAIPIvjVR3UAE65cvFY5GivyH18PT1DU2fbUKFUZEwKFK9A==
X-Received: by 2002:a05:6512:2192:: with SMTP id
 b18mr12045153lft.515.1617465957882; 
 Sat, 03 Apr 2021 09:05:57 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id f26sm1182919lfe.118.2021.04.03.09.05.56
 for <linux1394-devel@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 03 Apr 2021 09:05:57 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id u10so8449005lju.7
 for <linux1394-devel@lists.sourceforge.net>;
 Sat, 03 Apr 2021 09:05:56 -0700 (PDT)
X-Received: by 2002:a05:651c:1117:: with SMTP id
 d23mr11823301ljo.220.1617465956597; 
 Sat, 03 Apr 2021 09:05:56 -0700 (PDT)
MIME-Version: 1.0
References: <1617433116-5930-1-git-send-email-zheyuma97@gmail.com>
In-Reply-To: <1617433116-5930-1-git-send-email-zheyuma97@gmail.com>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Sat, 3 Apr 2021 09:05:40 -0700
X-Gmail-Original-Message-ID: <CAHk-=wh+sw_cYnL2XyuhknOpOh1jEPURg-W=jS2CyW2=ud+zog@mail.gmail.com>
Message-ID: <CAHk-=wh+sw_cYnL2XyuhknOpOh1jEPURg-W=jS2CyW2=ud+zog@mail.gmail.com>
Subject: Re: [PATCH] firewire: nosy: Fix a use-after-free bug in nosy_ioctl()
To: Zheyu Ma <zheyuma97@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lSimj-0007iW-7P
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Fri, Apr 2, 2021 at 11:59 PM Zheyu Ma <zheyuma97@gmail.com> wrote:
>
>         case NOSY_IOC_START:
> +               list_for_each_entry(tmp, &client->lynx->client_list, link)
> +                       if (tmp == client)
> +                               return -EINVAL;

I don't think this is safe.

You are doing this list traversal outside the lock that protects it,
which it taken a line later:

>                 spin_lock_irq(client_list_lock);
>                 list_add_tail(&client->link, &client->lynx->client_list);
>                 spin_unlock_irq(client_list_lock);

so the locking is wrong.

However, I think that the proper fix is not just to move the code
inside the locked region (which makes the error handling a bit more
complex than just a return, of course), but to actually instead of
traversing the list, just look if the "client->link" list is empty.

That's what some other parts of that driver already do (ie
nosy_poll()), so I think that ->link field is already always
initialized properly (and it looks like all the list removal is using
"list_del_init()" to initialize it after removing it from a list.

So I think the patch should be something along the lines of

    --- a/drivers/firewire/nosy.c
    +++ b/drivers/firewire/nosy.c
    @@ -346,6 +346,7 @@ nosy_ioctl(struct file *file, unsigned int
cmd, unsigned long arg)
        struct client *client = file->private_data;
        spinlock_t *client_list_lock = &client->lynx->client_list_lock;
        struct nosy_stats stats;
    +   int ret;

        switch (cmd) {
        case NOSY_IOC_GET_STATS:
    @@ -360,11 +361,15 @@ nosy_ioctl(struct file *file,
                        return 0;

        case NOSY_IOC_START:
    +           ret = -EBUSY;
                spin_lock_irq(client_list_lock);
    -           list_add_tail(&client->link, &client->lynx->client_list);
    +           if (list_empty(&client->link)) {
    +                   list_add_tail(&client->link,
&client->lynx->client_list);
    +                   ret = 0;
    +           }
                spin_unlock_irq(client_list_lock);

    -           return 0;
    +           return ret;

        case NOSY_IOC_STOP:
                spin_lock_irq(client_list_lock);

instead. The above is obviously white-space damaged (on purpose - I
don't want to take credit for this patch, I didn't find the problem,
and I have not tested the above in any shape or form).

Zheyu Ma, does something like that work for you?

Comments? Anybody else?

        Linus


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
