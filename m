Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF8E9AF878
	for <lists+linux1394-devel@lfdr.de>; Fri, 25 Oct 2024 05:49:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1t4BKb-0004vE-CB;
	Fri, 25 Oct 2024 03:49:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1t4BKa-0004v6-5o
 for linux1394-devel@lists.sourceforge.net;
 Fri, 25 Oct 2024 03:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WgS6yhK7Z1D4ST/hhcqeRn9rI9T894JvSD6lnkO9Iy4=; b=aZbJ9DPKHjMdRk8YV9ZjCq7GX8
 q0zF3BSiTm9b64HaR35LKankKdwDBSGv5ejywS8ptVXiAEN11j4ZaCBfWBa4n8A+L96J1DGfv8hne
 6Ga3+xgWRAkgLPmlAuVS+CuoBVoMX9sumD477/kzsN/ekyNlqbUlpnMls1uVR5rb6Y8I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WgS6yhK7Z1D4ST/hhcqeRn9rI9T894JvSD6lnkO9Iy4=; b=IsuPpDzT+rkn0ebUiFUHtgXZ+c
 Zd+orv3cX16lm/oB7oGrL110ruqamREO1LFt/bFL8guUFeSb+ByoOmLGjDAqUwttdclkxUkq8jzbd
 ASOdBUJ/T5gAhSWpJhRLQYm100Lg/MMJEEpHMY23uEc8qj6qS9Ndj39DgKU4I5xn45Gc=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t4BKZ-0001Nq-QR for linux1394-devel@lists.sourceforge.net;
 Fri, 25 Oct 2024 03:49:44 +0000
Received: from phl-compute-09.internal (phl-compute-09.phl.internal
 [10.202.2.49])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 37C1E114017A;
 Thu, 24 Oct 2024 23:49:38 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-09.internal (MEProxy); Thu, 24 Oct 2024 23:49:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1729828178; x=
 1729914578; bh=WgS6yhK7Z1D4ST/hhcqeRn9rI9T894JvSD6lnkO9Iy4=; b=n
 ad+USn6oL36B3vvBbXK3HNJ3K1+oFehHGDpVnpnN9Bup8hAnBvflA2x92/MMkhnZ
 DhVu+dZUlvr/Scuol7rLXmHqaqHphQ3ZdOfmE3l0OjUW5oLEW/OGj23IkXcrebn9
 UlrwluUhpGRilpEIOkOgWXzqNOCIK+adbZ8u8IN584B6LB9UmyhgpFb9CXwI74xZ
 rXh9/nuYAibemxgHlAz5hfIvuj1j4TP7JXPVxcRRWBwfxcoaBRpe2VUeodKx6ucM
 BGA5SzgxepDMscFVDIE7oAcQFKejHd+6RnF8yKVq0cbKae2FQuobSdenHHBBUk72
 J1R2ZZxnRJof1n1Zwys1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1729828178; x=1729914578; bh=WgS6yhK7Z1D4ST/hhcqeRn9rI9T8
 94JvSD6lnkO9Iy4=; b=mtmn86KYzMkBgKjm/XzfBAMvaaIfK62AG2JqMOcFlBjc
 avCcLDIzgvpfscevO1wQYkxmpdqQ/cJ3nd3aCAiTqD80tKoHyC878AJWCrwAOu2U
 1AeBpB6wV+1vSWLNFJNvLc6qwmJ/LPliwQ+lo/Bj+ac1WBFZDzVTaDsEUd/+U1nu
 H67vF9cHEkFMfwrbjfD4PgQ/TreuMWNompbXIBQzN+A0UJRvD7JLwxyCh6MFHYI2
 +1bR3LUki1qgkBxyGZBqMHLAjH61Ghf0/FJHBLxok7rJ8A0OE2BbUwPMQz3B4uu5
 Ib0iAyJTtEy5FE2lu0qPKGmoWJ5Jvrq6qTFzXoKydQ==
X-ME-Sender: <xms:URUbZ3XU3sljmavQL1E0brgNdxFN4ViJevjVqZt7palS7FqrUOM0Hg>
 <xme:URUbZ_mvk8CUT6ppK0gAS3ULEhMPJ8-RFvpigA-qfIfyTpeyFzS64xiSJTwcSIUaO
 8u8fkYUG6EgbIKOaCM>
