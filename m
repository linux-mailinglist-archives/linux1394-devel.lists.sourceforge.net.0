Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD552B7E266
	for <lists+linux1394-devel@lfdr.de>; Wed, 17 Sep 2025 14:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FjKvwIaOsxvnUarnavA8VboHsEWRQRBnYyfcqKVNFSY=; b=DJR198VtT7oBEEMQdL8xcZeeX3
	VF+ckcTdiTw7YnB0MP6i1sRyGbReWTchFCLuR7+dJTCeaCOxJrT0sXNpInjwouNQbXijifMTSLYZl
	aVOyZtQGuPkl2i1J8vjjbDWcPpEuPbEtD/G6i9/4gW3EvMJc2htaXeHs1zHLal8Pl5Dg=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyrUS-0007I3-Pn;
	Wed, 17 Sep 2025 12:42:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyrUQ-0007Hs-Eq
 for linux1394-devel@lists.sourceforge.net;
 Wed, 17 Sep 2025 12:42:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EkOGMebmPHNaMnj5WLdPb0x71Rm3TDNtq57psa+zaWo=; b=ed3zOQFFPdDIsjLhYh8wyBqGxo
 o37EqrmKT2/pu2jYRSDtFKq2t9byaSzUR5vvnACwoRuH3SOu6swZJAqmv91FEywDFPLoQWSDtHu5O
 ZBJC7GV6Cz4c4mbTRqJB8nqZyYNRCXeFhaMjm8zqsCsjxZuJEbR2ZSzYE3B9Aa/xxFic=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EkOGMebmPHNaMnj5WLdPb0x71Rm3TDNtq57psa+zaWo=; b=g7e8VMspvKZw/tdNOa15KUN/0v
 9K5Ltvm76iqRBK+QFG7U+gEmRhryba5XQuXR+/38nezZiKNALEh/tUEqqRxu7BOc/tjvu1k33k1z/
 1iAM9r3m7zWF6zWdqmqsR0oOHdByq03KaSAiCiYt9zq1n6k1GfPyPXfi0wdbnUo3kKKU=;
