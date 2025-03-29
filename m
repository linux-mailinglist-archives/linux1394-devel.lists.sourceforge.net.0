Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A39CCA753CE
	for <lists+linux1394-devel@lfdr.de>; Sat, 29 Mar 2025 02:08:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1tyKfu-0003GM-K3;
	Sat, 29 Mar 2025 01:07:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1tyKfs-0003Fz-Jm
 for linux1394-devel@lists.sourceforge.net;
 Sat, 29 Mar 2025 01:07:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wKO8nLwVZ/c6d2peXPF8XkbDrw0UaTn7gMMaej/9ejg=; b=cyrgCfZGnzqwzbFJ1E/REooSBm
 Wpcc9gQdwmjHSAbdee65E3khlMmB8681fclDMze3bEwc6Ir8CoF8DUeE0ABWA6IHeUNpVP6VxOu6a
 bDBiGjITJflxfr1Qd3wIRZpru9E98rj2YiUp+fZlm3bvpmAuVwMH1Iw4Z4dAJRyOYqDY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wKO8nLwVZ/c6d2peXPF8XkbDrw0UaTn7gMMaej/9ejg=; b=jjwFaht4wZ86p8bWUknUvw9khu
 i3mpTWGCyLhBwzO4Kc+u5WNnhLN+qJF0TL3OMRQsHj3+GqwLPCIc7EA05sSmhLWFwzOXhYn49QEn9
 4YC6APmalKbCgDkNsRL4s/rY5vr/dlz2BpchbQEeDroLNW1As3xNmPA+u4ei68ZySfQk=;
