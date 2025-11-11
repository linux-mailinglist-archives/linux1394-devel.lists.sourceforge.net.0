Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE41C4EA70
	for <lists+linux1394-devel@lfdr.de>; Tue, 11 Nov 2025 16:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GI1DZGfAdMPQ5z4YhSl/+VihqTIBFpmIOoTXXPHnojE=; b=IGj3l8mQ1vfknw8Ug/gICC/exH
	xQDsVKVlpc2q+ZfM2evNK1BpfHQs/VhS4urrCQF7tHeQBhkTL2jz/l7Vq6uOaZ02yzrYBO227QmiW
	TrZq0u2g6pXTTlgtqX8N0fPlJL2TJVR8BHoPHq7boiV80uLvgpRP3b+Sn/X7sP1WCsb8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vIprX-0002DL-FF;
	Tue, 11 Nov 2025 15:00:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vIprU-0002Cu-6U
 for linux1394-devel@lists.sourceforge.net;
 Tue, 11 Nov 2025 15:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uc42wYO24N0tTLrcJ5MgHi4Jtgg5HaJEdp9QGfoeIbQ=; b=C8WiTcLhR9DTHIXLNTGCZVvUTH
 6eY7viDWvLYR3lQq8obpAD6Uw9HbKYWYvtwiU35aCGO6uqzD6loyu3/OS7YP6L3oVScc5cKoVLjVo
 ctd2tTemAMJBu6lTYC8PSP2DhLHUv5aXYjEDmsoQJueBZyPavpq3ivbwMWUiUNyUe1o8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uc42wYO24N0tTLrcJ5MgHi4Jtgg5HaJEdp9QGfoeIbQ=; b=ViJoX0cxPNwtuKOnqjIaLOV4gw
 n15MJrcVWZCvsXClmafdtwnALNN+nsQNCkKyMNfoP6uUNF5BkhpvORoo+Hj40c87m3aBdnSz/LaMk
 yIoDkMTG4B91YE+yfBP4CGLmCLttAgWsISW7k/yJoSZWuBIBTxjpnAkEIm0ktGJGsGAA=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIprN-0003uY-0D for linux1394-devel@lists.sourceforge.net;
 Tue, 11 Nov 2025 15:00:48 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id D27D714001D5;
 Tue, 11 Nov 2025 10:00:34 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Tue, 11 Nov 2025 10:00:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm3;
 t=1762873234; x=1762959634; bh=uc42wYO24N0tTLrcJ5MgHi4Jtgg5HaJE
 dp9QGfoeIbQ=; b=i5VaVQPpfKUzQIipBE8dJRvmMxcgEeyRhwFJVpANdJ8pYUrw
 HurJ6xeieVtvNcL81egmjIm5nqzbfBGPSiTdkx9gM8CpQPGDW20f82RVBNYP1dhe
 I1q0Tbw8ln49fbm5Jo5aEg11IDM7dwKoWsTIFRDtMxOeFSaZbeRdWFP7wHPjLc2O
 3ody3uyPnFwqq7Rx0Lm9eBwvnD7wFUOv6q1ZIVK6OgohtA5WXbreJm2LsSfpNnZV
 D9T1TO0ght2SBU2X1udqeHtK/65Cdq8Vbsy2NZDS/H8CK7UIffmT1+4Ydz33L0+I
 wgb9jFXs7huTc9R6yXd0o1cfQEBDgZi9GW0NPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1762873234; x=
 1762959634; bh=uc42wYO24N0tTLrcJ5MgHi4Jtgg5HaJEdp9QGfoeIbQ=; b=I
 4O/IXyXTula1YLgbq71o868jbqhjwABP2rPc18CuIgaJUr+TZTCywfau1o79KoOR
 1wyigTjKzqxVl+gLmicnGtQ9yeNKqeOHKbP6TIGJ3x7NijnIaOQRjAYqq7sazBmX
 ErYV/wQVbVhzXh1YhesvAYVt3VSSoGVzK+w3iPo6FPNgSi/UWTFkz/x7kx/ZFfuy
 n5gh7I4XUbVIG9MyjenaLN5j1LDk+JvCzzrr1ZwLLwQOgJxw/xour/s59GFx0E4m
 Z0ewhU7QYOcK6s0JOJ98+GeLgBOuW1+cuM4wIF3dm5KKQ2r8nqLo7RIbcoNnOEL6
 yg0MX8F2ln9VpgtPqYaPg==
