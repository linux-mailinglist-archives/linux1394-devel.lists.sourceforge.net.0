Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCC7C5D946
	for <lists+linux1394-devel@lfdr.de>; Fri, 14 Nov 2025 15:28:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P+6xjaaP3ORnB8HZHrQ3NBBjrY2Rxxw7WaV4NytIFv8=; b=GsUZ2mkAaYZAesNTZlainmce5m
	rlqN5/wG5miPzA6Mg9nsq0nrgCAbswH94CQGIdpH2kADx/NubeveyA++fJ/o6ZNspsOuOXYfMr6lx
	CXqdBCnlmtUFEhKRrSbe0CxhMDS9j2JnbSgHiU7oRxibkS1eKActzM/n/ELqX0r6fISs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vJumO-0004Dy-1N;
	Fri, 14 Nov 2025 14:28:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vJumM-0004Di-Kx
 for linux1394-devel@lists.sourceforge.net;
 Fri, 14 Nov 2025 14:27:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0cM7IujgnwsJSbghUM3WZkZ7rI5ecX5HGs/eIHuT60Q=; b=XwbihNEHogFq4GaCKhWtfChRzA
 PKXd6L1so54kcDdoowzznxeeFRWN66nCxnMCmJbFbV4TJ4zJ+i41KCL7do+fd+0pn+fuzg06aHV7G
 EFriP0kBA2lHYQ1sS/gt2ukuzUG3wwutviNZkXfa0DKqsJfQ+D7JY95TPQSZ/4qUdccc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0cM7IujgnwsJSbghUM3WZkZ7rI5ecX5HGs/eIHuT60Q=; b=mJUO3pFDRNLkDaGsYS4zk6fc4z
 nA4UkosVcV8K/dOKdnu/J1JoB9E+sPxNautQYG8XDe6DOWp3fBHzAxybzILAFFrMqjpWHa3ai1D1U
 we8XeIslxDAy/szF4UpSNx47zMCc2U/XqBafOsBzMLRqT9/DiH+UlF8oe4dO1/yWo6GU=;
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJumM-0006Ya-Kg for linux1394-devel@lists.sourceforge.net;
 Fri, 14 Nov 2025 14:27:59 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id DCD501D001B1;
 Fri, 14 Nov 2025 09:27:52 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Fri, 14 Nov 2025 09:27:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm3;
 t=1763130472; x=1763216872; bh=0cM7IujgnwsJSbghUM3WZkZ7rI5ecX5H
 Gs/eIHuT60Q=; b=MkqGuGbjuVeiNg9+b6syB0Hy7N1XtCL7KdxGX44o8nPN+01c
 GiZpy3yK0xQ566gCe7QC2ylnKpTY9mhs3bfQQP8mriNCMBYb/3LuMi8cDEJGuRp2
 4pWg/VDIaMrQD+BFhVTg7gUAQo8dbkIk3KOWdCjpsbjWiZbW3BSMVRpgB0yxamUF
 SfikM6FcAERyXBFqSK2Pi5WYqBxM1RaQrt6PD3GWpqtApntdtlXYD6EbvjamaU4O
 mUWBOyyScGJ/UaZ36hkfICn7VDtmNIBr4+UVnmd/FDz67RH0d3M97nLf95GKPPLP
 8NEF2DS4w0xS1zVCK5HWH2T2MpirmiKinT12zw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1763130472; x=
 1763216872; bh=0cM7IujgnwsJSbghUM3WZkZ7rI5ecX5HGs/eIHuT60Q=; b=Z
 SSjquSyt+EThPTao5v5jkRncEsFoi8REkgJQqzyVpl7BqhcPergWmeggcz7NCNfN
 Obd5v0is7F8H26ZGFszcLskalHuszn1a0VZrWDoVy0So2Bu1qipLLMCnDanQamgs
 c5iD7FPnYGW4696cc/TusJte9NThkVhQFT/akNAsl8zx5aTM4MTC6TaoqNAnqAtT
 3VpkISZysut4uzV5RE3foScb2GuUmhCzbg4DVMG2GK9wW7X1xY/O2Eoqh/kii8hI
 3IrE+Mfy494BRLQTedeFMq0OvUlx9nzvcFsUbmNG8uH73F6CGvIVmyTrbIGC2ew2
 2frTBvnOFlbJiPVrFm3Ag==
X-ME-Sender: <xms:aDwXaco_c3PMR4a6KV5P3so092H4LPe43YnxzTofsCcB9DzaquCI_Q>
 <xme:aDwXaaYoZJa1IMGP5KTBySkp370fOMO7Q7RfVGcJVvpdu7w66eagA8wZSoVMGzy-a
 rAE0UclR50wmKCZQqIKOcfT1y6TJ_Yh8ixoJcp_8TUtJKknr_Swbw>
X-ME-Received: <xmr:aDwXaUTuk9xKFwMC5RbYoYrTnp66paS-YZsbKFh8hg4ZkiYMvScwB0DOs4HrwKNRhU67uzZRKHp-06OmEXBfUDBqVvDekNZXeD4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvuddttdeiucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepfffhvfevuffkfhggtggugfgjsehtkeertddttddunecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeegjeetkefhjeetieffleelffehgfeiffekhfelueej
 ffekieeuvdeigeefffeileenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmh
 htphhouhhtpdhrtghpthhtohepvhhilhhlvgdrshihrhhjrghlrgeslhhinhhugidrihhn
 thgvlhdrtghomhdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsth
 hsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtohepvghrhhgrrhgupghfsehm
 rghilhgsohigrdhorhhg