Received: from fhigh-b4-smtp.messagingengine.com ([202.12.124.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tyKfi-0000Jw-3B for linux1394-devel@lists.sourceforge.net;
 Sat, 29 Mar 2025 01:07:49 +0000
Received: from phl-compute-07.internal (phl-compute-07.phl.internal
 [10.202.2.47])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 3BAF125401CC;
 Fri, 28 Mar 2025 21:07:27 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-07.internal (MEProxy); Fri, 28 Mar 2025 21:07:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1743210447; x=
 1743296847; bh=wKO8nLwVZ/c6d2peXPF8XkbDrw0UaTn7gMMaej/9ejg=; b=b
 aHwbji8vf+26Z3AhA/3BOLPo/6KL/u1O6ZQ9sgVTT1ZIMQQIdC65DWB2ksyOLFuv
 e+Zyjdo+V9IZhPHd2WI3sRF3S6JefkeezDN4r2ubtSeD4H/uNzTI2h1+WQZnkN64
 MPyyoI1G0uuT5+q1HppvbjOtBCZe07Fs4tn/FYbV4zfSV4pKlqRfkYoChz199cnV
 7Uptv60tU5WxjZK/g8D2CuwZwpOp6Vv5cgPhqrG+ZGYfjHcVuq1R7n9FicOHOt+C
 Wba6lMfAb8MNEcaZP9+avFL4Wqn/L2wBGmHdrFD4Z2N5tQyDNSbT5HmbYLWjphTB
 dFQMFfJkBKyvsznRl9LAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1743210447; x=1743296847; bh=wKO8nLwVZ/c6d2peXPF8XkbDrw0UaTn7gMM
 aej/9ejg=; b=F4ngpkAKSoehP3OLsF/lxLU0TZmnIpoyTC+9EeeZ2cTRWwPf8Kl
 cJRlLd5djqHUayoozyF2W8oU8EX1fyP1kGNaQLt99Id93137/AhAHbTJEyn+Nq7U
 x7h/5Lt1J3FFLZ/BuuUdnucZ0JHbZuHPZGNEb0TmrNH1mlbRKmfg/86TLdRizwBi
 9rZUjkt8Tp0ph3DoxQZnGC12hNzZJy2x+5bz7vFBs+g8Vd3DLqRPQYKOkSsE+qh/
 N6EATpXXu9h7+M2P5ZpaYNOxfFz2N2qK8AWfpJkQt3bTWhjqH2eCM0OiN/ETNbnX
 DmljxKUOf4sou+ntsh7MbWa8mg0qwTmdYfA==
X-ME-Sender: <xms:zkfnZ5cv0tN7H6h2b0G8kIC-F1SM83Tdr4kvIT266XcRHosBJSvPBw>
 <xme:zkfnZ3MJaiAkJKzPMdvFuFhVRNuscMZPGgKH89d880-yDO5xjuQbxPmcxWM-leK7H
 wBwmvizMHbxEj7EC7M>
X-ME-Received: <xmr:zkfnZyiwB3mb2sXBjbeH0Yvk1tYzndaq7o_l1ONTx1MUySF-yllp6RwoggJzPGxdc1IvM684cJ3bWLTnCGtWNLVyqrErFph94GQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddujedvkeduucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddt
 vdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhih
 esshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedv
 ieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgr
 mhhotggthhhirdhjphdpnhgspghrtghpthhtohepledpmhhouggvpehsmhhtphhouhhtpd
 hrtghpthhtoheplhhurhhifigvnheskhihlhhinhhoshdrtghnpdhrtghpthhtoheprhgr
 fhgrvghlsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlvghnsgeskhgvrhhnvghlrd
 horhhgpdhrtghpthhtoheprhhosggvrhhtrdhmohhorhgvsehinhhtvghlrdgtohhmpdhr
 tghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfh
 horhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhk
 vghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdgrtghpihesvhhgvghrrdhkvg
 hrnhgvlhdrohhrghdprhgtphhtthhopegrtghpihgtrgdquggvvhgvlheslhhishhtshdr
 lhhinhhugidruggvvhdprhgtphhtthhopehkvghrnhgvlhdqsghotheskhihlhhinhhosh
 drtghn
X-ME-Proxy: <xmx:zkfnZy9dTcq5_GooPo6FBhesS3-eTeFA9FJ5mnYztXhSZoT7VaLZwQ>
 <xmx:zkfnZ1urQIo1HtXOxIXOyfszpprewy-pWXPkxDHpNYkpabXocAaBiQ>
 <xmx:zkfnZxFUR1qUFUbRj_KHGKjaWLsMGdSkr4jIRd7_rc0e3cefm0YmFw>
 <xmx:zkfnZ8OiLzZxmWIFGXvxyjOt9IjSqjrlNng4W8_-dzycsaWRKNtDtg>
 <xmx:z0fnZ7InwO7RsxXU6AfioiRJ9a1GHj4X_mbER07cpjox-XHj7BV4djb1>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 28 Mar 2025 21:07:23 -0400 (EDT)
Date: Sat, 29 Mar 2025 10:07:21 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Riwen Lu <luriwen@kylinos.cn>
Subject: Re: [PATCH v1] tools: Fix compile error of pfrut/firewire
Message-ID: <20250329010721.GA11319@workstation.local>
Mail-Followup-To: Riwen Lu <luriwen@kylinos.cn>, rafael@kernel.org,
 lenb@kernel.org, robert.moore@intel.com,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, acpica-devel@lists.linux.dev,
 k2ci <kernel-bot@kylinos.cn>
References: <20250328074750.3524280-1-luriwen@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250328074750.3524280-1-luriwen@kylinos.cn>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Mar 28, 2025 at 03:47:50PM +0800, Riwen Lu wrote:
 > The value -rR of MAKEFLAGS implicit do not use make's built-in rules and
 > variables. Previous commit d1d096312176 ("tools: fix annoying "mk [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.155 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [202.12.124.155 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [202.12.124.155 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [202.12.124.155 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tyKfi-0000Jw-3B
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
Cc: rafael@kernel.org, acpica-devel@lists.linux.dev,
 linux-kernel@vger.kernel.org, robert.moore@intel.com,
 linux-acpi@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 k2ci <kernel-bot@kylinos.cn>, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Fri, Mar 28, 2025 at 03:47:50PM +0800, Riwen Lu wrote:
> The value -rR of MAKEFLAGS implicit do not use make's built-in rules and
> variables. Previous commit d1d096312176 ("tools: fix annoying "mkdir -p
> ..." logs when building tools in parallel") removed the MAKEFLAGS=
> command for tools and caused the built-in rules for pfrut/firewire
> failed to take effect.
> 
> Reported-by: k2ci <kernel-bot@kylinos.cn>
> Signed-off-by: Riwen Lu <luriwen@kylinos.cn>
> ---
>  tools/firewire/Makefile               | 7 +++++++
>  tools/power/acpi/tools/pfrut/Makefile | 2 +-
>  2 files changed, 8 insertions(+), 1 deletion(-)

As long as testing with v6.14 release, I can not find such failure. I
guess that some one has fixed the issue between the commit and the
release.

Would you please recheck the issue?


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