X-ME-Sender: <xms:kk8TaXNMhMv3SlGNF4BRDxMatIE_xx-Y2S53ra1tp1FjoyxdbwNumg>
 <xme:kk8TaZti0qD66B4OcfDgqy-z3ozqGFGq2hRtuCeDjqya-d2q6Ym8kxfc0cn0qcl6V
 DQ0HoAO2L5xvoCT2-qR_QmuKLxFtKc0zdZJt_PnLvd98LKACjKgAjU>
X-ME-Received: <xmr:kk8TaZW5cDnz3i1oLFlh1Ssj48AY8w0vLyHVTVMNR1KjW5uUUnwg81stgs0EVhik0MUX94YXwY2jxKdiQwgbkl6-7L37McVb>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvtddugeelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepfffhvfevuffkfhggtggugfgjsehtkeertddttddunecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeefhfefiedtjeehledukeevueeiueekteefvddutdfg
 ieehteeljeeiieegjedtjeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhlfihnrd
 hnvghtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
 ohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepfe
 dpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepvghrhhgrrhgupghfsehmrghilhgs
 ohigrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrh
 hnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishht
 shdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-ME-Proxy: <xmx:kk8TaZtjqBFQlo1WoLrlbgQW15kzLv-T1thnkZe0Xcx_w_9UtTz30A>
 <xmx:kk8TadW05nga1rwr3rUEGH4c5ALzp5YpzfYJx2tVUih2J-S1zC-vWA>
 <xmx:kk8TaUkdPY4NQM082srjF-4WGMSWc3V7_vAtnZHWWu7CmGCVtv_bXA>
 <xmx:kk8TaeYbizNtyVB9vcL1k8ejJYqEC2NiOkBE2v_u1TnWFE8LDGauKA>
 <xmx:kk8TaReBxYvd2VgS50IBGELK1aWkpzsLAFu-qPO1CXKHrBM0ed6cvhG4>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 11 Nov 2025 10:00:33 -0500 (EST)
Date: Wed, 12 Nov 2025 00:00:30 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Erhard Furtner <erhard_f@mailbox.org>
Subject: Re: BUG: spinlock bad magic on CPU#1, irq/39-firewire/245
 (v6.18-rc4, ppc64)
Message-ID: <20251111150030.GA210402@workstation.local>
Mail-Followup-To: Erhard Furtner <erhard_f@mailbox.org>,
 linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net
