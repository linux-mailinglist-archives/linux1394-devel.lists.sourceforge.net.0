Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF40ADBE32
	for <lists+linux1394-devel@lfdr.de>; Tue, 17 Jun 2025 02:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FBrotYR1lnj7+2IWJ6CGSXbNxECjCAGT/k2CDtIwBIQ=; b=LyMjQXLO9Tq22C/mE3iR9jJMU1
	rbR4cPMdzh0/qUPmzwU81EJ7tZyMYhWagf2w93ehuLdfHGxKNGYty1uhBHxMG3/WVr/9vjUw40qRi
	DG7PkYykPVt+7kgogTOtGNH1mK6qVYOWlVmlOgvSwY1qgiUxxNymNzARxAVH4RSCzc2Y=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uRKE9-0004MV-Mf;
	Tue, 17 Jun 2025 00:31:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uRKE7-0004ME-10
 for linux1394-devel@lists.sourceforge.net;
 Tue, 17 Jun 2025 00:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x5XZ6qJaA8Q+Y8DRQar4ffKcyWxs5Gd9Upu0Wb+KVqk=; b=bJR+/g9zF89wMECZ9nw+SNG57B
 DquPuQSwUs1/nC0CsHzWf7pRC/w41je3LPKzXjcUekZMMsgmmMlbvvIHziWlm8lRjr1t7JOXan3PB
 ldjuD7rIhfrf5Yo5YS+tYb+ekFkksTqkeh06T6wkF3MCK5lw4L6j+y52QBHPm412Bldk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x5XZ6qJaA8Q+Y8DRQar4ffKcyWxs5Gd9Upu0Wb+KVqk=; b=UPJAJRQN9vplnv8INmvw7UOkPN
 EA3DcTbxzmeGDACCj+ojcFotOhWIQEkB+Gabk0+/9t46C384jOFt/zxwQdLu3KhMTjeuXoPAFlD0U
 OeajLZ+zCYTLjSxuzwrNbslkMw2DtOgmtT6dHrt25xWHp9Hjr0qq98AEFfWhaUvdXBz8=;
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uRKE5-0003d5-Pb for linux1394-devel@lists.sourceforge.net;
 Tue, 17 Jun 2025 00:30:58 +0000
Received: from phl-compute-01.internal (phl-compute-01.phl.internal
 [10.202.2.41])
 by mailfout.phl.internal (Postfix) with ESMTP id 1E35A13803DB;
 Mon, 16 Jun 2025 20:30:47 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-01.internal (MEProxy); Mon, 16 Jun 2025 20:30:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1750120247; x=
 1750206647; bh=x5XZ6qJaA8Q+Y8DRQar4ffKcyWxs5Gd9Upu0Wb+KVqk=; b=Z
 lYJUligQWt9tL/Y7F1tLXcseaLML8/xJ1CJkVqhLsOrCro4JeNGbzocgj4Go0j/X
 Ghx/F618iF3Wv2rDcY6SnIoLl97U1b5eYysf0mq07I8p3AYszJjTeX5thrZLKYGB
 UXieesQjYRU79pqo5eZuDejTCyhVn8E4pkT0GvAyg7vr5MrU693LPNELIjl6IQNq
 v4kUlhqkLOkoBEVjZ79Mf/rVllvruCPzCozENG2oz0ymHrXaw7S/Q66+SRdXXNS1
 Ec2Id2/CmfQMBDwsHw6c1CbjEgNbYyD1G9h/VNwVrCliV26j/U/4Se/lvj1q1/iN
 pdGVSZS6mwS4kYLSwYFJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1750120247; x=1750206647; bh=x5XZ6qJaA8Q+Y8DRQar4ffKcyWxs5Gd9Upu
 0Wb+KVqk=; b=OvSf/Tg89vI1Ctc5vVu1VedY7p2SyFrof5nwEmRZBWckekhNTze
 7qftwVMzHVoEb5HuD0t/654iQiufDYQqR5wEPB6YovD0PxVmOjFOZ4YtZpAfm22W
 beTtIYFtEzqheL0I2QZYLJ9Lc9or2Tz6CqTy51tfvdc5iIzF8c3NllrBRe1yvXVx
 h/T14in+l2LzqjY+mn4AZ53+jWE8Y5bV68FHzmVmRNQ4Btww61cAm9NTkEzr/Hin
 yitxFr5HaRIQy3Rnmka7EhHx/e6cQLVEw28BWZgtJLqY38DZfnXEpRAeuPwGAtGS
 qKI/yoa/teujSft+QtWWe74OLqSz8o924Gg==