X-ME-Proxy: <xmx:aDwXaR4MT3yL34_bPddvOBg76jKep4cOEBATKuv1PUSCfawiRd3VPQ>
 <xmx:aDwXaZwmBpAkJ7lb4UTLOhtDXLganbCehe0dFU0O9JLoooi5n7o-aA>
 <xmx:aDwXaQRZTRyOhG1idP6qXMIW8vDpC6e_lf1tKDCPqKfKuQvNRZH9ZQ>
 <xmx:aDwXaYWMgoArDaVmPVVK-hEzq7AntsddzilZuwgAYKklCJkkNvrN1g>
 <xmx:aDwXaZpx634YW4R0wuIYLlKss43z-hiZQoK5z8zeYwumdLe0nacN8gA5>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 14 Nov 2025 09:27:51 -0500 (EST)
Date: Fri, 14 Nov 2025 23:27:48 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] firewire: core: Initialize topology_map.lock
Message-ID: <20251114142748.GA387443@workstation.local>
Mail-Followup-To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 linux1394-devel@lists.sourceforge.net,
 Erhard Furtner <erhard_f@mailbox.org>
References: <20251113222531.15184-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113222531.15184-1-ville.syrjala@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, Thanks for your sending the patch. I completely overlooked
    the lack of initialization... Your patch fixes the same issue reported by
    Erhard Furtner[1]. On Fri, Nov 14, 2025 at 12:25:31AM +0200, Ville Syrjala
    wrote: > From: Ville Syrjälä <ville.syrjala@linux.intel.com> > > Lockdep
    barfs on the new uninitialized spinlock. > Initialize it. > > protip: [...]
    
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1vJumM-0006Ya-Kg
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
Cc: Erhard Furtner <erhard_f@mailbox.org>,
 linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Thanks for your sending the patch. I completely overlooked the lack of
initialization... Your patch fixes the same issue reported by Erhard
Furtner[1].

On Fri, Nov 14, 2025 at 12:25:31AM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Lockdep barfs on the new uninitialized spinlock.
> Initialize it.
> =

> protip: enable lockdep (CONFIG_PROVE_LOCKING=3Dy) when
>         doing locking changes
> =

> firewire_ohci 0000:02:01.1: added OHCI v1.10 device as card 0, 4 IR + 4 I=
T contexts, quirks 0x11
> INFO: trying to register non-static key.
> The code is fine but needs lockdep annotation, or maybe
> you didn't initialize this object before use?
> turning off the locking correctness validator.
> CPU: 0 UID: 0 PID: 1042 Comm: irq/17-firewire Not tainted 6.17.0-rc2-cl-b=
isect2-00026-g7d138cb269db #136 PREEMPT
> Hardware name: Dell Inc. Latitude E5400                  /0D695C, BIOS A1=
9 06/13/2013
> Call Trace:
>  <TASK>
>  dump_stack_lvl+0x6d/0xa0
>  register_lock_class+0x783/0x790
>  ? find_held_lock+0x2b/0x80
>  ? __mod_timer+0x110/0x320
>  ? __mod_timer+0x110/0x320
>  __lock_acquire+0x405/0x2600
>  lock_acquire+0xca/0x2e0
>  ? fw_core_handle_bus_reset+0x888/0xca0 [firewire_core]
>  ? fw_core_handle_bus_reset+0x878/0xca0 [firewire_core]
>  ? fw_core_handle_bus_reset+0x878/0xca0 [firewire_core]
>  _raw_spin_lock+0x2e/0x40
>  ? fw_core_handle_bus_reset+0x888/0xca0 [firewire_core]
>  fw_core_handle_bus_reset+0x888/0xca0 [firewire_core]
>  handle_selfid_complete_event+0x35c/0x7a0 [firewire_ohci]
>  ? irq_thread+0x8d/0x280
>  irq_thread_fn+0x18/0x50
>  irq_thread+0x15a/0x280
>  ? irq_check_status_bit+0x100/0x100
>  ? lockdep_hardirqs_on+0x78/0x100
>  ? irq_finalize_oneshot.part.0+0xc0/0xc0
>  ? irq_forced_thread_fn+0x60/0x60
>  kthread+0x114/0x200
>  ? kthreads_online_cpu+0x110/0x110
>  ret_from_fork+0x158/0x1e0
>  ? kthreads_online_cpu+0x110/0x110
>  ret_from_fork_asm+0x11/0x20
>  </TASK>
> =

> Cc: linux1394-devel@lists.sourceforge.net
> Cc: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> Fixes: 7d138cb269db ("firewire: core: use spin lock specific to topology =
map")
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/firewire/core-card.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied to for-linus branch. I will send it to upstream as a part of
fixes for v6.18-rc6 kernel.

[1] https://lore.kernel.org/lkml/992eaf94-6fbb-4611-9a29-2db2e2148965@mailb=
ox.org/


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
