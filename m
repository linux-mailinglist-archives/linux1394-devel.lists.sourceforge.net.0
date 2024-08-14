Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE9595264D
	for <lists+linux1394-devel@lfdr.de>; Thu, 15 Aug 2024 01:47:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1seNhd-0003id-HB;
	Wed, 14 Aug 2024 23:46:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1seNhb-0003iS-Ao
 for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 23:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eMMkPb4wq72gJTV++/aFkqKt3R3VFtBpA6zEx2Tt4oM=; b=Eqb/9Hhm2lIOnr6lfDG4qSB40C
 1RatZGWb6sItnoUynet7JWa7gb5iSOSXwxJg8upysq4PoTAWrNnOd3GuxgxHnPHnwrtqRm551H/V8
 5slfXJbXOWf809+QPGrn6uyPaB51jB4S9gSSX9yDsbIF+84Zpy6Id7u1h2hbP5bY+Bl4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eMMkPb4wq72gJTV++/aFkqKt3R3VFtBpA6zEx2Tt4oM=; b=Zz1l50E7FkhHg51ZTdGSzdqKRc
 AoPojcIoKIgEwhR7HaSJhlC+TAl+kAee22S9I+D6yt+nl41SZ6f5Inysu7tv3x/mZ7E/ynFzYZ2Kh
 VMSjXtrKEza82g7lQQZqEkpSCLsjNpgQAt02wSlm6E9Lq9X318LjEFx+j0rBM1p+gGWw=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1seNha-0007w8-9S for linux1394-devel@lists.sourceforge.net;
 Wed, 14 Aug 2024 23:46:51 +0000
Received: from phl-compute-01.internal (phl-compute-01.nyi.internal
 [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id 952F3138FC23;
 Wed, 14 Aug 2024 19:46:39 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Wed, 14 Aug 2024 19:46:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1723679199; x=
 1723765599; bh=eMMkPb4wq72gJTV++/aFkqKt3R3VFtBpA6zEx2Tt4oM=; b=T
 xHjceIOnyuD4GXmbqVyqmiEzKOQVSoYSanmSY1TLppm6O1aqgWBlR2ED4oijWxoH
 eLtjoEy1n6HA7iursyhL0FUzGhdlGq8ajDvbxoSJLyD+fIl2n+OF6+RMFh+j7sKj
 97SvUZgoNmLScAsaAwx3YTiaWpaEMzfxbUitxjr/lBXowbR7wQLoeL+u65S4KyIi
 o19Z4dLpHCo00H+av75YcnmqK17Kva1dnQFRFUNfBvXdzJPElINR4Gn7AK0/TtLH
 tm+xJ/PssWvFU6G0ae/jhC1j1MtEsXezpNUmXyWQM6nwYf919TKO9WnkODqMCbMq
 tBxwAiSaeBrVC4WAWOXjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1723679199; x=1723765599; bh=eMMkPb4wq72gJTV++/aFkqKt3R3V
 FtBpA6zEx2Tt4oM=; b=t+wnsKU4uIXOzjHX3EQMB6N3cnl/iunmYAdcYjoIHpn5
 AEqh1qvNIPfpzbrorB7cArZrD9ndH+sezEPgUCQpcwTt9fIppGi5iKIQrXIn8MOh
 1HPKqbI/vchDMx67CBSUkyV/5AwrDxiLJrPUxwx6QwZLC7B3xnzKP7Ji7Ipa0o9t
 UON/r2zdWzQen7JR/8/rzw7tNq53JkkLS6JLewcCNe87485CLkVZYj3893c/Cuww
 FqZ8pXfoyrE+z+4TVEX+oggINk5dd1dmNeNdZRSbwMnvgz5YMhw+LoN/yNakwah/
 QDtInlryep+y43RjskKT4vwV7UoWSomU14EeH92F9w==
X-ME-Sender: <xms:30G9ZhXlfCXOitn31vQDFpaw1R9xId0XXeWiKQHOVeYnP3CcdrCzyg>
 <xme:30G9ZhmEUNld6tzzwG4M5OTj5dnsWDJP62bye6hmUqJYve5mt4vKzMzYJQNGOtza0
 lYNaXGFbHzqsnPEdAM>
X-ME-Received: <xmr:30G9ZtYMY0pV_A9p_Ed3GiZPZl0EiTXvFwDwM6YhwQEWzoCcbkBRXZAxKwxisyc0XWCR69GZjCnHFofHkvTgD2cTPs_BRcyOJg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddthedgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
 fukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghm
 ohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrg
 htthgvrhhnpeehhffhteetgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeu
 udekueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedv
 pdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvg
 hlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhu
 gidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:30G9ZkUn4Fdq0fIVi7lA2M5WeRd0kD0k3Sk2R8nd6_vEJceKKBfsFA>
 <xmx:30G9Zrl6mBOMfaoAEOsNgT7BKIu7r2t__-rBOTx1x835jS9xHZCrBA>
 <xmx:30G9ZhcToWcWdeu9tOBkDePvOlZpn4uMToMWhwkL7AVi4BqaNqgPOA>
 <xmx:30G9ZlFcjdSQuTZQMFPGTNn0GX_CfZFBPjRGu-dM7Y6yBbeXcVu6cQ>
 <xmx:30G9ZgzGaJs54BzPfYgLNuE2KJoLqZUBsrtcSxnuMyaXRB24-55aEhwU>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 14 Aug 2024 19:46:38 -0400 (EDT)
Date: Thu, 15 Aug 2024 08:46:36 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/3] firewire: core/ohci: minor code refactoring
Message-ID: <20240814234636.GA82950@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240814131222.69949-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240814131222.69949-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Aug 14, 2024 at 10:12:19PM +0900, Takashi Sakamoto
 wrote: > Hi, > > This series of changes include minor code refactoring in
 core function > and 1394 OHCI driver. > > > Takashi Sakamoto (3): > [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.145 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1seNha-0007w8-9S
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

On Wed, Aug 14, 2024 at 10:12:19PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> This series of changes include minor code refactoring in core function
> and 1394 OHCI driver.
> 
> 
> Takashi Sakamoto (3):
>   firewire: ohci: use helper macro for compiler aligned attribute
>   firewire: ohci: remove unused wrapper macro for dev_info()
>   firewire: core/ohci: minor refactoring for computation of
>     configuration ROM size
> 
>  drivers/firewire/core-device.c | 3 ++-
>  drivers/firewire/ohci.c        | 5 ++---
>  2 files changed, 4 insertions(+), 4 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
