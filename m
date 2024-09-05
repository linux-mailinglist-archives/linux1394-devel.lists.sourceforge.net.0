Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 404D796D9E4
	for <lists+linux1394-devel@lfdr.de>; Thu,  5 Sep 2024 15:12:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1smCHg-0001YA-P7;
	Thu, 05 Sep 2024 13:12:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1smCHd-0001Xy-II
 for linux1394-devel@lists.sourceforge.net;
 Thu, 05 Sep 2024 13:12:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jXe/lMxlytLr4hbTh0anm3fEfuNDthLXaZlJKUhkmug=; b=mcKoIVqLNuOyzvF3m8O40G5Z+z
 TBzt8mqHeW+uHn6Wzj8mHvdwm/hyJwbnzJ5ba0j6PZe3AeVLjW8Ypc7tePiI4XSBZ7u9NAdpHSgZA
 4kEkbWAztknPj/KmhGXBHR3HoIuLl8lHcJMjY4f6sazU+3iTFViOdsZni37N6RAq+EqI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jXe/lMxlytLr4hbTh0anm3fEfuNDthLXaZlJKUhkmug=; b=E04arBqz75qwV86Nwnnc+5QWbA
 Xn6mSgYsYtjeKC55CtSnSNFHqEc/wPSaKhpw2phIe2dxj+Tx54VJIazLUklvY52U+72JiJl1TEl5F
 2VmWwhhIWtoEJQwLxWLykmQQl62vUR64L4QowoWL4jco9PR5lTPlfvwVEntqGSBqBpKc=;
Received: from fout3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1smCHc-0001ef-6Z for linux1394-devel@lists.sourceforge.net;
 Thu, 05 Sep 2024 13:12:20 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.phl.internal (Postfix) with ESMTP id A3C3D1380156
 for <linux1394-devel@lists.sourceforge.net>;
 Thu,  5 Sep 2024 09:12:09 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Thu, 05 Sep 2024 09:12:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1725541929; x=1725628329; bh=jXe/lMxlyt
 Lr4hbTh0anm3fEfuNDthLXaZlJKUhkmug=; b=hsYfDALItahhEcYr1pNeEoP8fi
 TBhG+ezpOC144THAcrtz99giL7ZcA0lz/+WjY9DM0Y7/fdcefZcMi6rrmFrcu8j+
 lmJTCGEhdhJBRZo6Q68Ceb1vIMvGwqcSvkGQ6R5htpoqoDBmQCiXCW47w7BocsZk
 7eIfcVricFsG42lwPtlMTMkuw/rMWhNKPLr0g0dc7uA+R2wyJ7tPTe2GG8CwetQc
 AX3Qo4hSsN7RjBY5wgz0oPgcKuk7Kq7/Gsqv+2JAuhp/qcqrJTVvJXxNsyJuSmCx
 Su7ual4Dq1oKmSPhFDTVBmE29JbNSGCWbqeZtWMe8+WE/6RbdlbsjsTu6EIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1725541929; x=1725628329; bh=jXe/lMxlytLr4hbTh0anm3fEfuND
 thLXaZlJKUhkmug=; b=HxrpsqB07mU4Jfxx21uszA4PEW1yhxqom0RnM9ezv4JR
 Swz5Z0Yqi5mo0/LSSVyuZu8JaEa235K5aUIossHtWWBjg0TWNO4z7L/V+xOq13BD
 rcuxLao+dlfU9ZtVEvFxxwwGwj25vv1Ti42k/2Csl18bxsHOFA/XhfOuVvaLrKkO
 JLIRRoDvplINY+n1rAnaBTUovzyRlF07/W2alakKpI/IYhY+AYg3R//sc3ArEevB
 Yuv+mYASap31V/+Hcc9akvWmxcGgZDaWnuIdSkU07qE4CpKnDTg0pbnFT8mOizG+
 sDDUEVsvOyUIsis2lnWB7HJlz05KqhfYu5SU7NosQw==
X-ME-Sender: <xms:Ka7ZZh3dJpZZHevHnlbLxqsubEzV6B6fQ0dtriUCduyYllpXGHQmjw>
 <xme:Ka7ZZoFP5h0Vx6FQgdZHf-KHMExSeM5xZZN0GyqjdU4xcB-5Hxm2jaI5m1txe-qih
 fSGFTArzxNVsH5G7k4>
