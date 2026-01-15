Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAD8D248AF
	for <lists+linux1394-devel@lfdr.de>; Thu, 15 Jan 2026 13:35:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eC5+7+rLIYcHttnWpqhWPLa83st28+Ns4ktvp3YJY4Y=; b=fg/twngBDy+1GhrwiU/qlFRwlK
	GW42BJr7WcmIlZbJjK1JNzj7pGpjCda3Lpt3yC6EVois8LtjbxdH++/1VUOQjNvMsv0Cz7BFncMZ8
	lQusP0t/6KjvmALYfhrE8PfuRwVv6rQtf5pbWGlPlehjHIdpZYg67c04CyhVUJwvzNSQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vgMZg-0002yY-50;
	Thu, 15 Jan 2026 12:35:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vgMZY-0002yM-Rl
 for linux1394-devel@lists.sourceforge.net;
 Thu, 15 Jan 2026 12:35:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g8tTsSxzIqkkv+KbvS5f7EjqbEpFBuGq1MBfPNSCwqk=; b=FoTkuZfwnbwYnQfJaN6ZEbs6oX
 85SgdWFcqFypWwLNaUOnddPTlUiIZbnm4k5BjO1TDs17mukWYhgQY5CthnDF4qpDPl+PvOKhzsCfz
 VDjMbmvSR2qnnX4b4FoPm/mS1pR/vG8O/Eho0SigqDIvLOuVrjnlUljCv/gwuKC6fYwc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g8tTsSxzIqkkv+KbvS5f7EjqbEpFBuGq1MBfPNSCwqk=; b=iLWfleVoKB8L45kLqr5B7C6mr1
 36l87aEtTSwo8kBGCpdvTL61g66Otiwxz0ed6Or9vSsboYshV8c8wFKA0eneSC8xEIbiLLDNCy2c9
 hygi+Bh9ucZlISgs53WLz+tsjtdsl2nwvpo1CK2JcZk9PodhGnynaSVNI1UuW6Mdn2KI=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vgMZX-0005Gu-VG for linux1394-devel@lists.sourceforge.net;
 Thu, 15 Jan 2026 12:35:32 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 397A71400093;
 Thu, 15 Jan 2026 07:35:26 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Thu, 15 Jan 2026 07:35:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768480526; x=
 1768566926; bh=g8tTsSxzIqkkv+KbvS5f7EjqbEpFBuGq1MBfPNSCwqk=; b=L
 G8SpiWQv+Iluw0sv2YEOlb6/pPigJghBX2DhzbKlN3tkbblwnN8AHuaL2adiHEDc
 ux9mUUzIG3wDM8Xkl0PTCwwGl+ml0w75ujXiPSrOPJx8YF2mp5YCM1PEvqBFBul5
 chI1cEDRoulJMsGAbbBzs+yyAvUetdPsoxFLzcPb/mthuWuGLX4zuSQEfPV9/oop
 ghtcxdYamkW/UQ6oNYw3vUcpCoa5xD8wDjgWSEAstB8St0Nyjn5Se6yKj+vDI6UY
 yvg2dsi7ZLJ6TKjurEsF0KGgbTry30pD323/8aX4n9nVv5tbmmbeyIGpIGRVUeir
 xPqRe/cY0CpHfu/mCLM4A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1768480526; x=1768566926; bh=g8tTsSxzIqkkv+KbvS5f7EjqbEpFBuGq1MB
 fPNSCwqk=; b=FFO37RUmFN2Mv4CEUUUZqi6rKaE0YbS5hCZjnC4Sl9qqBy/UNLn
 Csiu+hkVgzj7e1s9mWpE2RDzfsfrAYQIwABVNfPDztmHuPm8Qyu3yue09qVYwsHm
 ef7QyZIuY7Ce0RZqROF8NdPaq4wE1iQo3JEqz4uX04HZ+8WVop5Iu4iWy/jqrkTk
 hNc52RxI1WvsAk0Uug60yjuPvx6xJNTjJ52ZxLdHlkE4t6G36SbvajXo4NgGcLgO
 0lhAlSvcvo+j0u3U0FE45WaTfobDmwaqtufAEb46+kPB0ndrqlBjrUS+CuRazFNP
 a08YVtJVUCUlnD5Q6aEUlaPbTAmk3pIEy0g==
X-ME-Sender: <xms:Dt9oafhOvH0ftBT-P995oHJI3nXA8BPt2mjw4PxIJf3ltWDEo4tEGg>
 <xme:Dt9oaZ-4mrz1nOm5OWj6kLjA6WnuL_tne3ukhqcWAJmycITida7QxraGliYtrSlCC
 8XlaWR7GClIvOXf3hVHJgk9UZHRkecDF4fblYlOrDtZd_sq0h04xww>
X-ME-Received: <xmr:Dt9oaWrzGU5hVuEUSm7vu8l4N5soND7_hZSyzoUoV3sUTFgBSbS3NgEFY5R2XwnGbVs1FmeaIrQByy76RCuXkoHQu1HEZk4MHQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduvdeitdejucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttdertd
 dttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhteetgf
 ekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:Dt9oaY_LDYE6RcrdlztUhWCVTsMONrvDxti3aJOsQmAOA6P1HSML2g>
 <xmx:Dt9oaaXYKt3OVTos8xv7D56LXlQLeiqozDou5fq8HpTDXHyBr06myQ>
 <xmx:Dt9oaeBz0CkHTD-WZs7Q9zYICF4aNdghP-UxillVA2eUjtQpo3bhQQ>
 <xmx:Dt9oabye2lwsO6ltYxV0U1vOwjP2jyfj9sRfgAxJr-GqLHPPc5KayA>
 <xmx:Dt9oaVXpl6YZSFuEbG9k0wsnkEWOYZ6I5SVr1hnKR_8_rodGvh5fdtOK>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 15 Jan 2026 07:35:24 -0500 (EST)
Date: Thu, 15 Jan 2026 21:35:23 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: ohci: fix index of pages for dma address to
 1394 OHCI IT context
Message-ID: <20260115123523.GA179174@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20260114131729.16133-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114131729.16133-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 14, 2026 at 10:17:29PM +0900, Takashi Sakamoto
 wrote: > The index of pages for dma address was changed wrongly. This commit
 > corrents it. > > Fixes: ef6bdffbb88d ("firewire: core: stop us [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.157 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vgMZX-0005Gu-VG
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

On Wed, Jan 14, 2026 at 10:17:29PM +0900, Takashi Sakamoto wrote:
> The index of pages for dma address was changed wrongly. This commit
> corrents it.
> 
> Fixes: ef6bdffbb88d ("firewire: core: stop using page private to store DMA mapping address")
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/ohci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
