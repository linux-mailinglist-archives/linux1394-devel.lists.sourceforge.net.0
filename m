Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICDzOiTt5WnxpAEAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Mon, 20 Apr 2026 11:08:52 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8D2428A6B
	for <lists+linux1394-devel@lfdr.de>; Mon, 20 Apr 2026 11:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h2iS3Ue8v04eo43huBWEBzH/gfXhpRQ+DKgOzcuyksU=; b=EefNCIWF2Z3JrJnhxFXNBv3jfm
	H4ibz3y8PeppFiOubZgywGPVXS5MFhYF153dkcapFdHe0KsllnGI3XhE9sy1Cty/2R1S6J4VYZW7Z
	QPgxQVgzz6b8tCpoOAUm1eRw5nwa/LD9SlEeqqMYF2QkhgGK5oaIsd6xaVs59YpT074A=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wEkcT-0005Zw-4h;
	Mon, 20 Apr 2026 09:08:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wEkcJ-0005ZY-IL
 for linux1394-devel@lists.sourceforge.net;
 Mon, 20 Apr 2026 09:08:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WdCibtvf5vT2YPPgGlvjTli37GERbk3xSROIG0zQjVw=; b=EcfaG1A4poXserwXN4XBuAHWfW
 a3u12nplJ5Vh51CGLg96z+ETjWAsqNMLdacUefXofiWrhwELwryuyVo8CUSw0Ktchv/bCsEPZdurR
 n7uAYNNmD20QK1NKcH/wfl/GlIpfsFQxzzJIB1Lhl3sXFcN0vUOTZEAU/IOMMlpQGTxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WdCibtvf5vT2YPPgGlvjTli37GERbk3xSROIG0zQjVw=; b=EVCl4OWEIUB2BGm4qTFgeUMzAF
 Ieskq7FANK4K7Zn/NzeaAkaJmAkwpaTyTdh3EQb+AIZwHAgOvBQSCPvf/thxySXoMZFH117+1ifRJ
 EZJUiApKRMRhiUUKPpYf3/eL9rSILDTmd+KWDbI64wx9AdjzOEWBfSjzAUMYtZAGl6jI=;
