Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKxzNLXFCWpYpAQAu9opvQ
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	for <lists+linux1394-devel@lfdr.de>; Sun, 17 May 2026 15:42:13 +0200
X-Original-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B70895613DC
	for <lists+linux1394-devel@lfdr.de>; Sun, 17 May 2026 15:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xsy1dYi0U6LwC7sxLqTRhul7uVvzmvLY3KgS7DJgJ4c=; b=mSba36aMcs1PXiGfWKQ2STEGAZ
	12+KrC/YvSyw84fdsHW8+Kd2vJDhBtK4h/5Mug+hh52z/p2vAhIhRSuXF5UakD1A7eDsZ11Xdxn60
	J5OP1ek8xPfg209c9JbdgBD91wAjGQHBSJTKXhgVd0Uf3x5LkKkvzZWGSLD89jkx1f80=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1wObkm-0006wp-DA;
	Sun, 17 May 2026 13:42:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1wObkk-0006wh-5i
 for linux1394-devel@lists.sourceforge.net;
 Sun, 17 May 2026 13:41:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GcUTUhFDF0BSdptZU4+BoaYaXKH4UWOgocHk86AdShI=; b=EnGTR0LqEZIrmf5M0k2aqcQz0L
 5kjDC4YfMHlaB7kkPC4T6JgiKDQTgZQwh/mdej89Y1PH96eflwDApVQnn+L6MF9yRMZF7kS4EuWKt
 nuyTmy33iwSCVp43CzzXoyZ+YDGEFpUTT5xZ8oGVRlWQ91npgzlgxK+SEyfwkaBW8jfo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GcUTUhFDF0BSdptZU4+BoaYaXKH4UWOgocHk86AdShI=; b=LC8nBdyqgm7XD9P+ZdnWrRFGPF
 NChwhFIdHukkJippvUUiXkpEdGuQLV8xPhC05Z3017Rw1FEuxGSi73DjxEVCEFCa0/JWbKyCFHcaY
 EdOe41lnvnQT6hBgf/7puzsedaTd6RkMgI3SFWbKMlqIbqfT3r1GOIq/njPEx2hzcnhQ=;
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wObki-0005gg-Qd for linux1394-devel@lists.sourceforge.net;
 Sun, 17 May 2026 13:41:58 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfout.stl.internal (Postfix) with ESMTP id 1623F1D00084;
 Sun, 17 May 2026 09:41:51 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Sun, 17 May 2026 09:41:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:date:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:subject:subject:to:to; s=fm3;
 t=1779025310; x=1779111710; bh=GcUTUhFDF0BSdptZU4+BoaYaXKH4UWOg
 ocHk86AdShI=; b=NTi3Cw8WlweqFSg4M8mfr1DDlEr7TxA5T0D/5VVOi9wRvkDY
 orNyo9kiqWsyVX7hclfIDT2h//yWNSovoZKn8de1LRj8CUAT18Sapsb99SE66qkC
 MJD0Ut2b+31RllG168Uy3qHmtatSEIkQFuCw1TEiGCGj9WyR7ThnK4JV5QFcKfSw
 PzgAg4Agnv4YimWNBIjD2IgqmcdN8GYy7ZPbQhMwBzNxw6bDQbfVk8WW+jgexQsY
 2Yz6ivYO5vGBWdHi4yPdnBVeT6zHB7Ek+EoXzrHmco4vbkNzg3tQUznHYTi4HQMK
 BgnKd/E/C9pxcxerVCl5wN8e3G+p63W636k5Sw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1779025310; x=
 1779111710; bh=GcUTUhFDF0BSdptZU4+BoaYaXKH4UWOgocHk86AdShI=; b=H
 aCWzRSsKLFjKWVe2zqiEIaU5VB/DOGWZGdltgioyB4Urc+9NJWtR0TepKCIazYZk
 1usRHSNwjaJJ5ZMd/EgdVg8o0+dnd3SxqjVYFR0L7JuoXOXbk5vqy4ofkJuAZtOS
 suVkeCnSrLuQYyPYAVPEp1JydtDBEZP9LHRGVEfjD63ma+VlkPgbvizciKKW8+ha
 Wu5onFL/PDAd5gomMKpEimpj9C+j/Q8mR9mFmywj0SKDU4l07hDKyuVy7B26nXGA
 Elkx5mTayW4o+NihMBAu+QtfFTjzjO/0duGiIrXYIBFxQWheBTwDTfKzD3xP7Zdb
 YZHREGP5aWwNvp320GiLw==
X-ME-Sender: <xms:ncUJauidKtkvPHBchxZCNivdvDXGDZtucqun_aiQw4RFckoy3BJxqg>
 <xme:ncUJaq0WFUDbilFooCf3zzfI2MUV05v5NxzXDuj3zqL3flfshutZYjBQGLYGOBfIT
 x3gkEuKV5gqZPhmHsizMKm77QtQGDJYS1V1TES6Jk_E64X53aWQCO4>
