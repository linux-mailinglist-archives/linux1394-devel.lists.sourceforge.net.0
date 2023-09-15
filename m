Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C47C7A1BE7
	for <lists+linux1394-devel@lfdr.de>; Fri, 15 Sep 2023 12:21:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1qh5wf-0005p7-Fm;
	Fri, 15 Sep 2023 10:21:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1qh5wb-0005oq-VW
 for linux1394-devel@lists.sourceforge.net;
 Fri, 15 Sep 2023 10:21:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JB3tsA1pXUSR0iT5R3DDtvbM9F3caQ2LLSR0vGzb0LI=; b=D8TsV0duwHwTznJtFs7yy3mQBN
 fZwTzDuivxYaD50+XH3af2DOoAj5Gv/PBB2L5pLpDXOQts/bAWjyphDGki0d1PwzWrnPTlEEyU1RH
 lC8FZG8Hso+Lm+5K7nTD4miplQBZw88tyV8Csrn0N+YN1PxdPZHdpaXu4IKWwtE49Xes=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JB3tsA1pXUSR0iT5R3DDtvbM9F3caQ2LLSR0vGzb0LI=; b=LQMYZ55rk7DAuCS9BOvt2WvUQD
 RmDX1DG61mDfLNfBe9ze9+ULZzGg+DaexwUFy7m4Pr7Xh9iv+2BRsr5ybqBQc+JPdzFpfVziPMxV/
 RLmImWS5wqdHGLh8k7B/5u3bNSoB8iu487begP5R7cDutfwptNuaH0XrQhTvhMSF2mL8=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qh5wW-0007VH-5D for linux1394-devel@lists.sourceforge.net;
 Fri, 15 Sep 2023 10:21:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 4CB003200958;
 Fri, 15 Sep 2023 06:04:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 15 Sep 2023 06:04:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm2; t=1694772259; x=
 1694858659; bh=JB3tsA1pXUSR0iT5R3DDtvbM9F3caQ2LLSR0vGzb0LI=; b=V
 Y537NP3SRVgQsBu5P+jfO4OdnRf7kqxdcpJtpEpONNRDIYCvUZ0o73MaN0dYSsmX
 RRkW/m7p9QPy/mF/iK3bG1fUb7KOnRGE06y9v4GTaD0ipmSGlKUc2I2qAL2iHcCU
 Lj/KMSt5MvsB0Z9XJqxnso/TH2rq1n8qummmpBP+4IhJASEccDqxGSUlNXVV46Pv
 0A9mYAnJ8B3ixJHDEX3E8TpUvKqHJLFJu5irHsae6dIWJZEHLngoQaJRgoPYOGdG
 pLPA7qUT73oywl9l7JpzJiAeqFODC90TLBO0r0xLkZYvthhBOoyTAijrQNu2SnFl
 F8Kffdp2GDupk/+tjZDmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1694772259; x=1694858659; bh=JB3tsA1pXUSR0
 iT5R3DDtvbM9F3caQ2LLSR0vGzb0LI=; b=bqotDaThvkfvZlfzzXsN3ZYmEkAAa
 d7Pl7m1BuSdeImGIbetCUW05SLCMFUv91rxM7/VNVWDa5rrDcvPT3wFXdl/dNlzj
 RNtQO7aaaT5EGmdsSbr8NL7Qgv3QIq48L5SsUWREPAps5VPRyrzFsPgOSCEl47TI
 lVgnEVk+QwtZVoBfvmdx4oKMEaNrFj2EYlPZea0giapf13oAytnCCmnFeRPA4ckS
 WCQmOv9breGEqBiBzCtpvzyfjbCib9KYrH13dp6Bnz1oqExutlDHf0qBlkyg02ig
 gVUmW/2lqgMVQe4tNO9Q43g7fPcAxtP2QawedkIUspnjkLytZt29heTmQ==
X-ME-Sender: <xms:IywEZSnztH-5ityxOfsZuWINkxKGWZ4foLWrEVQNiT1rlsxpth_Ouw>
 <xme:IywEZZ16RPJA0Ft---Z5lIuL23YxCF3QPmkufPW7Q7oqy__fDmAJQkWl66Inq1ieu
 ZMUvQwXAOSHGZQ4oJA>
