Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GCkK1hdomm12QQAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Sat, 28 Feb 2026 04:13:28 +0100
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5141C0181
	for <lists+linux1394-devel@lfdr.de>; Sat, 28 Feb 2026 04:13:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hBGf6DRWDuTyW5KYqSKDC81u+TCdgd9fS54rxIswU0k=; b=PEHkB/AG7ZU0mQvsVKBNoINlzx
	Pv81YfLn5rMXQs9VVJs3LMf1dGR3VYMIaLVQ5/AYfS71Mgn6K7LR17xQNLSzZkN7qd8cK7uhbbOw+
	dvQrhKR5ZamZ4DNCSY/RFfj4Keb2cOduVf/N/2hjUljI2GC/YY4Ia8s6xUfkYfmvp+Os=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vwAlR-00050b-WD;
	Sat, 28 Feb 2026 03:13:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vwAlP-00050Q-Kb
 for linux1394-devel@lists.sourceforge.net;
 Sat, 28 Feb 2026 03:13:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nX23uCFYl/WmrG31VsS6RwS6Icho6TW1O7YgNul3SeA=; b=m7soisr54cUxgEJ8erOMR6TAPG
 x1aFziUpT1+an5c3gHyJ3+edqAFFtPgWwz65MpefJcFjJy5M2kdjbXxnaGekmX1FYdd47A7y4tMlR
 vyCQK0gAFkh7gFN8iKNBMgAKnjfd5pOcFvPX2FvpoZuwINhrvdWRHsvbIdZwNBo2SHRs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nX23uCFYl/WmrG31VsS6RwS6Icho6TW1O7YgNul3SeA=; b=RP6OPUVK60LDOPBZuEpv6LZ68Z
 EHWx7SVvqh/tAJwhNL3BL7Q/R8u+EyAV8f840+QiAEQqj5nD/uR7LVEb9ORFWzawWftEGNgxRraYS
 w6WOVzwjHXFRVFgZWi8ypnaZ0VkGw1mYSnrox8iVJ1RPwk9mmWgKgJja4RBnKpLxy5io=;