References: <992eaf94-6fbb-4611-9a29-2db2e2148965@mailbox.org>
 <5145f071-c8bd-4b9d-94b1-2afe651cf25a@mailbox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5145f071-c8bd-4b9d-94b1-2afe651cf25a@mailbox.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for the report, and sorry for your inconvenience.
 On Tue, Nov 11, 2025 at 01:41:21PM +0100, Erhard Furtner wrote: > On 11/9/25
 15:17, Erhard Furtner wrote: > > [...] > > firewire_ohci 0001:03:0e.0: added
 OHCI v1.0 device as card 0, 8 IR + 8 > > IT co [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vIprN-0003uY-0D
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

Thanks for the report, and sorry for your inconvenience.

On Tue, Nov 11, 2025 at 01:41:21PM +0100, Erhard Furtner wrote:
> On 11/9/25 15:17, Erhard Furtner wrote:
> > [...]
> > firewire_ohci 0001:03:0e.0: added OHCI v1.0 device as card 0, 8 IR + 8
> > IT contexts, quirks 0x0
> > BUG: spinlock bad magic on CPU#1, irq/39-firewire/245
> >  =A0lock: 0xc00000001f672618, .magic: 00000000, .owner: irq/39-
> > firewire/245, .owner_cpu: 1
> > CPU: 1 UID: 0 PID: 245 Comm: irq/39-firewire Tainted: G N=A0 6.18.0-rc4-
> > PMacG5 #1 PREEMPTLAZY
> > Tainted: [N]=3DTEST
> > Hardware name: PowerMac11,2 PPC970MP 0x440101 PowerMac
> > Call Trace:
> > [c000000005dafb20] [c000000000bc054c] __dump_stack+0x30/0x54 (unreliabl=
e)
> > [c000000005dafb50] [c000000000bc04e4] dump_stack_lvl+0x98/0xd0
> > [c000000005dafb90] [c0000000000f22a8] spin_dump+0x88/0xb4
> > [c000000005dafc10] [c0000000000f1d4c] do_raw_spin_unlock+0xdc/0x164
> > [c000000005dafc50] [c000000000bf65d0] _raw_spin_unlock+0x18/0x68
> > [c000000005dafc70] [c0003d0013ce1d5c]
> > fw_core_handle_bus_reset+0xa98/0xb64 [firewire_core]
> > [c000000005dafdc0] [c0003d0013d19aec]
> > handle_selfid_complete_event+0x610/0x764 [firewire_ohci]
> > [c000000005dafe80] [c000000000106050] irq_thread_fn+0x40/0x9c
> > [c000000005dafec0] [c000000000105ecc] irq_thread+0x1c0/0x298
> > [c000000005daff60] [c0000000000b5e54] kthread+0x250/0x280
> > [c000000005daffe0] [c00000000000bd30] start_kernel_thread+0x14/0x18
> I bisected the issue. First bad commit is:
> =

>  # git bisect good
> 7d138cb269dbd2fa9b0da89a9c10503d1cf269d5 is the first bad commit
> commit 7d138cb269dbd2fa9b0da89a9c10503d1cf269d5
> Author: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> Date:   Tue Sep 16 08:47:44 2025 +0900
> =

>     firewire: core: use spin lock specific to topology map
> =

>     At present, the operation for read transaction to topology map regist=
er
> is
>     not protected by any kind of lock primitives. This causes a potential
>     problem to result in the mixed content of topology map.
> =

>     This commit adds and uses spin lock specific to topology map.
> =

>     Link:
> https://lore.kernel.org/r/20250915234747.915922-4-o-takashi@sakamocchi.jp
>     Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> =

>  drivers/firewire/core-topology.c    | 22 ++++++++++++++--------
>  drivers/firewire/core-transaction.c |  6 +++++-
>  include/linux/firewire.h            |  6 +++++-
>  3 files changed, 24 insertions(+), 10 deletions(-)
> =

> =

> Bisect.log attached.

At present, I suspect the buffer overflow over 'struct
fw_card.topology_map.buffer[256]' and the cause would be unexpected value
of 'self_id_count' variable provided to 'fw_core_handle_bus_reset()'. It
means that in your machine the 1394 OHCI PCI driver computes the
unexpected value.

Would I ask you to retrieve verbose data by the following steps?

Step 1. Applying the following patch to avoid the suspicious buffer
overflow by limiting the pointer cursor within the buffer.

```
diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topol=
ogy.c
index 2f73bcd5696f..5e66428ec4b0 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -442,6 +442,7 @@ static void update_topology_map(__be32 *buffer, size_t =
buffer_size, int root_nod
 {
        __be32 *map =3D buffer;
        int node_count =3D (root_node_id & 0x3f) + 1;
+       size_t count;

        memset(map, 0, buffer_size);

@@ -449,7 +450,10 @@ static void update_topology_map(__be32 *buffer, size_t=
 buffer_size, int root_nod
        *map++ =3D cpu_to_be32(be32_to_cpu(buffer[1]) + 1);
        *map++ =3D cpu_to_be32((node_count << 16) | self_id_count);

-       while (self_id_count--)
+       count =3D buffer_size / sizeof(*buffer) - 3;
+       if (self_id_count > 0 && count > self_id_count)
+               count =3D self_id_count;
+       while (count--)
                *map++ =3D cpu_to_be32p(self_ids++);

        fw_compute_block_crc(buffer);

```

Step 2. The value of self_id_count can be retrieved as the part of
'firewire:bus_reset_handle' tracepoint event. Please work with Linux
tracepoints framework[1] and store the event log. I think unbind/bind
operation to firewire-ohci driver is useful[2].

[1] https://docs.kernel.org/trace/events.html
[2] https://lwn.net/Articles/143397/


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