X-ME-Received: <xmr:Ka7ZZh4YysYisu-G2wNLthjJU1XG1I5_CA0NcEwbqet-e0E__V_P6OMzGaGpWBVl2Ie4U-UOSXcHlWFMwbfAB28itzLQLH0Hng>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehledgieduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuf
 fkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepjeegieefueevueefieeggeejledvgfejgeffjefgvdekleehgfdtfeetjeel
 keejnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgt
 tghhihdrjhhppdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtph
 htthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhr
 ghgvrdhnvght
X-ME-Proxy: <xmx:Ka7ZZu2kQrqcoRTDsOtPQv-owzldwUuxyqa8X-lamQjQfPxaLsiZug>
 <xmx:Ka7ZZkHrTPtH06047Ag_WWncxRc9u0iJ6TVbrV4wogNLW9IO__NEzw>
 <xmx:Ka7ZZv8s79kjzrycxbmnQ4nuqBQ9bGWJdKuu6ccpzeFQSzzuV9QXFQ>
 <xmx:Ka7ZZhnU9LwcnpbUa-MLdRt8jy5PJzuTDBbfnUj9ewnCrXN756m_hw>
 <xmx:Ka7ZZuOAnosRow1OyPFFiHstQrbtJou0rgqDKago9e38ytQOWMiR1vYU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <linux1394-devel@lists.sourceforge.net>; Thu,
 5 Sep 2024 09:12:08 -0400 (EDT)
Date: Thu, 5 Sep 2024 22:12:06 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/5] firewire: use sleepable workqueue to handle 1394
 OHCI IT/IR context events
Message-ID: <20240905131206.GA6449@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net
References: <20240904125824.462786-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240904125824.462786-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 04, 2024 at 09:58:19PM +0900, Takashi Sakamoto
 wrote: > Hi, > > (resend to linux1394-devel since the original post has so
 many > receivers. Please refer to it for any reply: > https://lore [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.146 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1smCHc-0001ef-6Z
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Wed, Sep 04, 2024 at 09:58:19PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> (resend to linux1394-devel since the original post has so many
> receivers. Please refer to it for any reply:
> https://lore.kernel.org/lkml/20240904125155.461886-1-o-takashi@sakamocchi.jp/)
> 
> This series of changes updates my previous RFT[1] to apply for v6.12
> kernel. For the detail, please refer to the previous one.
> 
> To Iwai-san, this series includes the change for sound subsystem as
> well. All of changes are specific to ALSA firewire stack, so I would
> like to send it to Linus as the part of firewire subsystem updates if
> you do not mind it.
> 
> Changes from the RFT:
> * WQ_FREEZABLE is newly supported in the workqueue
> * Improve code comment in IEC 61883-1/6 packet streaming engine
> * Avoid dead lock in the calls of workqueue sync API
> 
> [1] https://lore.kernel.org/lkml/20240901110642.154523-1-o-takashi@sakamocchi.jp/
> 
> 
> Regards
> 
> Takashi Sakamoto (5):
>   firewire: core: allocate workqueue to handle isochronous contexts in
>     card
>   firewire: core: add local API to queue work item to workqueue specific
>     to isochronous contexts
>   firewire: ohci: operate IT/IR events in sleepable work process instead
>     of tasklet softIRQ
>   firewire: core: non-atomic memory allocation for isochronous event to
>     user client
>   ALSA: firewire: use nonatomic PCM operation
> 
>  drivers/firewire/core-card.c             | 33 ++++++++++++--
>  drivers/firewire/core-cdev.c             |  4 +-
>  drivers/firewire/core-iso.c              | 30 ++++++++++++-
>  drivers/firewire/core.h                  | 14 +++++-
>  drivers/firewire/ohci.c                  | 57 +++++++++++++++++++-----
>  include/linux/firewire.h                 |  3 ++
>  sound/firewire/amdtp-stream.c            | 34 +++++++++++---
>  sound/firewire/bebob/bebob_pcm.c         |  1 +
>  sound/firewire/dice/dice-pcm.c           |  1 +
>  sound/firewire/digi00x/digi00x-pcm.c     |  1 +
>  sound/firewire/fireface/ff-pcm.c         |  1 +
>  sound/firewire/fireworks/fireworks_pcm.c |  1 +
>  sound/firewire/isight.c                  |  1 +
>  sound/firewire/motu/motu-pcm.c           |  1 +
>  sound/firewire/oxfw/oxfw-pcm.c           |  1 +
>  sound/firewire/tascam/tascam-pcm.c       |  1 +
>  16 files changed, 157 insertions(+), 27 deletions(-)

I applied all of them to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
