Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F191954D5ED
	for <lists+linux1394-devel@lfdr.de>; Thu, 16 Jun 2022 02:22:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1o1dGq-0003XX-Jz; Thu, 16 Jun 2022 00:21:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1o1dGp-0003XP-9y
 for linux1394-devel@lists.sourceforge.net; Thu, 16 Jun 2022 00:21:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WDIA1k+vn1vyk6sKpiwf9/HshMJxrMIMaoY0+abbIDE=; b=T7CAGqou7MCQNf6ehjCd7+WBji
 TGVuU9gJR9ldDrVsfM1JAILld5iQEBuosXJl71Sb4VoP7W/tpiZYqguyS/lzp0kOqDesd6DIwmBVk
 q/oCS+ruwHD0vb5kTgtImLNEczHl5zBYxPLfNa+VOJK+/qdt2QSMchgXFMRqH33zHr+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WDIA1k+vn1vyk6sKpiwf9/HshMJxrMIMaoY0+abbIDE=; b=busAZ8AxZ1un8yUEPdvU6VVlma
 zDc+eM7gbQ05orhmGvmUs/BK89STpfDVasfmWM/4KyskX7WNrqSGLqqCeYHRX1b7NydqwIubiodLw
 ADAmxTSQE+YjinolGhIbcuniF5ldTYYKSmxMf8A8dIm95O2KqvEEA2uErncuUcGOGFbQ=;
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1dGk-0004fZ-J4
 for linux1394-devel@lists.sourceforge.net; Thu, 16 Jun 2022 00:21:57 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 7AA185C00D7;
 Wed, 15 Jun 2022 20:21:47 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 15 Jun 2022 20:21:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1655338907; x=1655425307; bh=WD
 IA1k+vn1vyk6sKpiwf9/HshMJxrMIMaoY0+abbIDE=; b=KN8vr1iVGJp9lMqrvu
 2GzyJS1tTNsnungvZbSOGr9id1R497O47mxG6m5wvPsM4C3dzh+p6j0Kgkvq3DAG
 sKdvYigSt395Ejwog1wHt/VuqNBzome6DLFcPMh/LM+iEux6M3zTOwO/HfkwAKKY
 NGT1lORLP3T5/5Jnid5mnuLig+vTcuY6X8+LPdjRaAyYtY54llYsy8m1t/Dzrq6z
 r4e8QFx7tpPa/9ih310wyz/aKm9NcqLnpND8B6NowTmPHkvsmxe7Bn0liCHoovHs
 ObTwNuuSlfrjKJU203ABZjTQmdzUAWT6Z+n4YjJgh0CGKjktwSbMwTR6H6ze6eNT
 yJ+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1655338907; x=1655425307; bh=WDIA1k+vn1vyk6sKpiwf9/HshMJx
 rMIMaoY0+abbIDE=; b=Sr5dlTKSCI3rrVDVU/LtMJr2bYszrv4HTWX7kEzFsGmv
 kgwvulq54c47NE3w65Yh8wwyLjLkKGxonE2QELAlfHp42VKomRrkKCGoyCpPxyAi
 d91XyReCI69AIS+s6cGK6UKKDKDqsdEz0p7ulwdbFzkIpKFtstEgzPxGs7RofOWf
 +kFJFtkXnbAaNIzDJ7E2Aa2wqUgNrgK3uV5PoSGpwahC4eVGKhUyQgy2Pk2S1MCY
 s2sL9q7MtL7Sw5kTqu710x/EuWXkbMmJL2U+A9+DiBEkCXvVJ9XBKaDgfEpJpGYq
 +mFzhiUp1dHeej5b0iUIddZcMsDgGv/1v1Og6DiqQw==
X-ME-Sender: <xms:mneqYuaXP-9qa4wrUUi6rBjX_1p6u88Kej4IxrpFTnLIl093A2XvtQ>
 <xme:mneqYhZtisTJJTT2mYjxNdJhMZc1X2BB6IvMvShcrDIjcfzdN1iEGvkqZr0RExl2q
 13umKMcv2TZs1Mhhe4>
X-ME-Received: <xmr:mneqYo-Omqj8hnIoRSXO1vR-6dHFSc4L85aWA-C-p6-eWCkwvhtzA-yvikQHeV5PfxBk80b389BA-KrKkOBLVixdgG2-B7Sj>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddvvddgfedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhf
 dukeffheekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:mneqYgqZmlgTxAol3sAfR99YV8Gh0Z2Ii2HQ4BBs4yKPrmzt-VCTXg>
 <xmx:mneqYprpzZzkM0b44WGo0gt90G5j6VgFY0sYxyZlQqVQno-e9I3auA>
 <xmx:mneqYuRuayoevNPOA3AcBqC5a8EOZXYfOvfgWsrvUwNf_-IZDqp6mA>
 <xmx:m3eqYg3QrkA-zo7kmvwsf0P10LrU_Wis-CTckWjTmE9uvhbCirzWVg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 15 Jun 2022 20:21:45 -0400 (EDT)
Date: Thu, 16 Jun 2022 09:21:42 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de, stefanr@s5r6.in-berlin.de
Subject: Re: [PATCH v2 0/3] firewire: fix minor issues
Message-ID: <Yqp3lvOYHwZyC0I5@workstation>
Mail-Followup-To: tiwai@suse.de, stefanr@s5r6.in-berlin.de,
 alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net
References: <20220615121505.61412-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220615121505.61412-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I realized that the second patch still includes a bug
 that shorter buffer is allocated for block request than received length since
 the computation is aligned to 4 without care of remainder. Actually in the
 case of block request, the length is not necessarily multiples of 4 and the
 packet payload has enough size of field with padding to be aligned to 4,
 according to 1394 OHCI specificatio [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o1dGk-0004fZ-J4
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

I realized that the second patch still includes a bug that shorter
buffer is allocated for block request than received length since the
computation is aligned to 4 without care of remainder.

Actually in the case of block request, the length is not necessarily
multiples of 4 and the packet payload has enough size of field with
padding to be aligned to 4, according to 1394 OHCI specification. In the
implementation of firewire-core driver, the field is copied without
the padding.

Please abandon them. I'm sorry to trouble you.


On Wed, Jun 15, 2022 at 09:15:02PM +0900, Takashi Sakamoto wrote:
> This second version of patchset is revised version of previous one[1] to
> fix mistake of macro usage pointed out by reviewer[2].
> 
> As I note, they are not so urgent changes, thus I don't mind postponing
> until next merge window.
> 
> [1] https://lore.kernel.org/alsa-devel/20220512111756.103008-1-o-takashi@sakamocchi.jp/
> [2] https://lore.kernel.org/alsa-devel/87o7yvpf4t.wl-tiwai@suse.de/
> 
> Jiapeng Chong (1):
>   firewire: convert sysfs sprintf/snprintf family to sysfs_emit
> 
> Lv Ruyi (1):
>   firewire: Fix using uninitialized value
> 
> Minghao Chi (CGEL ZTE) (1):
>   firewire: use struct_size over open coded arithmetic
> 
>  drivers/firewire/core-device.c      | 6 ++----
>  drivers/firewire/core-transaction.c | 3 ++-
>  2 files changed, 4 insertions(+), 5 deletions(-)
> 
> -- 
> 2.34.1


Reards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