X-ME-Received: <xmr:IywEZQqbbdPrDlDaYizHdwRlxKJrT55sgo_CyQEr8VDYj250qX1Gsf3kXeXo9gilibLoYM4RDVbFel_b1gLzdwLBpabH4b58jg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudejvddgvddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeuffevveeufedtlefhjeei
 ieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:IywEZWlrEV3hd3MkH6lyKneG5_WCxGx7JAsVroyG7TK9poEoj32BoA>
 <xmx:IywEZQ3W-pWUF7Ffv7TpSYcbvdWwiNqgPpBIBw77zcwPrwLCgnB7DQ>
 <xmx:IywEZdtt_1K0gqHTDR-IvWy6Yyf6iL8OoR2e07DHwJjkZm2zCuGi9g>
 <xmx:IywEZd8aeamEfyJgsFt6Uuvih0GJTAXiuEbuJRy3AcZJ1FnUYQCfgQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 15 Sep 2023 06:04:18 -0400 (EDT)
Date: Fri, 15 Sep 2023 19:04:16 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH] firewire: core: obsolete usage of GFP_ATOMIC at building
 node tree
Message-ID: <20230915100416.GB140388@workstation.local>
Mail-Followup-To: John Ogness <john.ogness@linutronix.de>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20230604070255.172700-1-o-takashi@sakamocchi.jp>
 <87jzsuv1xk.fsf@jogness.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87jzsuv1xk.fsf@jogness.linutronix.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Sep 13, 2023 at 11:54:39AM +0206, John Ogness
 wrote: > On 2023-06-04, Takashi Sakamoto <o-takashi@sakamocchi.jp> wrote:
 > > The flag of GFP_ATOMIC is given to the call of kmalloc when building [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.21 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qh5wW-0007VH-5D
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Wed, Sep 13, 2023 at 11:54:39AM +0206, John Ogness wrote:
> On 2023-06-04, Takashi Sakamoto <o-takashi@sakamocchi.jp> wrote:
> > The flag of GFP_ATOMIC is given to the call of kmalloc when building node
> > tree, but the call is not atomic context. The call of
> > fw_core_handle_bus_reset() and fw_core_remove_card() builds the tree,
> > while they are done in specific workqueue or pci remove callback.
> 
> The comment is incorrect about not being in atomic
> context. fw_core_handle_bus_reset() calls build_tree() with the
> card->lock spinlock held. With 6.6-rc1 I see:

Thanks for your report. Just now I sent fixes to Linus for 6.6-rc1. It is
expected to apply it to stable 6.5 kernel as well.

> [   12.555784] BUG: sleeping function called from invalid context at include/linux/sched/mm.h:306
> [   12.555808] in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid: 70, name: kworker/1:2
> [   12.555814] preempt_count: 1, expected: 0
> [   12.555820] INFO: lockdep is turned off.
> [   12.555824] irq event stamp: 208
> [   12.555828] hardirqs last  enabled at (207): [<c00000000111e414>] ._raw_spin_unlock_irq+0x44/0x80
> [   12.555850] hardirqs last disabled at (208): [<c00000000110ff94>] .__schedule+0x854/0xfe0
> [   12.555859] softirqs last  enabled at (188): [<c000000000f73504>] .addrconf_verify_rtnl+0x2c4/0xb70
> [   12.555872] softirqs last disabled at (182): [<c000000000f732b0>] .addrconf_verify_rtnl+0x70/0xb70
> [   12.555884] CPU: 1 PID: 70 Comm: kworker/1:2 Tainted: G S                 6.6.0-rc1 #1
> [   12.555893] Hardware name: PowerMac7,2 PPC970 0x390202 PowerMac
> [   12.555898] Workqueue: firewire_ohci .bus_reset_work [firewire_ohci]
> [   12.555939] Call Trace:
> [   12.555944] [c000000009677830] [c0000000010d83c0] .dump_stack_lvl+0x8c/0xd0 (unreliable)
> [   12.555963] [c0000000096778b0] [c000000000140270] .__might_resched+0x320/0x340
> [   12.555978] [c000000009677940] [c000000000497600] .__kmem_cache_alloc_node+0x390/0x460
> [   12.555993] [c000000009677a10] [c0000000003fe620] .__kmalloc+0x70/0x310
> [   12.556007] [c000000009677ac0] [c0003d00004e2268] .fw_core_handle_bus_reset+0x2c8/0xba0 [firewire_core]
> [   12.556060] [c000000009677c20] [c0003d0000491190] .bus_reset_work+0x330/0x9b0 [firewire_ohci]
> [   12.556079] [c000000009677d10] [c00000000011d0d0] .process_one_work+0x280/0x6f0
> [   12.556094] [c000000009677e10] [c00000000011d8a0] .worker_thread+0x360/0x500
> [   12.556107] [c000000009677ef0] [c00000000012e3b4] .kthread+0x154/0x160
> [   12.556120] [c000000009677f90] [c00000000000bfa8] .start_kernel_thread+0x10/0x14
> 
> John Ogness


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