X-ME-Received: <xmr:ncUJahdPJ_G8JQ-JB9JFDQTlgLfHY-sUuH3dJchxTZgxYXRNyo892Q2xFEOVmrsIGXTACdgqsNNsymUQDDeRxnQ6J3_WVw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddufeeiudefucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
 gurhepfffhvfevuffkfhggtggugfgjsehtkeertddttddunecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeegjeetkefhjeetieffleelffehgfeiffekhfelueej
 ffekieeuvdeigeefffeileenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepuddupdhmohguvgepsh
 hmthhpohhuthdprhgtphhtthhopehurdhklhgvihhnvgdqkhhovghnihhgsegsrgihlhhi
 sghrvgdrtghomhdprhgtphhtthhopegtlhgvmhgvnhhssehlrgguihhstghhrdguvgdprh
 gtphhtthhopehpvghrvgigsehpvghrvgigrdgtiidprhgtphhtthhopehtihifrghisehs
 uhhsvgdrtghomhdprhgtphhtthhopehlkhestgdqqdgvrdguvgdprhgtphhtthhopehlih
 hnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvghfohhrghgvrdhnvght
 pdhrtghpthhtoheplhhinhhugidqshhouhhnugesvhhgvghrrdhkvghrnhgvlhdrohhrgh
 dprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhr
 ghdprhgtphhtthhopeifshgrodhrvghnvghsrghssehsrghnghdqvghnghhinhgvvghrih
 hnghdrtghomh
X-ME-Proxy: <xmx:ncUJagyUrQwKUeNQNmR9PfLC2TqQWeyvWcR6Mv8tR9OwPKMyHTKdWg>
 <xmx:ncUJapxnhYIVUCCcBI3b55fHVNUC6Rljde9_pfOTfLgq1ZSLlhibLQ>
 <xmx:ncUJahYXsmQdQJCeaYtX99_zOk-XW6Ze5RIGX1_9-jqGTW1vSY-DPA>
 <xmx:ncUJai2mcgZ0H60cSv2cq7Ce4eFDFDLeA7iTQ7Uc4p5M9cQ7NYtu8A>
 <xmx:nsUJaq-Q0or1u4w06Jb0zJDusuO8SCvzScE2Xd0RDKyKeNsZ5LYuRyIf>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 17 May 2026 09:41:46 -0400 (EDT)
Date: Sun, 17 May 2026 22:41:44 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH v2 0/2] firewire: Simplify storing pointers in device id
 struct
Message-ID: <20260517134144.GA465135@sakamocchi.jp>
Mail-Followup-To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig_=28The_Capable_Hub=29?=
 <u.kleine-koenig@baylibre.com>, 
 Clemens Ladisch <clemens@ladisch.de>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 "Christian A. Ehrhardt" <lk@c--e.de>,
 linux1394-devel@lists.sourceforge.net, linux-sound@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Christian A. Ehrhardt" <christian.ehrhardt@codasip.com>
References: <cover.1778494203.git.u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1778494203.git.u.kleine-koenig@baylibre.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On Mon, May 11, 2026 at 12:45:01PM +0200, Uwe Kleine-König
    (The Capable Hub) wrote: > Hello, > > v1 of this series can be found at >
    https://lore.kernel.org/all/cover.1776579304.git.u.kleine-koenig@b [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: messagingengine.com]
                             [URI: sakamocchi.jp]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1wObki-0005gg-Qd
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
 "Christian A. Ehrhardt" <lk@c--e.de>, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org,
 Jaroslav Kysela <perex@perex.cz>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "Christian A. Ehrhardt" <christian.ehrhardt@codasip.com>,
 linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: B70895613DC
X-Rspamd-Server: lfdr
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
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,sakamocchi.jp:s=fm3,messagingengine.com:s=fm3];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:andriy.shevchenko@linux.intel.com,m:lk@c--e.de,m:linux-kernel@vger.kernel.org,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:perex@perex.cz,m:wsa+renesas@sang-engineering.com,m:christian.ehrhardt@codasip.com,m:linux1394-devel@lists.sourceforge.net,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORWARDED(0.00)[linux1394-devel@lists.sourceforge.net];
	FORGED_SENDER(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,sakamocchi.jp:-,messagingengine.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[o-takashi@sakamocchi.jp,linux1394-devel-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux1394-devel,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim]
X-Rspamd-Action: no action

Hi,

On Mon, May 11, 2026 at 12:45:01PM +0200, Uwe Kleine-K=F6nig (The Capable H=
ub) wrote:
> Hello,
> =

> v1 of this series can be found at
> https://lore.kernel.org/all/cover.1776579304.git.u.kleine-koenig@baylibre=
.com
> .
> =

> The changes introduced here are the same as before, but the commit log
> of the first patch is (hopefully) improved to better point out the
> advantage of the approach for mainline. The second patch demonstrates
> the explicit casts can be dropped after the first patch.
> =

> The patch series intends to not change the runtime behaviour, however
> the 2nd patch introduces a few changes to the generated code. Looking at
> these for an arm64 build they only affected register allocation (so
> where x0 was used before it's x1 after the patch). I'm not proficient in
> x86 assembly enough to understand the changes there, but I guess they
> also don't affect the runtime behaviour.
> =

> My motivation for this patch set is to reduce the patch stack for Linux
> CHERI support. This affects firewire because with CHERI you cannot store
> a pointer in an unsigned long variable. But I hope these changes qualify
> as cleanup worth to be applied even without considering CHERI.
> =

> For merging I suggest to take the whole series via the ALSA tree during
> the next merge window, as there are no modified files that are specific
> to firewire only and the second patch depends on the first.
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

These two patches are applied to for-next branch.

We can't predict the future, but setting aside the comment about the CHERI
extension, the actual benefit of these changes in the current Linux
kernel is simply to avoid casting between long and pointer and enable
constant pointer for the existing code.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
