Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0413959FBD
	for <lists+linux1394-devel@lfdr.de>; Wed, 21 Aug 2024 16:26:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sgmHk-0004Nw-MX;
	Wed, 21 Aug 2024 14:26:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sgmHi-0004Nn-Os
 for linux1394-devel@lists.sourceforge.net;
 Wed, 21 Aug 2024 14:26:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z5hmVB1UaluQWMIWgCRGfRfSmwBjFSaGxlbnQm46kVI=; b=KkZdCCiDEvQVRd4iVUK3afPXqC
 0bZ0e1PzIwDtul4ZlUeUoudrUL04GS5Cel6kHI4BhzJPJLUpXUFoA/xYJjitnUdzJwYZ+ptXqJfU5
 kFn3N8+8b8ivZ829KgtOskoUoz81LOpVa8Lgj0ZDoY453Kc3f45TwYmanCSVQHB+cfok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z5hmVB1UaluQWMIWgCRGfRfSmwBjFSaGxlbnQm46kVI=; b=fyOD9FXbSQ+tT15HQ8xs5nx2WJ
 li1mBgbXfF+15hXnC3jXsUlYjHXJ3HyWCDi+2HXGVA6hRfFBljKoO8oabDbW5HoabxtYiQPH8jkUe
 R8roJ5QO+SNbwnAdCpdO1rYlLpNjHaZ86m5CL0xDudYJ6si9VujzTT87TfMvp06WsdXM=;
Received: from fout4-smtp.messagingengine.com ([103.168.172.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sgmHh-0001Bt-9z for linux1394-devel@lists.sourceforge.net;
 Wed, 21 Aug 2024 14:26:02 +0000
Received: from phl-compute-01.internal (phl-compute-01.nyi.internal
 [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id 9E225138FF42;
 Wed, 21 Aug 2024 10:25:50 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Wed, 21 Aug 2024 10:25:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1724250350; x=
 1724336750; bh=z5hmVB1UaluQWMIWgCRGfRfSmwBjFSaGxlbnQm46kVI=; b=F
 dUspjj71mFgkp71yMyJmaNBf2sZc/DOIO22J8CywXwDYb/ibX4EhcFcnj2Vg2arz
 NW9JW0NxGKY2qN5PYK8atXzpbloVfZRr9zDPcDFT2RYOFJtGzQ+KKGe03vg64vY6
 TgrQAvthnHSag62uANGago7cAHRQfSXw1QVcuQBMnPGkakhF2oTAA8zE9pd6Ryrf
 YeQoqDvCvgMYeRRn9TbuP4S8/Rc95XNBrWlfIvtx/mRyPt6XXR6kP+2t2ZZT41mO
 DXy4+K8iiAlFFz9wMi48H7wuYVO1yUJUGmEj5zLl/RiDwesp3GJy8vwpJsIUqFnr
 TRMZLF2/IGhvaaj4u7QiQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1724250350; x=1724336750; bh=z5hmVB1UaluQWMIWgCRGfRfSmwBj
 FSaGxlbnQm46kVI=; b=XnNvnt6gomwBEuHM2fRninJMHuasSml99lB/Q6Cz+AKT
 Wa8JqpeF8SbY7KMBtRyJJ50TwQ23LmUx9zlDiVN4+r0c9eo6e2yTTYfWDTJq9h+L
 9DMt8JN+ZsQ8ZF65L/VrulZf4TluVVufYyhnNhMORSnC0xy1fkGxznu8dC2gS5qM
 lDcYZmUENhM4uTV/xzrXmSWlV8NGNYqX5DHkdarUSb8Uw7xLWO5tAxEgKmLs5f3D
 VcxsJPxmawn9CLienZbNPJGRjKUoBobIhRLQMRwtLWDHl2hYxBilxMpT9/GoNtIt
 P5YgEt4sJeNTmGUzCtJU6p5VCedmJdCHOQasxrQXZw==
X-ME-Sender: <xms:7vjFZu9FCwZaJ-y9xYQEw2yIJMbusC9JGteh5u-tyxxHc3QNo1EPRg>
 <xme:7vjFZuuc67XqPkG3iCdFc3qNzcKRyyScXa2lcRWTFUADUhI5mNGDuhZdubnnVx5ab
 Hakvjf3lGNcwUezeSk>
X-ME-Received: <xmr:7vjFZkBKUY60thNjM-EUKkgcl3gc6WXGXMdMvi0XKQOt64w87mCRH5fyLTEZUpz2htRX1DJqzglYwAIfAt6S-Va04eub-0KhMw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddruddukedgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
 rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
 htshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvden
 ucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgkedvieeu
 ffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhho
 tggthhhirdhjphdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtg
 hpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfhho
 rhhgvgdrnhgvthdprhgtphhtthhopeiiihhjuhhnpghhuhesihgtlhhouhgurdgtohhmpd
 hrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:7vjFZmeJNdmiJEnPhVCc7L-Yh0pV2-QJBTX6lUqgnXsPMU3Ms7vyPQ>
 <xmx:7vjFZjPPdc65QJ1HGLf7kzstW2t74S4K7hoVQ6Aq_7hnNjUpw2Jt7g>
 <xmx:7vjFZgmnO35moMLOwDVkiL_CEK5iDvMycdcVCKtfKeUuDLQDW482rA>
 <xmx:7vjFZlvGYZQzKuuh-ppb4ugHpruxf9pIzMzFTDsm-Lotz2HBdGRFoQ>
 <xmx:7vjFZsqEZPMs0rB5LbnWB0zsSefRJWoc83pOiQUO8s_NbnrNTNJJoViZ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Aug 2024 10:25:49 -0400 (EDT)
Date: Wed, 21 Aug 2024 23:25:46 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH] firewire: core: update fw_device outside of
 device_find_child()
Message-ID: <20240821142546.GA48808@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 Zijun Hu <zijun_hu@icloud.com>, linux-kernel@vger.kernel.org
References: <20240820132132.28839-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240820132132.28839-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 20, 2024 at 10:21:32PM +0900, Takashi Sakamoto
 wrote: > When detecting updates of bus topology, the data of fw_device is
 newly > allocated and caches the content of configuration ROM from [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.147 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.147 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.147 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sgmHh-0001Bt-9z
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
Cc: Zijun Hu <zijun_hu@icloud.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Tue, Aug 20, 2024 at 10:21:32PM +0900, Takashi Sakamoto wrote:
> When detecting updates of bus topology, the data of fw_device is newly
> allocated and caches the content of configuration ROM from the
> corresponding node. Then, the tree of device is sought to find the
> previous data of fw_device corresponding to the node. If found, the
> previous data is updated and reused and the data of fw_device newly
> allocated is going to be released.
> 
> The above procedure is done in the call of device_find_child(), however it
> is a bit abusing against the intention of the helper function, since it is
> preferable to find only without updating.
> 
> This commit splits the update outside of the call.
> 
> Cc: Zijun Hu <zijun_hu@icloud.com>
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> ---
>  drivers/firewire/core-device.c | 116 +++++++++++++++++----------------
>  1 file changed, 59 insertions(+), 57 deletions(-)

Applied to for-next branch.

Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
