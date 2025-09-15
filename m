Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84802B58825
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Sep 2025 01:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6MNVcNMkB9lfHbmEM6MOpHsS+yYrgEbA1k8DB2yGsQY=; b=GgEsdIGnnI4n7tLzOVSkXgBjRW
	TO8ttxKM8HTApD7sWzhFOg0L5jfALnr6wRsn9P8lQRxcPUE6yPW1cTXDDulYahUOdeiVyIsF+wsLL
	Io52usjqFOssm+EejaQPV2W1dIpec7lxcEFQk0VLeJEqS7hzmn8H/8SuYrogMGmacngs=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyIVT-0007YN-Op;
	Mon, 15 Sep 2025 23:21:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyIVR-0007YD-T0
 for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1LXqTPY11l8JZLVarayLcFLq/t8wdK1l2Fcr6BFWVL8=; b=U88g5DBVE0I19lrINSJa3vptRH
 MNSyPI04Hvmrv3VGFEFL6hmb/kemsxAjRhbrrdq33yidRmGj2mscb1jGKj2yCzryxuTVasIb2299U
 HZ/iMYWsOy0jPkzdBRUy8dk3dMtU3eyTJI5wMzWhiTgXftsyywmAgq3vL/sWryCgMr1w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1LXqTPY11l8JZLVarayLcFLq/t8wdK1l2Fcr6BFWVL8=; b=ObBr1GBw1/7YpDUjzJfcxj+0Av
 94PWNLpfP4telUXKasMyTJTnOHs7sEtUNgYej1d/7DoTBNQW2QqYqbtB/ksVB0uIqi88p/bwNW/mK
 56vwPKESO6zS74+CgKre7mUZuUM2Xd6dtKlKqI3OBskVpbkFt7rINXtYLW8QoKuKnMbo=;
Received: from fhigh-b5-smtp.messagingengine.com ([202.12.124.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyIVQ-0000vv-5U for linux1394-devel@lists.sourceforge.net;
 Mon, 15 Sep 2025 23:21:09 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 84BF47A01AD;
 Mon, 15 Sep 2025 19:21:02 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Mon, 15 Sep 2025 19:21:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757978462; x=
 1758064862; bh=1LXqTPY11l8JZLVarayLcFLq/t8wdK1l2Fcr6BFWVL8=; b=g
 n6PHu6fmgArr0b19PdA6w/6O09Rb7I9mqqUYhueiwePkjyP3HkH5GK4wG7+sqd6e
 vxFgJxMByO+/s8Rrgwh4m1NCrMJryypsNiXv+x2/aFW/MUmX0M16RYKlPeo7o0vG
 mTrrf6AIvfIKNZ1qO8FcSpsaD2Q5USshxI9ZU+CzN4P+sQBmgoiYPkp0Bd657ZD1
 C/Bz17PYTQkPzb5zqVkQS+lkXG5h+GfBKNC28U32LhqRUdy3KQ2Ga2gFXjsS7FFP
 GccEt4xsKwWf+EcgSjF1jHVQO7KvCxgefcNVT9YbGp9i715zdNoaUUhAEd4W09QJ
 7hMOFunPclJ8YBTq7OvPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1757978462; x=1758064862; bh=1LXqTPY11l8JZLVarayLcFLq/t8wdK1l2Fc
 r6BFWVL8=; b=kulsHm3hYwaUTyZFU3FgDe2K8V5V6riZxWDReSBWgH8D73HUqC3
 lMSiJ3yG1ItlkRoGlCQR2sfc/x6QOGRQ3zYkRoZ+n3O0BxgyC79igO7L22NrdiWn
 0SHlZmvBOOjHwzxhyPPH7XUt9IKsVW7o+BihGndrZWdhbbRpGCThzEag7LRrSPFC
 bpAKr5BblnfOkSB9/26EOCoq3K7yHq9EO0Z4WgLsKfOylP9AUFPZ0x4P05F8gAcZ
 5sN0RwEC7bsY9uhp3mdXBeW0D2o6JrZkDbteye8/Bhye2CClfMCnIq99vMc2lHg1
 CHtxM0678veuYWd787zy1ysOwgIFOsAQa3A==
X-ME-Sender: <xms:Xp_IaNolkzSCx2sKbSi-MaPTsELnKAMhQMt2ADNCN_dH41r2jL-r5A>
 <xme:Xp_IaIl3Z3H8HihOPK49BotNKSI_xNegR1PddG5NHnyIIKuzcN5-ka6EoIIwVAiNr
 jYrpc1Av9u7Rce9L9M>
X-ME-Received: <xmr:Xp_IaMLmVtw73Q_Z9xDjejU6LEiY9RjEsSl-jm6UJxHXVvOpzhdC-dHdhjVYEN3vGh6hZC21Mijq0827FuzlURjMSQaprB5pLF4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefkeellecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgke
 dvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:Xp_IaFw_v7aidRh1gcBV9-OUUsUZFJzPF0ASWwbp2B35xkJNAUPMrw>
 <xmx:Xp_IaMuZ_IRWc43NpOhjupEUabPWixc56jdYNm8azPlFSq8qaKmkRw>
 <xmx:Xp_IaMvlW5fiwNRG-OJ0-Q_eJ_suw_I8_IzIYQz9t7LH-BoL0bXPRw>
 <xmx:Xp_IaBO9g8wbGBeA_cm9Idb4-NXTsLnR4KppdqbWKalzpT64-tbn3A>
 <xmx:Xp_IaFvPkRiJviVFa2B6TiSAsHWT5nvyBeKFugEn1iVPb33LCbkIrsNj>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Sep 2025 19:21:01 -0400 (EDT)
Date: Tue, 16 Sep 2025 08:20:58 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/2] firewire: core: use helper macro to calculate
 jiffies count
Message-ID: <20250915232058.GA908915@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250915024232.851955-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250915024232.851955-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Sep 15, 2025 at 11:42:30AM +0900, Takashi Sakamoto
 wrote: > Hi, > > In this subsystem, all types of timeouts are managed using
 kernel timer > wheel, thus they are based on jiffies grain. Some [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uyIVQ-0000vv-5U
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Mon, Sep 15, 2025 at 11:42:30AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> In this subsystem, all types of timeouts are managed using kernel timer
> wheel, thus they are based on jiffies grain. Some macros are available
> to calculate jiffies count, and they have some advantages, For example,
> no need to access to HZ macro or jiffies itself directly.
> 
> This patchset replaces several lines with these macros.
> 
> Takashi Sakamoto (2):
>   firewire: core: use helper macros instead of direct access to HZ
>   firewire: core: use helper macro to compare against current jiffies
> 
>  drivers/firewire/core-card.c        | 17 +++++++----------
>  drivers/firewire/core-cdev.c        |  4 ++--
>  drivers/firewire/core-device.c      |  9 ++++-----
>  drivers/firewire/core-transaction.c |  4 ++--
>  drivers/firewire/core.h             |  2 ++
>  5 files changed, 17 insertions(+), 19 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
