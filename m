Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EF55D900E50
	for <lists+linux1394-devel@lfdr.de>; Sat,  8 Jun 2024 01:08:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sFign-0007e4-Tq;
	Fri, 07 Jun 2024 23:08:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sFigm-0007dt-GH
 for linux1394-devel@lists.sourceforge.net;
 Fri, 07 Jun 2024 23:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6pdC/PPeU998+RzKdeO9cLmW7uSwlM/TVhAEkUWbOIU=; b=Z+4R2CLO/JIo5rGzP2zaT5gQa9
 9RXDqhCsEgSUbGWtydM0++Q2Ez989Zk/krzGRwy172C7fK14TfAgSbjaj4BEZv6hlDgQXZFdJRJla
 wZ1Q4PaynFLzEEPZaw4yqSkny06/y9ITfmh1n9ii3k+cDas9gNCy0mSoDNkcTEXp4crA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6pdC/PPeU998+RzKdeO9cLmW7uSwlM/TVhAEkUWbOIU=; b=G92l5lzZjmMXInHsmHRMIGROLp
 XJO1RPBPxLZWzVyU+Ve5qIwj85kSXvjJK/PHdUATxIWRAh8E56E021MNuUof9doP2tX2Xu13UUvtV
 NOL9lsIDrVqIN4ysHZysVf5QWH9ZACuq9jOOB4NQZbaI+6rgUfAuJIsYdL0H+MwhwvvI=;
Received: from fout4-smtp.messagingengine.com ([103.168.172.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sFign-0006Xr-Bq for linux1394-devel@lists.sourceforge.net;
 Fri, 07 Jun 2024 23:08:05 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfout.nyi.internal (Postfix) with ESMTP id 4FE4F13800E8;
 Fri,  7 Jun 2024 19:07:53 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Fri, 07 Jun 2024 19:07:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717801673; x=
 1717888073; bh=6pdC/PPeU998+RzKdeO9cLmW7uSwlM/TVhAEkUWbOIU=; b=F
 WMdH3qE+jPjMD8O2/Op8RnY5tdJV0XoKg9eYvS367FiOcKEoDbVpor4tZUOBgm2/
 csuf8Fj+Rmb9O+zt8ByM8fUA4QMZctZbGGqYsghQJQGwFHyX5mfzPyvjIneNUEqN
 Qj2Z0AJPJhARIzUMruGN3XcPGuRFtdng6RtG6/mbwc0Ha40Af0V+FDRSFsMkw+4x
 ytXaD/7dRj8LSiM+mkIIQr5r29EJ8DhRRbqQEgbFaM9jmGqsKsFfdipu2wF2qwrs
 h+t6kYiTQ7S//o7KYG2jQQwvCnQlaSCaNi3N86yHxS9JdnD4EIsRrbIM9EkVqIaE
 ZJIKUM9kmnrEBL6vjBXkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1717801673; x=1717888073; bh=6pdC/PPeU998+RzKdeO9cLmW7uSw
 lM/TVhAEkUWbOIU=; b=RCO2KBq05P6gGDqe4NNlfUr7IgrNKydICWP76NHHCC35
 UBT+kZ4lyAb1++FSnZEmlhwc64QfxPdBMzIcfnIH6Bl4sBQr0+EVgTus7KUjr+IY
 TOFTVkwKLwqbf5h1DgSTeKMi1SotyaNvdbBfMx4P/U1tZ8LX2celSjDqCfhQe7Dr
 YE3Ip0JBguRX1agMurAY76cgwlOpjSQwRoHiFVyEg74XB8M4JYLY4sgI4wr2E0YX
 lxWIesqVFLPkQ6nViragSHye6a4dQqSKE9z3mH17DEQKuqw55etazoO/brt2V+UD
 Rnx+MpzY4VFhEcmI1C2BJllmGssSpKnGhmDDmycCfg==
X-ME-Sender: <xms:yZJjZhFr4vFF4EraFQ-4rC6GwqwGFKgafKSrL65cu6OHM3KutOKmXg>
 <xme:yZJjZmX4OiNTeuhfKT8XUQTxB7kcTeKuvZFOmr_Uq3UGzgCd4t3ajeuaIvJSCMORs
 PRPK3g4yutWKZ53hOA>
X-ME-Received: <xmr:yZJjZjLZwoXdRjRY5oZ_0GfVcu2NVYN1Q-IF9DHMWa-n23snUQ_00pQ4dOGfh34sSPAew8nLg6Km5VGNavoZQS8yXrCF9EGankE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedtvddgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:yZJjZnHSFN5UpnqqZuvBWQEu1YrWL_LeupTNYdOJrma1DK7QMwotPw>
 <xmx:yZJjZnXkXn5M5L4n3PvBTfO-oOlmhhgqDp0bte-6ira8lTLgtw1Q4Q>
 <xmx:yZJjZiMAa6JmRfCDlk40DENcxjfq2QWqgMOhm9vt6SAGB93OTI5CDg>
 <xmx:yZJjZm0SkDbKVFf4lO-P4PlZaRVf1YnKm71wkcov8_n6a0Q8JxPJrw>
 <xmx:yZJjZkgr1KaL4r5AKGa74HKh2IM9TTnz92Zhz21ucinYzC_CSOciOgDs>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 7 Jun 2024 19:07:52 -0400 (EDT)
Date: Sat, 8 Jun 2024 08:07:49 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/2] firewire: add helper functions for phy configuration
 packet
Message-ID: <20240607230749.GA245773@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240606235133.231543-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240606235133.231543-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 07, 2024 at 08:51:31AM +0900, Takashi Sakamoto
 wrote: > Hi, > > In recent months, the batch of helper functions was added
 to serialize > and deserialize content of packet in IEEE 1394 prot [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.147 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.147 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.147 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sFign-0006Xr-Bq
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

On Fri, Jun 07, 2024 at 08:51:31AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> In recent months, the batch of helper functions was added to serialize
> and deserialize content of packet in IEEE 1394 protocol. This series of
> changes includes some helper functions for phy configuration packet as
> well as some KUnit tests for them.
> 
> Takashi Sakamoto (2):
>   firewire: core: add tests for serialization/deserialization of phy
>     config packet
>   firewire: core: use inline helper functions to serialize phy config
>     packet
> 
>  drivers/firewire/core-transaction.c       | 22 +++----
>  drivers/firewire/packet-serdes-test.c     | 79 +++++++++++++++++++++++
>  drivers/firewire/phy-packet-definitions.h | 55 ++++++++++++++++
>  3 files changed, 144 insertions(+), 12 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