Received: from fout-b7-smtp.messagingengine.com ([202.12.124.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vwAlN-0008BE-Aw for linux1394-devel@lists.sourceforge.net;
 Sat, 28 Feb 2026 03:13:07 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id A2D751D000B9;
 Fri, 27 Feb 2026 22:12:58 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Fri, 27 Feb 2026 22:12:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1772248378; x=
 1772334778; bh=nX23uCFYl/WmrG31VsS6RwS6Icho6TW1O7YgNul3SeA=; b=Q
 KTpTnySWUbQ8BDXuVxPCBhJNDtk8/hnNjG6YRKMSH473+4Km2vhCICWXB4l26S3h
 Q67FZl02uTIsE8vvoLppKCY+uQdtBi3bGEzjVI7pXf+ZbFIYI934GG+4IgKsTbU8
 8JvwVF1FKZ07rUp3VQRiWYwLGsserALVALp3xW6r9h6EEGf0fCBWwSMp5DeYJXgZ
 XuHwBpLQMyhFGTh+XiYHBXDYs0Kt/bqd1CbxV7mVRyUpBaBr/xX2E3fwhLIYPZUM
 9Cn/TUDhKiip+w3MAMBDtnMw7AizCIRAHoeeXff3QGaTqsQ1RyKbyU9Ehpdg90h5
 YpiMpiRCmiM8fWl40nKjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1772248378; x=1772334778; bh=nX23uCFYl/WmrG31VsS6RwS6Icho6TW1O7Y
 gNul3SeA=; b=MkEMk44+R3r5GZLslyWwg0UlP17/NDsbnK3rRQnDpJrHRwkoHVQ
 mKsd2Z8MQp3J+yLGlKPBmOu3sA0gR30e15LMxo6msePUsWqyAElgk6X/OYiRwLGF
 CVMhIf1jmlJu3qXB8Qv3gy8co5AgNNHiRgCL7wDc35mRlcFesCREiXc1tK+ebQlS
 4OO2ZQ6nPuO9F6k0/H3IAxIJeKbO8uxeqfgByzpbpglisvDKQgrzCO7xKhwicVIK
 PWufEPimbOZu2QSveg7MNPEv1cl9CiKKvI6H7c/tJnPCLYfa1uHj8MJEoO7CKvJV
 /xPGO0YIYLodA+ELBQ1Ey9nSK11M8L5EH5g==
X-ME-Sender: <xms:Ol2iaWJjQIsX4NcqR2P37TQyq-S5T6gK-IKb9vFxCg51nkjx7lOfXQ>
 <xme:Ol2iaV7g1qbkCGA9txbqDhDsMEOYcGkY4sQ4M_Dr5H27fOcKrQvAfGrOJhNBtKFyq
 zwaNX9iL-sy1QYu8b66JGhuDQ1onnf1lABPcgWuEO1SF2eD_yRhmfo>
X-ME-Received: <xmr:Ol2iaZx3G9xhBf6qF-bcWFdjEN2tLJKUBEZuMkef8lASoCTTrpFNkrEPTUh-XSFXjeBILZJQqX7d0TNxi9Az8DvLXQNU79HcdA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvhedtjeekucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhh
 ihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
 eqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeegieel
 jeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmth
 hpohhuthdprhgtphhtthhopehjohhhnhdrohhgnhgvshhssehlihhnuhhtrhhonhhigidr
 uggvpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouh
 hrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhg
 vghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:Ol2iaZaWifu3Qf-EURLiwB1s0tFDCKmxy6nCes3pdeOvDqz8mjI_mQ>
 <xmx:Ol2iabTr-goUQ4mUVtfzTx6pBP4GtFA0JYv5pzaVHAI7GQlieFSLAw>
 <xmx:Ol2iaTzUuOG1U8eTy2FS8MGGSWQNSL_ivoGDxCKEDokuV2K2KDup_w>
 <xmx:Ol2iaV1TmkfPOEoh0uBfapOPXTkTz8rVnnf2qUSuvdeVdI3ODwmkRg>
 <xmx:Ol2iaadhtVkke08lwhfs50NznXQ2vKipFhuqbWhJglkI_bae5-klPv2x>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 27 Feb 2026 22:12:56 -0500 (EST)
Date: Sat, 28 Feb 2026 12:12:55 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: firewire-ohci: 7.0.0-rc1 warnings+crash
Message-ID: <20260228031255.GA832746@workstation.local>
Mail-Followup-To: John Ogness <john.ogness@linutronix.de>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <87tsv1vig5.fsf@jogness.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tsv1vig5.fsf@jogness.linutronix.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 Thanks for the issue. It reports that the page array passed
 to vmap() includes any entries which have invalid PFN. I realize that the
 page array is passed to page_alloc_bulk() without zero initializat [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [202.12.124.150 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vwAlN-0008BE-Aw
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:john.ogness@linutronix.de,m:linux1394-devel@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux1394-devel];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[workstation.local:mid,sakamocchi.jp:email]
X-Rspamd-Queue-Id: AB5141C0181
X-Rspamd-Action: no action

Hi,

Thanks for the issue. It reports that the page array passed to vmap()
includes any entries which have invalid PFN. I realize that the page
array is passed to page_alloc_bulk() without zero initialization, thus
it could include any garbage values.

Would I ask you to apply the following patch and the issue is still
regenerated or not?

===== 8<- -----
From 0d82ddae99869b231200d5247bbae586bf28274c Mon Sep 17 00:00:00 2001
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Date: Sat, 28 Feb 2026 11:56:03 +0900
Subject: [PATCH] firewire: ohci: initialize page array to use
 alloc_pages_bulk() correctly

The call of alloc_pages_bulk() skips to fill entries of page array when
the entries already have values. While, 1394 OHCI PCI driver passes the
page array without initializing. It could cause invalid state at PFN
validation in vmap().

Fixes: f2ae92780ab9 ("firewire: ohci: split page allocation from dma mapping")
Reported-by: John Ogness <john.ogness@linutronix.de>
Closes: https://lore.kernel.org/lkml/87tsv1vig5.fsf@jogness.linutronix.de/
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 1c868c1e..8153d62c 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -848,7 +848,7 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 {
 	struct device *dev = ohci->card.device;
 	unsigned int i;
-	struct page *pages[AR_BUFFERS + AR_WRAPAROUND_PAGES];
+	struct page *pages[AR_BUFFERS + AR_WRAPAROUND_PAGES] = { NULL };
 	dma_addr_t dma_addrs[AR_BUFFERS];
 	void *vaddr;
 	struct descriptor *d;
-- 
2.51.0
===== 8<- -----


Thanks

Takashi Sakamoto

On Sat, Feb 28, 2026 at 01:13:54AM +0106, John Ogness wrote:
> Hi,
> 
> With 7.0.0-rc1 I am seeing 2 warnings and a crash when loading the
> firewire-ohci module.
> 
> I will not have time to debug this for a couple weeks. But maybe it is
> already obvious to some of the firewire folks.
> 
> This is a ppc64be machine (4k pages).
> 
> John Ogness
> 
> Following is the kernel log when running:
> 
> # insmod ./firewire-ohci.ko
> 
> [   71.072914][ T1781] firewire_ohci 0001:03:0e.0: enabling device (0000 -> 0002)
> [   71.075242][ T1781] ------------[ cut here ]------------
> [   71.075439][ T1781] WARNING: [] mm/vmalloc.c:554 at .vmap_small_pages_range_noflush+0x354/0x558, CPU#0: insmod/1781
> [   71.075696][ T1781] Modules linked in: firewire_ohci(+) firewire_core netconsole 8021q garp stp mrp llc nouveau drm_ttm_helper ttm gpu_sched drm_client_lib i2c_algo_bit drm_display_helper drm_kms_helper drm_gpuvm drm_exec drm drm_panel_orientation_quirks windfarm_smu_sat binfmt_misc b43 rng_core cordic bcma mac80211 libarc4 windfarm_cpufreq_clamp cfg80211 snd_aoa_codec_tas snd_aoa_fabric_layout windfarm_pm72 snd_aoa windfarm_pid rfkill windfarm_max6690_sensor windfarm_fcu_controls windfarm_ad7417_sensor windfarm_lm75_sensor windfarm_core snd_aoa_i2sbus snd_aoa_soundbus snd_pcm joydev mousedev snd_timer mac_hid ssb snd soundcore rack_meter mmc_core uninorth_agp agpgart
> [   71.094003][ T1781] CPU: 0 UID: 0 PID: 1781 Comm: insmod Not tainted 7.0.0-rc1 #2 PREEMPT 
> [   71.097990][ T1781] Hardware name: PowerMac7,2 PPC970 0x390202 PowerMac
> [   71.102043][ T1781] NIP:  c00000000052e074 LR: c00000000052e128 CTR: c00000000bd7c880
> [   71.106208][ T1781] REGS: c00000000dee6a10 TRAP: 0700   Not tainted  (7.0.0-rc1)
> [   71.110505][ T1781] MSR:  900000000202b032 <SF,HV,VEC,EE,FP,ME,IR,DR,RI>  CR: 84008448  XER: 20000000
> [   71.115002][ T1781] IRQMASK: 0 
> [   71.115002][ T1781] GPR00: c00000000052e128 c00000000dee6cb0 c000000001b7f100 ffffff04002a72e6 
> [   71.115002][ T1781] GPR04: c00000000052e128 c0003d00015eafff ffffffffffffffff ffffffffffffffff 
> [   71.115002][ T1781] GPR08: 0000000000000000 000fff04002a72e6 0000000000000000 0000000000000003 
> [   71.115002][ T1781] GPR12: 0000000024008442 c000000003ca5000 c0003d00015e1000 c00000000a9cb988 
> [   71.115002][ T1781] GPR16: c000000002da2dc0 c00000000c7eaf08 c00000000dee6f48 ee1fffffffffffbf 
> [   71.115002][ T1781] GPR20: c000000004042000 800000000000018e c000000002b82d80 c0003d00015eb000 
> [   71.115002][ T1781] GPR24: c000000002da2e58 0000000000000001 0000000000000001 c0003d00015eafff 
> [   71.115002][ T1781] GPR28: c00000000a415b80 0000000000000000 c0003d00015eb000 c00000000403f050 
> [   71.156263][ T1781] NIP [c00000000052e074] .vmap_small_pages_range_noflush+0x354/0x558
> [   71.160879][ T1781] LR [c00000000052e128] .vmap_small_pages_range_noflush+0x408/0x558
> [   71.165656][ T1781] Call Trace:
> [   71.170546][ T1781] [c00000000dee6cb0] [c00000000052e128] .vmap_small_pages_range_noflush+0x408/0x558 (unreliable)
> [   71.175967][ T1781] [c00000000dee6de0] [c0000000005357d0] .vmap+0xd4/0x1a8
> [   71.181890][ T1781] [c00000000dee6e90] [c0003d00010f1e64] .ar_context_init+0xfc/0x38c [firewire_ohci]
> [   71.187978][ T1781] [c00000000dee6fe0] [c0003d00010f5378] .pci_probe+0x25c/0x8c0 [firewire_ohci]
> [   71.194098][ T1781] [c00000000dee70b0] [c000000000c6ad64] .pci_device_probe+0x108/0x26c
> [   71.200284][ T1781] [c00000000dee7140] [c000000000d5ecc8] .really_probe+0x110/0x564
> [   71.206420][ T1781] [c00000000dee71e0] [c000000000d5f1c8] .__driver_probe_device+0xac/0x1ec
> [   71.212222][ T1781] [c00000000dee7270] [c000000000d5f468] .driver_probe_device+0x5c/0x120
> [   71.217586][ T1781] [c00000000dee7300] [c000000000d5f928] .__driver_attach+0x1e8/0x384
> [   71.222495][ T1781] [c00000000dee7390] [c000000000d5b3c8] .bus_for_each_dev+0xac/0x12c
> [   71.227382][ T1781] [c00000000dee7440] [c000000000d5e274] .driver_attach+0x34/0x4c
> [   71.232111][ T1781] [c00000000dee74c0] [c000000000d5d5b8] .bus_add_driver+0x2a0/0x334
> [   71.236656][ T1781] [c00000000dee7560] [c000000000d60d8c] .driver_register+0x84/0x1b8
> [   71.241063][ T1781] [c00000000dee75e0] [c000000000c698e4] .__pci_register_driver+0x8c/0xac
> [   71.245385][ T1781] [c00000000dee7670] [c0003d00010f6ea4] .fw_ohci_init+0x30/0x44 [firewire_ohci]
> [   71.249706][ T1781] [c00000000dee76e0] [c00000000000ef58] .do_one_initcall+0x8c/0x5d4
> [   71.254172][ T1781] [c00000000dee77e0] [c00000000021aae4] .do_init_module+0x70/0x33c
> [   71.258857][ T1781] [c00000000dee7870] [c00000000021de5c] .init_module_from_file+0x110/0x134
> [   71.263662][ T1781] [c00000000dee79a0] [c00000000021e0ec] .idempotent_init_module+0x26c/0x34c
> [   71.268466][ T1781] [c00000000dee7af0] [c00000000021e270] .__se_sys_finit_module+0xa4/0x188
> [   71.273142][ T1781] [c00000000dee7ba0] [c00000000002b73c] .system_call_exception+0x16c/0x280
> [   71.277757][ T1781] [c00000000dee7e10] [c00000000000b754] system_call_common+0xf4/0x258
> [   71.282285][ T1781] ---- interrupt: c00 at 0x3fff90945174
> [   71.286856][ T1781] NIP:  00003fff90945174 LR: 0000000117b6d338 CTR: 0000000000000000
> [   71.291455][ T1781] REGS: c00000000dee7e80 TRAP: 0c00   Not tainted  (7.0.0-rc1)
> [   71.296087][ T1781] MSR:  900000000200f032 <SF,HV,VEC,EE,PR,FP,ME,IR,DR,RI>  CR: 20000202  XER: 00000000
> [   71.300895][ T1781] IRQMASK: 0 
> [   71.300895][ T1781] GPR00: 0000000000000161 00003ffff63304b0 00003fff909f0e00 0000000000000003 
> [   71.300895][ T1781] GPR04: 0000000117b7a6f8 0000000000000000 0000000000000000 0000000000000000 
> [   71.300895][ T1781] GPR08: 0000000000000000 0000000000000000 0000000000000000 0000000000000000 
> [   71.300895][ T1781] GPR12: 0000000000000000 00003fff909f2d28 0000000000000000 0000000000000000 
> [   71.300895][ T1781] GPR16: 0000000000000000 0000000000000000 0000000000000000 0000000080000000 
> [   71.300895][ T1781] GPR20: 0000000000000001 0000000000000000 0000000000000000 00003ffff63317c4 
> [   71.300895][ T1781] GPR24: 00003ffff6330800 0000000117b7b788 00003fff907ee870 0000000117b7a6f8 
> [   71.300895][ T1781] GPR28: 0000000000000000 0000000000000000 00003fff907eef50 00003ffff63304b0 
> [   71.339126][ T1781] NIP [00003fff90945174] 0x3fff90945174
> [   71.342757][ T1781] LR [0000000117b6d338] 0x117b6d338
> [   71.346372][ T1781] ---- interrupt: c00
> [   71.349938][ T1781] Code: 7929d182 0b090000 2c2f0000 4182ffd0 3d220122 3a093cc0 e9300000 7d297850 7d233674 7929d302 7c234800 41820010 <0fe00000> 4bfff661 4bffffb4 4bfff969 
> [   71.357572][ T1781] irq event stamp: 0
> [   71.361401][ T1781] hardirqs last  enabled at (0): [<0000000000000000>] 0x0
> [   71.365343][ T1781] hardirqs last disabled at (0): [<c0000000000e938c>] .copy_process+0x9e4/0x2128
> [   71.369291][ T1781] softirqs last  enabled at (0): [<c0000000000e938c>] .copy_process+0x9e4/0x2128
> [   71.373188][ T1781] softirqs last disabled at (0): [<0000000000000000>] 0x0
> [   71.377087][ T1781] ---[ end trace 0000000000000000 ]---
> [   71.393853][ T1781] ------------[ cut here ]------------
> [   71.397878][ T1781] WARNING: [(unsigned long)v & mask] include/linux/instrumented.h:67 at .folios_put_refs+0x118/0x248, CPU#1: insmod/1781
> [   71.406168][ T1781] Modules linked in: firewire_ohci(+) firewire_core netconsole 8021q garp stp mrp llc nouveau drm_ttm_helper ttm gpu_sched drm_client_lib i2c_algo_bit drm_display_helper drm_kms_helper drm_gpuvm drm_exec drm drm_panel_orientation_quirks windfarm_smu_sat binfmt_misc b43 rng_core cordic bcma mac80211 libarc4 windfarm_cpufreq_clamp cfg80211 snd_aoa_codec_tas snd_aoa_fabric_layout windfarm_pm72 snd_aoa windfarm_pid rfkill windfarm_max6690_sensor windfarm_fcu_controls windfarm_ad7417_sensor windfarm_lm75_sensor windfarm_core snd_aoa_i2sbus snd_aoa_soundbus snd_pcm joydev mousedev snd_timer mac_hid ssb snd soundcore rack_meter mmc_core uninorth_agp agpgart
> [   71.433394][ T1781] CPU: 1 UID: 0 PID: 1781 Comm: insmod Tainted: G        W           7.0.0-rc1 #2 PREEMPT 
> [   71.437972][ T1781] Tainted: [W]=WARN
> [   71.442535][ T1781] Hardware name: PowerMac7,2 PPC970 0x390202 PowerMac
> [   71.447736][ T1781] NIP:  c0000000004a64a4 LR: c0000000004a69ec CTR: c0000000004a688c
> [   71.453273][ T1781] REGS: c00000000dee6910 TRAP: 0700   Tainted: G        W            (7.0.0-rc1)
> [   71.459350][ T1781] MSR:  900000000202b032 <SF,HV,VEC,EE,FP,ME,IR,DR,RI>  CR: 44008842  XER: 20000000
> [   71.465678][ T1781] IRQMASK: 0 
> [   71.465678][ T1781] GPR00: c0000000004a69ec c00000000dee6bb0 c000000001b7f100 c00000000dee6d68 
> [   71.465678][ T1781] GPR04: c00000000dee6cec c00000000dee6e70 c000000007295238 0000000000000007 
> [   71.465678][ T1781] GPR08: 0000000000000000 0000000000000001 0000a2f612000042 c0003d00010f7508 
> [   71.465678][ T1781] GPR12: 0000000044008842 c00000000ffff700 0000000000000000 0000000000000000 
> [   71.465678][ T1781] GPR16: 0000000000000000 0000000000000000 0000000000000000 0000000080000000 
> [   71.465678][ T1781] GPR20: 0000000000000001 0000000000000000 0000000000000000 c0000000038b1bb0 
> [   71.465678][ T1781] GPR24: 0000000000000000 c0003d000126a348 c00000000dee6cec 0000000000000000 
> [   71.465678][ T1781] GPR28: c00000000dee6d68 ffffffff815f0997 0000000000000006 0000a2f61200000e 
> [   71.521625][ T1781] NIP [c0000000004a64a4] .folios_put_refs+0x118/0x248
> [   71.526860][ T1781] LR [c0000000004a69ec] .release_pages+0x160/0x17c
> [   71.531889][ T1781] Call Trace:
> [   71.536976][ T1781] [c00000000dee6bb0] [c0000001ff9b2808] 0xc0000001ff9b2808 (unreliable)
> [   71.542101][ T1781] [c00000000dee6c70] [c0000000004a69ec] .release_pages+0x160/0x17c
> [   71.752192][ T1781] BUG: Unable to handle kernel data access at 0xa2f612000042
> [   71.756852][ T1781] Faulting instruction address: 0xc0000000004a6418
> [   71.761078][ T1781] Oops: Kernel access of bad area, sig: 11 [#1]
> [   71.765026][ T1781] BE PAGE_SIZE=4K MMU=Hash  SMP NR_CPUS=2 PowerMac
> [   71.769033][ T1781] Modules linked in: firewire_ohci(+) firewire_core netconsole 8021q garp stp mrp llc nouveau drm_ttm_helper ttm gpu_sched drm_client_lib i2c_algo_bit drm_display_helper drm_kms_helper drm_gpuvm drm_exec drm drm_panel_orientation_quirks windfarm_smu_sat binfmt_misc b43 rng_core cordic bcma mac80211 libarc4 windfarm_cpufreq_clamp cfg80211 snd_aoa_codec_tas snd_aoa_fabric_layout windfarm_pm72 snd_aoa windfarm_pid rfkill windfarm_max6690_sensor windfarm_fcu_controls windfarm_ad7417_sensor windfarm_lm75_sensor windfarm_core snd_aoa_i2sbus snd_aoa_soundbus snd_pcm joydev mousedev snd_timer mac_hid ssb snd soundcore rack_meter mmc_core uninorth_agp agpgart
> [   71.795478][ T1781] CPU: 1 UID: 0 PID: 1781 Comm: insmod Tainted: G        W           7.0.0-rc1 #2 PREEMPT 
> [   71.800475][ T1781] Tainted: [W]=WARN
> [   71.805735][ T1781] Hardware name: PowerMac7,2 PPC970 0x390202 PowerMac
> [   71.811373][ T1781] NIP:  c0000000004a6418 LR: c0000000004a69ec CTR: c0000000004a688c
> [   71.817080][ T1781] REGS: c00000000dee6910 TRAP: 0380   Tainted: G        W            (7.0.0-rc1)
> [   71.822893][ T1781] MSR:  900000000200b032 <SF,HV,VEC,EE,FP,ME,IR,DR,RI>  CR: 44008842  XER: 20000000
> [   71.828920][ T1781] IRQMASK: 0 
> [   71.828920][ T1781] GPR00: c0000000004a69ec c00000000dee6bb0 c000000001b7f100 c00000000dee6d68 
> [   71.828920][ T1781] GPR04: c00000000dee6cec c00000000dee6e70 c000000007295238 0000000000000007 
> [   71.828920][ T1781] GPR08: 0000000000000000 0000000000000001 0000a2f612000042 c0003d00010f7508 
> [   71.828920][ T1781] GPR12: 0000000044008842 c00000000ffff700 0000000000000000 0000000000000000 
> [   71.828920][ T1781] GPR16: 0000000000000000 0000000000000000 0000000000000000 0000000080000000 
> [   71.828920][ T1781] GPR20: 0000000000000001 0000000000000000 0000000000000000 c0000000038b1bb0 
> [   71.828920][ T1781] GPR24: 0000000000000000 c0003d000126a348 c00000000dee6cec 0000000000000000 
> [   71.828920][ T1781] GPR28: c00000000dee6d68 ffffffff815f0997 0000000000000006 0000a2f61200000e 
> [   71.876903][ T1781] NIP [c0000000004a6418] .folios_put_refs+0x8c/0x248
> [   71.881518][ T1781] LR [c0000000004a69ec] .release_pages+0x160/0x17c
> [   71.886162][ T1781] Call Trace:
> [   71.890705][ T1781] [c00000000dee6bb0] [c0000001ff9b2808] 0xc0000001ff9b2808 (unreliable)
> [   71.895389][ T1781] [c00000000dee6c70] [c0000000004a69ec] .release_pages+0x160/0x17c
> [   71.900095][ T1781] [c00000000dee6e90] [c0003d00010f20d0] .ar_context_init+0x368/0x38c [firewire_ohci]
> [   71.904914][ T1781] [c00000000dee6fe0] [c0003d00010f5378] .pci_probe+0x25c/0x8c0 [firewire_ohci]
> [   71.909699][ T1781] [c00000000dee70b0] [c000000000c6ad64] .pci_device_probe+0x108/0x26c
> [   71.914467][ T1781] [c00000000dee7140] [c000000000d5ecc8] .really_probe+0x110/0x564
> [   71.919165][ T1781] [c00000000dee71e0] [c000000000d5f1c8] .__driver_probe_device+0xac/0x1ec
> [   71.923876][ T1781] [c00000000dee7270] [c000000000d5f468] .driver_probe_device+0x5c/0x120
> [   71.928536][ T1781] [c00000000dee7300] [c000000000d5f928] .__driver_attach+0x1e8/0x384
> [   71.933089][ T1781] [c00000000dee7390] [c000000000d5b3c8] .bus_for_each_dev+0xac/0x12c
> [   71.937524][ T1781] [c00000000dee7440] [c000000000d5e274] .driver_attach+0x34/0x4c
> [   71.941789][ T1781] [c00000000dee74c0] [c000000000d5d5b8] .bus_add_driver+0x2a0/0x334
> [   71.945940][ T1781] [c00000000dee7560] [c000000000d60d8c] .driver_register+0x84/0x1b8
> [   71.949921][ T1781] [c00000000dee75e0] [c000000000c698e4] .__pci_register_driver+0x8c/0xac
> [   71.953800][ T1781] [c00000000dee7670] [c0003d00010f6ea4] .fw_ohci_init+0x30/0x44 [firewire_ohci]
> [   71.957583][ T1781] [c00000000dee76e0] [c00000000000ef58] .do_one_initcall+0x8c/0x5d4
> [   71.961314][ T1781] [c00000000dee77e0] [c00000000021aae4] .do_init_module+0x70/0x33c
> [   71.965033][ T1781] [c00000000dee7870] [c00000000021de5c] .init_module_from_file+0x110/0x134
> [   71.968674][ T1781] [c00000000dee79a0] [c00000000021e0ec] .idempotent_init_module+0x26c/0x34c
> [   71.972301][ T1781] [c00000000dee7af0] [c00000000021e270] .__se_sys_finit_module+0xa4/0x188
> [   71.975866][ T1781] [c00000000dee7ba0] [c00000000002b73c] .system_call_exception+0x16c/0x280
> [   71.979337][ T1781] [c00000000dee7e10] [c00000000000b754] system_call_common+0xf4/0x258
> [   71.982732][ T1781] ---- interrupt: c00 at 0x3fff90945174
> [   71.986164][ T1781] NIP:  00003fff90945174 LR: 0000000117b6d338 CTR: 0000000000000000
> [   71.989622][ T1781] REGS: c00000000dee7e80 TRAP: 0c00   Tainted: G        W            (7.0.0-rc1)
> [   71.993162][ T1781] MSR:  900000000200f032 <SF,HV,VEC,EE,PR,FP,ME,IR,DR,RI>  CR: 20000202  XER: 00000000
> [   71.996866][ T1781] IRQMASK: 0 
> [   71.996866][ T1781] GPR00: 0000000000000161 00003ffff63304b0 00003fff909f0e00 0000000000000003 
> [   71.996866][ T1781] GPR04: 0000000117b7a6f8 0000000000000000 0000000000000000 0000000000000000 
> [   71.996866][ T1781] GPR08: 0000000000000000 0000000000000000 0000000000000000 0000000000000000 
> [   71.996866][ T1781] GPR12: 0000000000000000 00003fff909f2d28 0000000000000000 0000000000000000 
> [   71.996866][ T1781] GPR16: 0000000000000000 0000000000000000 0000000000000000 0000000080000000 
> [   71.996866][ T1781] GPR20: 0000000000000001 0000000000000000 0000000000000000 00003ffff63317c4 
> [   71.996866][ T1781] GPR24: 00003ffff6330800 0000000117b7b788 00003fff907ee870 0000000117b7a6f8 
> [   71.996866][ T1781] GPR28: 0000000000000000 0000000000000000 00003fff907eef50 00003ffff63304b0 
> [   72.029204][ T1781] NIP [00003fff90945174] 0x3fff90945174
> [   72.032647][ T1781] LR [0000000117b6d338] 0x117b6d338
> [   72.036099][ T1781] ---- interrupt: c00
> [   72.039484][ T1781] Code: 3bc00000 fba100a8 fbe100b8 3b600000 48000088 60000000 73ea0003 7bc91764 395f0034 7d3a4aaa 40820094 7c0004ac <7fa05028> 7fa9e810 7fa0512d 40c2fff4 
> [   72.046718][ T1781] ---[ end trace 0000000000000000 ]---
> [   72.050575][ T1781] 
> [   73.044412][ T1781] Kernel panic - not syncing: Fatal exception
> [   73.047957][ T1781] ---[ end Kernel panic - not syncing: Fatal exception ]---


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
