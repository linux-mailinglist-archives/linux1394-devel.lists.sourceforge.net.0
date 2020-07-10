Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C73F921B953
	for <lists+linux1394-devel@lfdr.de>; Fri, 10 Jul 2020 17:21:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jtupu-00089F-Rg; Fri, 10 Jul 2020 15:21:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <oscar.carter@gmx.com>) id 1jtups-000890-Ri
 for linux1394-devel@lists.sourceforge.net; Fri, 10 Jul 2020 15:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IwTd6axjUykRPNOqnxq1T8INyLFtH4Grahn4QNilSIY=; b=QV82K2Ze14z6Z4aYOAF4xrKfGq
 t04N/QVLNeMKBHqyS/Zdc13QWVP39Pm4XZBByi+qeKa1e8KT9d9+SHWjvAZhnZbaTiZy3D5b3IOQw
 SbDhXFS+ZeF78mn4tQFjZjxroT4vYqr3jmdrg91sfIGbFudHe4XlCbbwvGvGWAmVlLeU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IwTd6axjUykRPNOqnxq1T8INyLFtH4Grahn4QNilSIY=; b=XQZkrqoYAflGZeMsswkAWUUjVq
 ggsmn1xPrxY5FcoTFIXLKhuDwH2c7gh33jNWECUBBwrbCw9c83HOuoJurqcszY4qN0dt2czc+e4ta
 MFgn3AfN389+ZbVQFVn9/SsLLBtXz2uDz5uHwcndPwtw1d0TJsnBYu0+VhA7iXxRZ/B8=;