X-ME-Received: <xmr:URUbZzb7580JRctQCXlPNiwyT-ALm82TojAMT0bOloW0ubo8_xg54MSbrymF2rDpnHDRsGSMO-QNhHaeWbRRxkOkHNnEU6Jbm50>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdejuddgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeff
 udduvedvfeduleelfeegieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnh
 gvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtth
 hopeehpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegvughmuhhnugdrrhgrihhl
 vgesphhrohhtohhnrdhmvgdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlse
 hlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidq
 khgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprhgvghhrvg
 hsshhiohhnsheslhhishhtshdrlhhinhhugidruggvvhdprhgtphhtthhopehsthgrsghl
 vgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:URUbZyXmI8YdVWkCnmjP5hcuhlH0mmavj5vkZD-TO-GhVtXig6zGIw>
 <xmx:URUbZxkAbhpeTGaVOVbEvFZSgWS6ABe-d6Og9VDvbqF9tTJD5Uxw-w>
 <xmx:URUbZ_cc31pZbPBLRgXHeuw24B_6_FJiWp2My0UlelTqDPxMUwwwfQ>
 <xmx:URUbZ7HQVn2PfJEMlvpAaamk20HRRb_sLVVjjgaRrUO5hnkHVOBYsA>
 <xmx:UhUbZ0uOjIHDpDSCv9ffevWSR9tOIfChPe4W8n4Z_NN-UBFAeEUZL7QP>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 24 Oct 2024 23:49:36 -0400 (EDT)