X-ME-Sender: <xms:NrdQaJrCo4H3wvGi3MI4QXmnFda6AmOFofwmNlSDOas9nufw03VIXA>
 <xme:NrdQaLpTfo1Fzxom2riYLF0XrfpozqdM1Z3-Je4Sg8rotEJlWKTvSKQIgc3QArkZp
 SxR1zXxwwq-7zwzHOs>
X-ME-Received: <xmr:NrdQaGMa2zD25UqxQ75y05HeCMPO4iFmKWj82qqJecnNcJ2oL-VJBw84B6L4ZFP5it8AGCHq8W7Un5Q-3uuZNuGjSGR3-LHetNE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddvkedtvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
 evuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgr
 mhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrf
 grthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeegieeljeehjeeuvdeg
 hfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghm
 ohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprh
 gtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghf
 ohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkh
 gvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:NrdQaE6aJhlsSz70bWevLrj8CgkR2gNMGWcV1dNrU5YXIniTYJ44Ag>
 <xmx:NrdQaI6LPYTgIPrHVXsi9huD0GnqRlC-Q_rDSpN73EduhsLru2_alw>
 <xmx:NrdQaMibZOV7uJsKZIVtlrAwTzsRfkMzGXMnszu-IcO3-ZGSq2bv8Q>
 <xmx:NrdQaK6VyY7OqgZyFtQSCccfeJhlgxZjclQiH8_hkBgA4JyHt5UL9Q>
 <xmx:N7dQaEo2lObxA-nRLKg7DhfWBN6kqt2m50eLTiJ5WiTK3FTKvXVEvLAY>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 16 Jun 2025 20:30:45 -0400 (EDT)
Date: Tue, 17 Jun 2025 09:30:43 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH v2 0/3] firewire: ohci: use regular workqueue to handle
 1394 OHCI AT/AR context events
Message-ID: <20250617003043.GA461319@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250615133253.433057-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250615133253.433057-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Sun, Jun 15, 2025 at 10:32:50PM +0900,
 Takashi Sakamoto
 wrote: > Hi, > > This is the revised version of v1 patchset[1]. > > Last
 year, in Linux kernel v6.12, the bottom-halves for isochronous > con [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uRKE5-0003d5-Pb
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

Hi,

On Sun, Jun 15, 2025 at 10:32:50PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> This is the revised version of v1 patchset[1].
> 
> Last year, in Linux kernel v6.12, the bottom-halves for isochronous
> contexts of 1394 OHCI PCI driver were changed to use workqueue instead of
> tasklet (softIRQ)[2]. I have received no reports of any issues related to the
> change until today. Therefore, I believe it's time to move on to the next
> step.
> 
> This patchset updates the driver to use a regular workqueue (not WQ_BH) to
> handle 1394 OHCI AT/AR context events. Unlike isochronous contexts, the
> asynchronous contexts are used by the implementation of the SCSI over
> IEEE 1394 protocol (sbp2). The workqueue is allocated with WQ_MEM_RECLAIM
> flag so that it can still participate in memory reclaim paths.
> 
> With this change, all remaining uses of tasklets in the subsystem are
> completely removed.
> 
> [1] https://lore.kernel.org/lkml/20250614113449.388758-1-o-takashi@sakamocchi.jp/
> [2] https://lore.kernel.org/lkml/20240904125155.461886-1-o-takashi@sakamocchi.jp/
> 
> 
> Changes from v1 patchset:
> 
> * Fix "error: cannot jump from this goto statement to its label"
>     * https://lore.kernel.org/lkml/20250614113449.388758-1-o-takashi@sakamocchi.jp/
> * Fix indentations.
> 
> Takashi Sakamoto (3):
>   firewire: core: allocate workqueue for AR/AT request/response contexts
>   firewire: ohci: use workqueue to handle events of AR request/response
>     contexts
>   firewire: ohci: use workqueue to handle events of AT request/response
>     contexts
> 
>  drivers/firewire/core-card.c        | 48 +++++++++++++++------
>  drivers/firewire/core-transaction.c |  7 +--
>  drivers/firewire/net.c              |  4 +-
>  drivers/firewire/ohci.c             | 67 +++++++++++++++--------------
>  include/linux/firewire.h            | 12 +++++-
>  5 files changed, 85 insertions(+), 53 deletions(-)

Applied to for-next branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