Received: from fout-a7-smtp.messagingengine.com ([103.168.172.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wEkcF-00075a-PK for linux1394-devel@lists.sourceforge.net;
 Mon, 20 Apr 2026 09:08:29 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfout.phl.internal (Postfix) with ESMTP id 10B96EC016E;
 Mon, 20 Apr 2026 05:08:22 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-03.internal (MEProxy); Mon, 20 Apr 2026 05:08:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm2;
 t=1776676102; x=1776762502; bh=WdCibtvf5vT2YPPgGlvjTli37GERbk3x
 SROIG0zQjVw=; b=GDNGsRvry28eWO1DQVu39xm2PNt4vgDGtxw/ihnTxoFpT/J8
 uNThBNEtgzlF3HvxXfQEqiN7QAJZ8AP138WXlsfWiUoe+5DDbMYUkACS9fiTAhSz
 HWCpvKYZqEgB7mgzIIuUzmfnjCdVN6GlJadUEkz1e6xdsrNzu77oSWVeor6euHxn
 va4SFlFs9svmw3P8wq6tAAaYKfV/iXlb38q/SMPrVdnoSCWGx0e0Gma35Xc9skLd
 vPVO/YuPxvTnSm0GkUKeI422+vBOw12z3BgDX9VXDZyXrS+4HvuM7qxfu8Ty4wO8
 NMLEk0rKe1SgvgX2lBGZYF9gyrXf4FDXDGB3iw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1776676102; x=
 1776762502; bh=WdCibtvf5vT2YPPgGlvjTli37GERbk3xSROIG0zQjVw=; b=R
 sYipJFNgORjm0rclpcz6GXW/VQN/YmvixdTeFDQvcAFJNeO30FEzbge9qBFl/wYt
 Uot0oIY9HdVMjWov9abOg3lctbpxPP/10IQvGwwX774qXRV1OHFchKw8wK4IPClI
 LGRH9hzKnSR8txeNzg5mfSVf1IX+heFRZR/LjL4D2rWvpXoSKrIPk1HS71zgCAEh
 /YCgJOmfOlT+6bcuOXmHFCNDQ7r+6E72V3OZMqFrs6mgYUm4DhSLhKObc7FHVly1
 1DU3Gt0FkXgLrU5zfMEwT8YGPAzJZGR+RT4HMCc/p3keLATFGokkzNYRutijMMDg
 RS/rGilS0c6MBWCmas0AA==
X-ME-Sender: <xms:BO3laY5oHT0UuZKk9KgZC5FGh5aqktzcp_q9CT55XmHu4zfAU8U_rg>
 <xme:BO3laf6PX9Hhm4XR9qrR62oOvtSgUtVeXX9n2wb0nqT9SNTN02leMlSCG4TpEIhdL
 fzO6L86l2cqBXMCZQFxBSZB3DC5wLhe6XCN7C-W1nLv3bZCD3PjMHZK>
X-ME-Received: <xmr:BO3laSTs9pa73GTIFQpStF1Y9qPhYLFXo0VfvyJH56KJL6h5WbGBI2MCGMCoBKzcD-Gp4oSTPTavnvkdmT3k-3i8XXO09Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdehkeduvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpeffhffvvefukfhfgggtugfgjgesthekredttddtudenucfhrhhomhepvfgrkhgrshhh
 ihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
 eqnecuggftrfgrthhtvghrnhepuddthfejhfefkeetkefhudefgfetueetgfdvffejtdeh
 tefhuddufeeghffgtddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghr
 tghpthhtohepuddtpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehurdhklhgvih
 hnvgdqkhhovghnihhgsegsrgihlhhisghrvgdrtghomhdprhgtphhtthhopegtlhgvmhgv
 nhhssehlrgguihhstghhrdguvgdprhgtphhtthhopehpvghrvgigsehpvghrvgigrdgtii
 dprhgtphhtthhopehtihifrghisehsuhhsvgdrtghomhdprhgtphhtthhopehlkhestgdq
 qdgvrdguvgdprhgtphhtthhopegthhhrihhsthhirghnrdgvhhhrhhgrrhguthestghoug
 grshhiphdrtghomhdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhs
 thhsrdhsohhurhgtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqshhouh
 hnugesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopeifshgrodhrvghnvghs
 rghssehsrghnghdqvghnghhinhgvvghrihhnghdrtghomh
X-ME-Proxy: <xmx:BO3laf_z7Mo41G-mmizvpNEj8US2AMCGYzPbP_gb50AAz0dIQx7eGA>
 <xmx:BO3laba_qeToimp8SVCzt0sq0HqJyv1k7oFvRIwzJUVdVH2Uz64yEg>
 <xmx:BO3laYqqxNDKCiREVYSPTPXmcpVxeQgDdt09XxPTC6q7SiuuFkXjfg>
 <xmx:BO3laXTcem8lGOxLG05CuVEY70vgvlUF5ZKMoGw0NsbZtw4szTlH2A>
 <xmx:Bu3laeNfgTR9eHLvP1tHD807q2saAZN9Le7TtuaDbd4Kp4ytdNP1M2FK>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 20 Apr 2026 05:08:18 -0400 (EDT)
Date: Mon, 20 Apr 2026 18:08:16 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH v1 0/2] firewire: Simplify storing pointers in device id
 struct
Message-ID: <20260420090816.GA11108@sakamocchi.jp>
Mail-Followup-To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>, 
 Clemens Ladisch <clemens@ladisch.de>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 "Christian A. Ehrhardt" <lk@c--e.de>,
 "Christian A. Ehrhardt" <christian.ehrhardt@codasip.com>,
 linux1394-devel@lists.sourceforge.net, linux-sound@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <cover.1776579304.git.u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1776579304.git.u.kleine-koenig@baylibre.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Thanks for the patches. As far as I can see, they can
 be applied neither any compilation failures and running regressions. We are
 in the middle of merge window for v7.2. I had not planned to send any changes
 to upstream for firewire subsystem, but there is still some time before it
 closes. If the sound subsystem maintaine [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.150 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1wEkcF-00075a-PK
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Christian A. Ehrhardt" <lk@c--e.de>, Takashi Iwai <tiwai@suse.com>,
 linux-sound@vger.kernel.org,
 "Christian A. Ehrhardt" <christian.ehrhardt@codasip.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Jaroslav Kysela <perex@perex.cz>, linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [0.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[sakamocchi.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm2,messagingengine.com:s=fm2];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:andriy.shevchenko@linux.intel.com,m:lk@c--e.de,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:christian.ehrhardt@codasip.com,m:wsa+renesas@sang-engineering.com,m:perex@perex.cz,m:linux1394-devel@lists.sourceforge.net,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: AE8D2428A6B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

Thanks for the patches. As far as I can see, they can be applied neither
any compilation failures and running regressions.

We are in the middle of merge window for v7.2. I had not planned to send any
changes to upstream for firewire subsystem, but there is still some time
before it closes. If the sound subsystem maintainer does not mind, I
would like to proceed.

Just out of curiosity, what does the CHERI extension adopted to RISC-V
architecture require in terms of kernel programming? Is taking extra
care when storing pointer values in long-type variables sufficient in
driver code?


Thanks

Takashi Sakamoto

On Sun, Apr 19, 2026 at 08:42:12AM +0200, Uwe Kleine-K=F6nig (The Capable H=
ub) wrote:
> Hello,
> =

> <linux/mod_devicetable.h> contains several device_id structs for various
> device types.
> =

> Most of them have one of:
> =

>  - kernel_ulong_t driver_data (sometimes called "driver_info", sometimes =

>    the type is plain unsigned long)
>  - const void *data (sometimes called "driver_data" or "context", sometim=
es not const)
> =

> A considerable amount of drivers for the first category uses the
> unsigned long variable to store a pointer. This involves casting both
> for assignment and usage.
> =

> An additional complication exists for the CHERI hardware extension
> where sizeof(void *) > sizeof(unsigned long). So with that an unsigned
> long variable cannot be used to store a pointer.
> =

> To address both issues this series replaces the unsigned long variable
> by an anonymous union containing both an unsigned long and a pointer.
> =

> For all non-CHERI architectures this isn't an ABI change because all
> have sizeof(void *) =3D=3D sizeof(unsigned long).
> =

> The first patch changes the definition of struct ieee1394_device_id. The
> second drops some casts in sound drivers. (There are no other firewire
> drivers that could benefit.) I adapted all sound drivers in a single
> patch, tell me if I should split per driver.
> =

> For merging I suggest to take the whole series via the ALSA tree in the
> next merge window, as there are no modified files that are specific to
> firewire only and the second patch depends on the first.
> =

> Best regards
> Uwe
> =

> Uwe Kleine-K=F6nig (The Capable Hub) (2):
>   firewire: Simplify storing pointers in device id struct
>   ALSA: firewire: Make use of ieee1394's .driver_data_ptr
> =

>  include/linux/mod_devicetable.h |  5 ++++-
>  sound/firewire/dice/dice.c      | 34 ++++++++++++++++-----------------
>  sound/firewire/fireface/ff.c    | 12 ++++++------
>  sound/firewire/motu/motu.c      |  6 +++---
>  sound/firewire/oxfw/oxfw.c      |  4 ++--
>  5 files changed, 32 insertions(+), 29 deletions(-)
> =

> =

> base-commit: 028ef9c96e96197026887c0f092424679298aae8
> -- =

> 2.47.3
> =



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