Date: Fri, 25 Oct 2024 12:49:34 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Edmund Raile <edmund.raile@proton.me>
Subject: Re: firewire-ohci: device rediscovery hardlock regression
Message-ID: <20241025034934.GA95457@workstation.local>
Mail-Followup-To: Edmund Raile <edmund.raile@proton.me>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 regressions@lists.linux.dev, stable@vger.kernel.org
References: <8a9902a4ece9329af1e1e42f5fea76861f0bf0e8.camel@proton.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a9902a4ece9329af1e1e42f5fea76861f0bf0e8.camel@proton.me>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for the bug report. Coincidentally, I face the
 same problem with my TC Electronic Desktop Konnekt 6,
 which reports one available
 port and two invalidated ports, and investigate its cause. I think the problem
 occurs just [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.156 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1t4BKZ-0001Nq-QR
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, regressions@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Thanks for the bug report.

Coincidentally, I face the same problem with my TC Electronic Desktop
Konnekt 6, which reports one available port and two invalidated ports, and
investigate its cause. I think the problem occurs just for the devices
which have three or more ports.

I sent a fix[1] just now by referring to your suggestions. Would you please
evaluate the fix with your device?

I'm sorry for your inconvenience.


[1] [PATCH] firewire: core: fix invalid port index for parent device
https://lore.kernel.org/lkml/20241025034137.99317-1-o-takashi@sakamocchi.jp/


Thanks

Takashi Sakamoto

On Thu, Oct 24, 2024 at 01:56:31PM +0000, Edmund Raile wrote:
> Hello,
> 
> I'd like to report a regression in firewire-ohci that results
> in the kernel hardlocking when re-discovering a FireWire device.
> 
> TI XIO2213B
> RME FireFace 800
> 
> It will occur under three conditions:
>  * power-cycling the FireWire device
>  * un- and re-plugging the FireWire device
>  * suspending and then waking the PC
> 
> Often it would also occur directly on boot in QEMU but I have not
> yet observed this specific behavior on bare metal.
> 
> Here is an excerpt from the stack trace (don't know whether it is
> acceptable to send in full):
> 
> kernel: ------------[ cut here ]------------
> kernel: refcount_t: addition on 0; use-after-free.
> kernel: WARNING: CPU: 3 PID: 116 at lib/refcount.c:25
> refcount_warn_saturate (/build/linux/lib/refcount.c:25 (discriminator
> 1)) 
> kernel: Workqueue: firewire_ohci bus_reset_work
> kernel: RIP: 0010:refcount_warn_saturate
> (/build/linux/lib/refcount.c:25 (discriminator 1)) 
> kernel: Call Trace:
> kernel:  <TASK>
> kernel: ? refcount_warn_saturate (/build/linux/lib/refcount.c:25
> (discriminator 1)) 
> kernel: ? __warn.cold (/build/linux/kernel/panic.c:693) 
> kernel: ? refcount_warn_saturate (/build/linux/lib/refcount.c:25
> (discriminator 1)) 
> kernel: ? report_bug (/build/linux/lib/bug.c:180
> /build/linux/lib/bug.c:219) 
> kernel: ? handle_bug (/build/linux/arch/x86/kernel/traps.c:218) 
> kernel: ? exc_invalid_op (/build/linux/arch/x86/kernel/traps.c:260
> (discriminator 1)) 
> kernel: ? asm_exc_invalid_op
> (/build/linux/./arch/x86/include/asm/idtentry.h:621) 
> kernel: ? refcount_warn_saturate (/build/linux/lib/refcount.c:25
> (discriminator 1)) 
> kernel: for_each_fw_node (/build/linux/./include/linux/refcount.h:190
> /build/linux/./include/linux/refcount.h:241
> /build/linux/./include/linux/refcount.h:258
> /build/linux/drivers/firewire/core.h:199
> /build/linux/drivers/firewire/core-topology.c:275) 
> kernel: ? __pfx_report_found_node (/build/linux/drivers/firewire/core-
> topology.c:312) 
> kernel: fw_core_handle_bus_reset (/build/linux/drivers/firewire/core-
> topology.c:399 (discriminator 1) /build/linux/drivers/firewire/core-
> topology.c:504 (discriminator 1)) 
> kernel: bus_reset_work (/build/linux/drivers/firewire/ohci.c:2121) 
> kernel: process_one_work
> (/build/linux/./arch/x86/include/asm/jump_label.h:27
> /build/linux/./include/linux/jump_label.h:207
> /build/linux/./include/trace/events/workqueue.h:110
> /build/linux/kernel/workqueue.c:3236) 
> kernel: worker_thread (/build/linux/kernel/workqueue.c:3306
> (discriminator 2) /build/linux/kernel/workqueue.c:3393 (discriminator
> 2)) 
> kernel: ? __pfx_worker_thread (/build/linux/kernel/workqueue.c:3339) 
> kernel: kthread (/build/linux/kernel/kthread.c:389) 
> kernel: ? __pfx_kthread (/build/linux/kernel/kthread.c:342) 
> kernel: ret_from_fork (/build/linux/arch/x86/kernel/process.c:153) 
> kernel: ? __pfx_kthread (/build/linux/kernel/kthread.c:342) 
> kernel: ret_from_fork_asm (/build/linux/arch/x86/entry/entry_64.S:254) 
> kernel:  </TASK>
> 
> I have identified the commit via bisection:
> 24b7f8e5cd656196a13077e160aec45ad89b58d9
> firewire: core: use helper functions for self ID sequence
> 
> It was part of the following patch series:
> firewire: add tracepoints events for self ID sequence
> https://lore.kernel.org/all/20240605235155.116468-6-o-takashi@sakamocchi.jp/
> 
> #regzbot introduced: 24b7f8e5cd65
> 
> Since this was before v6.10-rc5 and stable 6.10.14 is EOL,
> stable v6.11.5 and mainline are affected.
> 
> Reversion appears to be non-trivial as it is part of a patch
> series, other files have been altered as well and other commits
> build on top of it.
> 
> Call chain:
> core-topology.c fw_core_handle_bus_reset()
> -> core-topology.c   for_each_fw_node(card, local_node,
> report_found_node)
> -> core.h            fw_node_get(root)
> -> refcount.h        __refcount_inc(&node)
> -> refcount.h        __refcount_add(1, r, oldp);
> -> refcount.h        refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
> -> refcount.h        REFCOUNT_WARN("addition on 0; use-after-free")
> 
> Since local_node of fw_core_handle_bus_reset() is retrieved by
> 	local_node = build_tree(card, self_ids, self_id_count);
> build_tree() needs to be looked at, it was indeed altered by
> 24b7f8e5cd65.
> 
> After a hard 3 hour look traversing all used functions and comparing
> against the original function (as of e404cacfc5ed), this caught my eye:
>        for (port_index = 0; port_index < total_port_count;
> ++port_index) {
>                switch (port_status) {
>                case PHY_PACKET_SELF_ID_PORT_STATUS_PARENT:
>                        node->color = i;
> 
> In both for loops, "port_index" was replaced by "i"
> "i" remains in use above:
>        for (i = 0, h = &stack; i < child_port_count; i++)
>                h = h->prev;
> 
> While the original also used the less descriptive i in the loop
>        for (i = 0; i < port_count; i++) {
>                switch (get_port_type(sid, i)) {
>                case SELFID_PORT_PARENT:
>                         node->color = i;
> but reset it to 0 at the beginning of the loop.
> 
> So the stray "i" in the for loop should be replaced with the loop
> iterator "port_index" as it is meant to be synchronous with the
> loop iterator (i.e. the port_index), no?
> 
> diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-
> topology.c
> index 8c10f47cc8fc..7fd91ba9c9c4 100644
> --- a/drivers/firewire/core-topology.c
> +++ b/drivers/firewire/core-topology.c
> @@ -207,7 +207,7 @@ static struct fw_node *build_tree(struct fw_card
> *card, const u32 *sid, int self
>                                 // the node->ports array where the
> parent node should be.  Later,
>                                 // when we handle the parent node, we
> fix up the reference.
>                                 ++parent_count;
> -                               node->color = i;
> +                               node->color = port_index;
>                                 break;
> 
> What threw me off was discaridng node->color as it would be replaced
> later anyways (can't be important!), or so I thought.
> 
> Please tell me, is this line of reasoning correct or am I missing
> something?
> 
> Compiling 24b7f8e5cd65 and later mainline with the patch above
> resulted in a kernel that didn't crash!
> 
> In case my solution should turn out to be correct, I will gladly
> submit the patch.
> 
> Kind regards,
> Edmund Raile.


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