Received: from mout.gmx.net ([212.227.15.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtupq-0027pZ-6M
 for linux1394-devel@lists.sourceforge.net; Fri, 10 Jul 2020 15:21:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1594394445;
 bh=IwTd6axjUykRPNOqnxq1T8INyLFtH4Grahn4QNilSIY=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=IiyV/6kjkH3p89Vqdcea131zUdn9e34AvyYLqul29i8n3OewYzMUQPSaAYq+mKx0g
 qRT7h8fpEin/AOQKIM1D81dhUL1jo3orZvfF5ny395Xfn2hNnYZZqtdUsmAXakBUYM
 Ta9mDhOuebH3gbKq09HFuzthzrJxp5O/9dmSEC9A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([79.150.73.70]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MmlT2-1kdSCA3C6Q-00juVa; Fri, 10
 Jul 2020 17:20:44 +0200
Date: Fri, 10 Jul 2020 17:20:24 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH v3] firewire: Remove function callback casts
Message-ID: <20200710152024.GA3305@ubuntu>
References: <20200530090839.7895-1-oscar.carter@gmx.com>
 <20200708130628.GA21753@workstation>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200708130628.GA21753@workstation>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:NXOytpk85GGVi2EnBsjBjoJRKIjmWxRVO9BFlQb88DJo4bolwEQ
 vJlfsHetbkUzntLVvbSdJ7BPm7lucP7k88RrGtbyKFzirFQlLkGPcAgOq2jED7UYt3CZKgV
 QWJo8yzPSrWfqjp3wjSixQi6aHWnWKy0qgIauL2EZb4V8wME7v6/t2kvM4GEsVNsPL7RVxI
 mOOGIm1/q555Wckac+/xg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cprC2WU1qiE=:g5jM+UtJlALXvgDapZSWJW
 y2Vg03TXGW8JcjxyvkncCzBEjctPVHWdf7QJxWOmMGjPLwpy8hBTpzZuLk9d9cHzMb9mq6v/+
 yIOb1Hlz3Eof2ItGQju+EWGUv/R4WkD1xC54pa7hkQm+dTFM/bGYz7Z6gDVsDhlpNCgX5p3Pm
 rGVw2r9Ug/WxrnWW0cuyMf6UP1BFpkhX8Qn+X2QZhqECj3cUW9bcIVfKKqFS0YYMtTRt0iuq+
 SvncdleCVJMHmng7n668wfGIQDrA6LVA7+E+z5JSjsWpZ6iZDDKpxIgSh8C5UQS0my4Ycdtla
 /cwNW7iVtvSJ2fgny+CRAr0WaU7Je6KEmJ28nvWdOWzV97D4ryksdbUJouZohvQ0tHg4ROx1i
 cn2ZEPlfgJmSzDYCp1G2ZEeikjHfOoT3QMFNjYulQicUNiNIuZ4llXeDVOr8QK33P7pTKQTbS
 ppApIZu1Ev1PLIDrCr55gES7r/kv6k0Gd7rrDVhsfIYcg2yCNsVpUlZl+kSgN0WnWnxda2oVM
 9VqOK3ZR9I/jC1Ih7VOSEfIWJKm+3yn+39ZTI8hHk8Uu9YAsm2rz1nnO/p3P0sEG+ud/9vkUd
 ijYrb9wiuy1ogJ5BR7CH1Upud2xvLD121FuCMYhUTHAPZTivwyE+eGplJBBFuZCOOi9cAelO7
 LRuXGgHcW17FMVz5rj2W04G44WXsEWXfy72vPPl1sE1A3HlsGl7ktP3ySKhd+OOrx+O5BoXwc
 auoI95ZP6L6FWmeO0QMH4e88HuFxNYWCDKUV4f8c7W5LIhKLHBCGr4vdW0hC9sltiOU5iODMn
 sWpVPR/XZKMmqMXzOG5kMllrRUp4DoNgOz10GRWrfAgGB+u0tUxsoKzDKcN+3Sxm6Vjwk7Iu2
 d8vvZARPL0fuPn1pRPrvj2wJOLk9WPSTSp2KnWEDuFWjxRMPQNflAjXP2M1dBuq/yuoyNd/FT
 mtgRi9gsvSzYMAs4k9oJbOTQGEyLJq6nCQqEKGN+KKbwijMRKReoCE6x4JYUSEmSIQXDecopH
 aQbue1p/3V0tXxMI1UyXGkL+nuZAhlo6+XlP2PFdMHAcFpkSPql1l+bD1ZAOS7/7R5PcXz4AL
 C+1DeW2nZNf+l3tWAoepmD5b/Yr4mDQsIx2sW3ijyHg17nA+0zWyYQ/H78RgifNTO3DpGGVsE
 WmINZ0mM4XBMTQnbwYtWIS6Ub2bB5VPgzsk+w2rJNpLBzQF1z1kX03yX+SN1iLvxfu7h1O07s
 66DlNnCNC5yb2iySX1vISn9b/X8KRhEaFyoH36g==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (oscar.carter[at]gmx.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alsa-project.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.15.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jtupq-0027pZ-6M
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
Cc: Oscar Carter <oscar.carter@gmx.com>, Kees Cook <keescook@chromium.org>,
 kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Takashi,

On Wed, Jul 08, 2020 at 10:06:28PM +0900, Takashi Sakamoto wrote:
> Hi,
>
> I'm sorry to be late but I was stuck at my work for ALSA control
> service programs for audio and music units on IEEE 1394 bus[1].
>
> On Sat, May 30, 2020 at 11:08:39AM +0200, Oscar Carter wrote:
> > [...]
> > Hi,
> >
> > this is another proposal to achieved the goal of remove function callback
> > cast start by me with the first [1] and second [2] versions, and followed
> > by the work of Takashi Sakamoto with his first [3] and second [4] versions,
> > and the code of Stefan Richter [5].
> >
> > The purpose of this third version is to put together all the work done
> > until now following the comments of all reviewed patches.
> >
> > I've added the "Co-developed-by" and "Signed-off-by" tags to give credit to
> > Takashi Sakamoto and Stefan Richter if there are no objections.
>
> In my opinion, it's no need to add my and Stefan's sign-off tag to patch
> in which you firstly wrote even if it includes ideas from the others ;)

I would like to leave it as is because most of the work is based on your code
(Takashi and Stefan).

> > [...]
>
> Anyway this patch looks good to me. I test this patch with libhinoko and
> find no regression.
>
> Reviewed-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> Testeb-by: Takashi Sakamoto<o-takashi@sakamocchi.jp>
>
>
> [1] [RFT] ALSA control service programs for Digidesign Digi 002/003 family
> and Tascam FireWire series
> https://mailman.alsa-project.org/pipermail/alsa-devel/2020-July/170331.html
>
> Thanks
>
> Takashi Sakamoto

Regards,
Oscar Carter


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