Received: from fout-b4-smtp.messagingengine.com ([202.12.124.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyrUO-00045O-E3 for linux1394-devel@lists.sourceforge.net;
 Wed, 17 Sep 2025 12:42:25 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
 by mailfout.stl.internal (Postfix) with ESMTP id CA87D1D001C6;
 Wed, 17 Sep 2025 08:42:13 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-10.internal (MEProxy); Wed, 17 Sep 2025 08:42:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758112933; x=
 1758199333; bh=EkOGMebmPHNaMnj5WLdPb0x71Rm3TDNtq57psa+zaWo=; b=g
 l1pqHKd1EIha6clmI8GLhEgoxfOhiwLSuK4S2Gzk4iU3ORPxFWwhvuZp/sWuhNWa
 qUAYYMZmsIOpIvbEDj5/3FP5sIFb0jdyM1GgWHQHFxbVZlyvB3KQvgFE3UrRF/9u
 fFtSjYi+92sHwkHmqVT8sOQ3qy//832AdSh7gp2Zqiy8TW8/gC6TQwd6/ycr1SW4
 EJa9OlBYZ3uwoQfp6fdCoEm/6/acuKWfd/7KXnMiB5JEN0LWzK5hZFS0OOKwTtsG
 +03eU+/W+bmOMj4adnZ+FF4hIUe45gKO6NW0AM2wMo5na9H90VIEpbt1wVoIZ5Cc
 d0jFZF152r7dC9/Cz5cKg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1758112933; x=1758199333; bh=EkOGMebmPHNaMnj5WLdPb0x71Rm3TDNtq57
 psa+zaWo=; b=gCbirfaFawPhMRjKHztaaGjzQ1GfqRoIQ/wx/msqF077HYpb3yV
 s8GOROnfTFfPF2DV8O9mfbgYGOakqBOFNlQdBfxUJgz5dv5WWr6kJAMkaMZW44eC
 xPl9BV6nYLF5M0+6dEj5oZhYkYF9NDBMHiRAI/5WFIKbwCfWcsWPopHENzbul6A3
 r7Pbh6ksnzzmsc5UvweN9uSAKq0dIkqxtGKEJATjsxIs9P40zUAujRHLDe/zvj+4
 JrqyOb9TpWh26f/wKJ2J4ahQRllXZa6oFeTv0zcbdpvkLroaAjXVwaGxXH85GGpF
 iWRuB8+ZOFzd63S5xDSFMIZM6j5ZTfGPWqg==
X-ME-Sender: <xms:pazKaHRzpSNSmXlIG59hckpbbGzGDD3L0MqCrOibBeMt4U7x7_D6RQ>
 <xme:pazKaBve4sMBknyZFkq_S2RS25eUKU9nCGbQTNQf9svcoAPuj9uP8yXMaDvwSdgHQ
 wbGG9wZVJfT0ewezc8>
X-ME-Received: <xmr:pazKaOy-oAOVPB2V1Qm5LYH_zZj1aKgeFDwuA3fPRtnI7OjEDn5lVbZFGmrag5ZUfmYy0SqV4Dm9L_2XzQsm68roPy77RNipkB0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegfeegkecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:pazKaD4FHnzw_QfdD96u6mrB_8QRcHXP_ZLp7RgJAPyk8TFZsi4iaQ>
 <xmx:pazKaAXndxylyg8PuqqzNp4LamhPW9sCTjrMuWA6-c1qIanytiFdVQ>
 <xmx:pazKaH3jtVtKR0nng2NLbmpldcY__N8LArNQ1W8i82TK3jBiBBsZSA>
 <xmx:pazKaN2t2nxIU4wN9cm1qhPp8JIzqT4_hxYuWi64IbovSl2Qne8tgg>
 <xmx:pazKaEVxlo4tlT4B2VK3S-L4Cno312Eo20DjuOB3yE84tabIHkRR8b77>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Sep 2025 08:42:12 -0400 (EDT)
Date: Wed, 17 Sep 2025 21:42:08 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/3] firewire: core: serialize topology building and bus
 manager work
Message-ID: <20250917124208.GA56969@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250917000347.52369-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250917000347.52369-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 17, 2025 at 09:03:44AM +0900, Takashi Sakamoto
 wrote: > Hi, > > Two functions, fw_core_handle_bus_reset() and bm_work(),
 acquire fw_card > spin lock, however each purpose is different. The [...]
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
X-Headers-End: 1uyrUO-00045O-E3
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

On Wed, Sep 17, 2025 at 09:03:44AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> Two functions, fw_core_handle_bus_reset() and bm_work(), acquire fw_card
> spin lock, however each purpose is different.  The former function manages
> to update some members of fw_card, and the latter function manages just to
> access these members of fw_card. This reflects that the members are valid
> during current bus generation once determined by the former function.
> 
> Current implementation schedules a work item for the latter function under
> acquiring the spin lock in the former function. This could causes the
> latter function to be stalled by spinning until the former function
> finishes, depending on the timing to invoke the work item.
> 
> This patchset suppresses the stalling by serializing these two
> functions. In former commits, the former function is invoked by IRQ
> thread, thus sleep-able. The former function disables the work item
> synchronously, then acquires the spin lock to update the members of
> fw_card. After that, it releases the spin lock, then enable and schedule
> the work item. The latter function is free from the spin lock.
> 
> Takashi Sakamoto (3):
>   firewire: core: schedule bm_work item outside of spin lock
>   firewire: core: disable bus management work temporarily during
>     updating topology
>   firewire: core: shrink critical section of fw_card spinlock in bm_work
> 
>  drivers/firewire/core-card.c     | 30 ++++++++----------------------
>  drivers/firewire/core-topology.c | 11 ++++++++++-
>  2 files changed, 18 insertions(+), 23 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
